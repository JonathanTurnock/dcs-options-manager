# dcs-options-manager
Easy CLI tool to flip between different options.luas in DCS World

Useful for enabling and disabling VR easily.

## Usage
Inside the DCS config folder `%USERPROFILE%\Saved Games\DCS\Config` create a new subfolder, I use `.options`

Inside this folder add the exe, alternatively compile from src using nim.
```
nim c options_swap.nim
```
Populate this folder with various configs renaming them for identification

Start the exe and it will give you a selection menu where you can select which config to use.



I add this to my steam library and run it before starting DCS.