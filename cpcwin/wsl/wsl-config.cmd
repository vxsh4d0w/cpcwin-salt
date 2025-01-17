@echo off
setlocal EnableDelayedExpansion
title CPC-WIN WSL Config
%1 %2 mshta vbscript:createobject("shell.application").shellexecute("%~s0","goto :runas","","runas",1)(window.close)&goto :eof
:runas
echo $saltArgs = "-l debug --local --retcode-passthrough --log-file=`"C:\cpcwin-wsl.log`" --log-file-level=debug --out-file=`"C:\cpcwin-wsl.log`" --out-file-append --state-output=mixed state.sls cpcwin.wsl.wsl-config pillar=`"{'cpcwin_user': '_this_user_', 'inpath': '_this_path_'}`""> C:\salt\tempdownload\wsl-after-reboot.ps1
echo $repoLogFile = ("C:\" + ((Get-Item C:\cpcwin-saltstack-*.log ^| sort) ^| Select -Last 1).Name) >> C:\salt\tempdownload\wsl-after-reboot.ps1
type "C:\ProgramData\Salt Project\Salt\srv\salt\cpcwin\wsl\wsl.ps1" >> C:\salt\tempdownload\wsl-after-reboot.ps1
powershell -f C:\salt\tempdownload\wsl-after-reboot.ps1
