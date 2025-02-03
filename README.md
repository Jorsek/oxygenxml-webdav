# oxygenxml-webdav

A plugin for oXygen XML Editor and script Windows to register oXygen as a protocol handler(`edit-in-oxygen:https://url`).  On MacOS, this plugin is not necessary!

## Installation

1. Download the [latest release](https://github.com/Jorsek/oxygenxml-webdav/releases).
2. Unzip the release and copy the resulting `webdav` directory into oXygen's `plugins` folder.
3. Run installation script
    - On Windows, open a command prompt using "Run as administrator"
    - Go to folder with registration script `cd C:\Program Files\<Oxygen install dir>\plugins\webdav/bin`
    - Run registration script `register_edit_in_oxygen.bat author 27.0`
      - First parameter of author/editor depending on your oXygen XML app type of Oxygen XML Editor or Oxygen XML Author
      - Second parameter is version #, this should be in format of major.minor.  Use zero for minor if there is no minor, ex: 27.0
4. Try entering a edit-in-oxygen link in your browser. It should open in oXygen.
