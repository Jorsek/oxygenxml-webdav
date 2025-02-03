# oxygenxml-webdav

A plugin for oXygen XML Editor and script Windows to register oXygen as a protocol handler(`edit-in-oxygen:https://url`).  On MacOS, this plugin is not necessary!

## Installation

1. Download the [latest release](https://github.com/Jorsek/oxygenxml-webdav/releases).
2. Unzip the release and copy the resulting `webdav` directory into oXygen's `plugins` folder.
3. Run installation script
    - On Windows, open a command prompt using "Run as administrator", run `cd /Program Files/<Oxygen install dir>//plugins/webdav/bin` and then `register_edit_in_oxygen.bat author 27.0`.  Use parameter author/editor depending on your oXygen XML app type, and use the correct version #, in this case, 27.0.  Always include the minor version, in this example, zero.
4. Try entering a edit-in-oxygen link in your browser. It should open in oXygen.
