include:
  - cpcwin.packages.7zip
  - cpcwin.packages.git
  - cpcwin.packages.dotnetfx35
  - cpcwin.packages.ms-vcpp-2015-build-tools
  - cpcwin.packages.dotnet6-desktop-runtime
  - cpcwin.packages.autopsy
  - cpcwin.packages.firefox
  - cpcwin.packages.chrome
  - cpcwin.packages.ftk-imager
  - cpcwin.packages.httplogbrowser
  - cpcwin.packages.db-browser-sqlite
  - cpcwin.packages.bulk-extractor
  - cpcwin.packages.npp
  - cpcwin.packages.adobereader
  - cpcwin.packages.python3
  - cpcwin.packages.python2
  - cpcwin.packages.sublime-text
  - cpcwin.packages.passware-encryption-analyzer
  - cpcwin.packages.logparser
  - cpcwin.packages.active-disk-editor
  - cpcwin.packages.kernel-pst-viewer  
  - cpcwin.packages.kernel-ost-viewer
  - cpcwin.packages.kernel-edb-viewer
  - cpcwin.packages.strawberryperl
  - cpcwin.packages.cerbero-suite
  - cpcwin.packages.free-hex-editor-neo
  - cpcwin.packages.magnet-acquire
  - cpcwin.packages.openhashtab
  - cpcwin.packages.irfanview
  - cpcwin.packages.dbeaver
  - cpcwin.packages.vlc
  - cpcwin.packages.klite-codec-mega
  - cpcwin.packages.elcomsoft-efdd
  - cpcwin.packages.tableau-imager
  - cpcwin.packages.wiebetech-writeblocking-validation-utility
  - cpcwin.packages.veracrypt
  - cpcwin.packages.bulkrenameutility
  - cpcwin.packages.tableau-firmware-update
  - cpcwin.packages.google-earth-pro
  - cpcwin.packages.itunes
  - cpcwin.packages.virtualbox
  - cpcwin.packages.hashcheck
  - cpcwin.packages.ms-powertoys
  - cpcwin.packages.vscode
  - cpcwin.packages.sqlitestudio
  - cpcwin.packages.monolith-notes
  - cpcwin.packages.nuix-evidence-mover

cpcwin-packages:
  test.nop:
    - require:
      - sls: cpcwin.packages.7zip
      - sls: cpcwin.packages.git
      - sls: cpcwin.packages.dotnetfx35
      - sls: cpcwin.packages.ms-vcpp-2015-build-tools
      - sls: cpcwin.packages.dotnet6-desktop-runtime
      - sls: cpcwin.packages.autopsy
      - sls: cpcwin.packages.firefox
      - sls: cpcwin.packages.chrome
      - sls: cpcwin.packages.ftk-imager
      - sls: cpcwin.packages.httplogbrowser
      - sls: cpcwin.packages.db-browser-sqlite
      - sls: cpcwin.packages.bulk-extractor
      - sls: cpcwin.packages.npp
      - sls: cpcwin.packages.adobereader
      - sls: cpcwin.packages.python3
      - sls: cpcwin.packages.python2
      - sls: cpcwin.packages.sublime-text
      - sls: cpcwin.packages.passware-encryption-analyzer
      - sls: cpcwin.packages.logparser
      - sls: cpcwin.packages.active-disk-editor
      - sls: cpcwin.packages.kernel-pst-viewer
      - sls: cpcwin.packages.kernel-ost-viewer
      - sls: cpcwin.packages.kernel-edb-viewer
      - sls: cpcwin.packages.strawberryperl
      - sls: cpcwin.packages.cerbero-suite
      - sls: cpcwin.packages.free-hex-editor-neo
      - sls: cpcwin.packages.magnet-acquire
      - sls: cpcwin.packages.openhashtab
      - sls: cpcwin.packages.irfanview
      - sls: cpcwin.packages.dbeaver
      - sls: cpcwin.packages.vlc
      - sls: cpcwin.packages.klite-codec-mega
      - sls: cpcwin.packages.elcomsoft-efdd
      - sls: cpcwin.packages.tableau-imager
      - sls: cpcwin.packages.wiebetech-writeblocking-validation-utility
      - sls: cpcwin.packages.veracrypt
      - sls: cpcwin.packages.bulkrenameutility
      - sls: cpcwin.packages.tableau-firmware-update
      - sls: cpcwin.packages.google-earth-pro
      - sls: cpcwin.packages.itunes
      - sls: cpcwin.packages.virtualbox
      - sls: cpcwin.packages.hashcheck
      - sls: cpcwin.packages.ms-powertoys
      - sls: cpcwin.packages.vscode
      - sls: cpcwin.packages.sqlitestudio
      - sls: cpcwin.packages.monolith-notes
      - sls: cpcwin.packages.nuix-evidence-mover
