# Name: MagnetResponse
# Website: https://magnetforensics.com
# Description: Tool to collect data relevant to incident response investigations
# Category: Windows Analysis
# Author: Magnet Forensics
# License: EULA
# Version: v150
# Notes:

{% set inpath = salt['pillar.get']('inpath', 'C:\standalone') %}
{% set hash = '1E85425B325AEB60DCF954A7F35A156E8F2FFF28907FDB36B456CF00381A21A1' %}
{% set version = 'V150' %}

magnet-response-download:
  file.managed:
    - name: 'C:\salt\tempdownload\MagnetRESPONSE{{ version }}.zip'
    - source: https://storage.googleapis.com/mfi-files/free_tools/MagnetRESPONSE/MagnetRESPONSE{{ version }}.zip
    - source_hash: sha256={{ hash }}
    - makedirs: True

magnet-response-extract:
  archive.extracted:
    - name: '{{ inpath }}\magnet\Response\'
    - source: 'C:\salt\tempdownload\MagnetRESPONSE{{ version }}.zip'
    - enforce_toplevel: False
    - require:
      - file: magnet-response-download
      
