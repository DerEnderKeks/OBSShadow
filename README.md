# OBSShadow

This repository contains profile and scene files to mimic Shadowplay's background recording in OBS. This is way more reliable than Shadownplay and doesn't randomly stop working.

## Usage

Copy the `profiles` and `scenes` folder to `%appdata%\obs-studio\basic` **or** just execute `install.cmd`. The script will copy the files for you and enables autostarting. 

In OBS you have to set the correct resolutions (in `Settings > Video`) and the path for recordings (in `Settings > Output > Recording`). You may also have to adjust the scenes as the input sources may have to be recentered. The length of the replay buffer can be changed in `Settings > Output > Replay Buffer`.

To save the replay buffer press `Alt + F10`. You can change this key in `Settings > Hotkeys > Replay Buffer`.

### Autostart

> Autostarting is automatically enabled when you use the `install.cmd` script.

To enable autostarting execute the `enableAutostart.reg` file. This will make OBS autostart and automatically start the replay buffer with the correct profile and scene.

You can disable autostarting with the `disableAutostart.reg` file.