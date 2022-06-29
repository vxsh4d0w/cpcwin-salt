# Name: 
# Website: 
# Description: 
# Category: 
# Author: 
# License: 
# Notes: 

{% set user = salt['pillar.get']('cpcwin_user', 'forensics') %}

include:
  - cpcwin.config.user

wsl-install:
  dism.feature_installed:
    - name: Microsoft-Windows-Subsystem-Linux
    - restart: False
    - enable_parent: True

vmp-install:
  dism.feature_installed:
    - name: VirtualMachinePlatform
    - restart: False
    - enable_parent: True

wsl-config-stager:
  file.managed:
    - name: 'C:\salt\tempdownload\wsl-config.cmd'
    - source: salt://cpcwin/wsl/wsl-config.cmd
    - win_inheritance: True
    - makedirs: True

wsl-config-stager-customize:
  file.replace:
    - name: 'C:\salt\tempdownload\wsl-config.cmd'
    - pattern: _this_user_
    - repl: {{ user }}
    - count: 1
    - require:
      - file: wsl-config-stager
      - user: cpcwin-user-{{ user }}

wsl-config-run-on-reboot:
  reg.present:
    - name: HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\RunOnce
    - vname: "CPC-WIN WSL Config"
    - vtype: REG_SZ
    - vdata: 'C:\Windows\system32\cmd.exe /q /c C:\salt\tempdownload\wsl-config.cmd'
    - require:
      - dism: wsl-install
      - dism: vmp-install
      - file: wsl-config-stager
      - file: wsl-config-stager-customize

wsl-log-append:
  file.append:
    - name: 'C:\cpcwin-wsl.log'
    - text: 'GOING FOR REBOOT'

system-restart:
  system.reboot:
    - timeout: 0
    - in_seconds: True
    - only_on_pending_reboot: False
    - require:
      - dism: wsl-install
      - dism: vmp-install
      - file: wsl-config-stager
      - file: wsl-config-stager-customize
      - reg: wsl-config-run-on-reboot
