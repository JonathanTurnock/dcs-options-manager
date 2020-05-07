# dcs-options-manager
Easy CLI tool to flip between different `options.lua`s in DCS World

Useful for enabling and disabling VR easily among other things, i.e. a Screenshot config with maxed visuals.

## Usage
Inside the DCS config folder `%USERPROFILE%\Saved Games\DCS\Config` create a new subfolder, I use `.options` but it can be called anything

Grab the latest exe or src zip from the release.   

https://github.com/JonathanTurnock/dcs-options-manager/releases

### Using exe
Inside the newly created folder in the DCS config folder folder add the exe


### Compiling
Install Nim https://nim-lang.org/install_windows.html

Unzip the contents of the src zip into the new folder in the DCS config folder and compile from source.

```
nim c options_swap.nim
```

### Populating
Populate this folder with various configs renaming them for identification

Start the exe and it will give you a selection menu where you can select which config to use.

![2](https://github.com/JonathanTurnock/dcs-options-manager/blob/master/2.png)

I add this to my steam library and run it before starting DCS.

![1](https://github.com/JonathanTurnock/dcs-options-manager/blob/master/1.png)
