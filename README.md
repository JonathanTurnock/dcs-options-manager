# dcs-options-manager
Easy CLI tool to flip between different `options.lua`s in DCS World

Useful for enabling and disabling VR easily among other things, i.e. a Screenshot config with maxed visuals.

## Usage
Inside the DCS config folder `%USERPROFILE%\Saved Games\DCS\Config` create a new subfolder, I use `.options`

Inside this folder add the exe, alternatively compile from src using nim.
```
nim c options_swap.nim
```
Populate this folder with various configs renaming them for identification

Start the exe and it will give you a selection menu where you can select which config to use.

![2](https://github.com/JonathanTurnock/dcs-options-manager/blob/master/2.png)

I add this to my steam library and run it before starting DCS.

![1](https://github.com/JonathanTurnock/dcs-options-manager/blob/master/1.png)
