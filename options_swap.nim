import simple_parseopt
import strformat
import os
import strutils

simple_parseopt.config: dash_dash_parameters
simple_parseopt.help_text(fmt"""

  _____   _____  _____    _____             __ _          _____                    
 |  __ \ / ____|/ ____|  / ____|           / _(_)        / ____|                   
 | |  | | |    | (___   | |     ___  _ __ | |_ _  __ _  | (_____      ____ _ _ __  
 | |  | | |     \___ \  | |    / _ \| '_ \|  _| |/ _` |  \___ \ \ /\ / / _` | '_ \ 
 | |__| | |____ ____) | | |___| (_) | | | | | | | (_| |  ____) \ V  V / (_| | |_) |
 |_____/ \_____|_____/   \_____\___/|_| |_|_| |_|\__, | |_____/ \_/\_/ \__,_| .__/ 
                                                  __/ |                     | |    
                                                 |___/                      |_|    

App to swap DCS config files

Example usage would be 

`options_swap -q -c _vr_options.lua` to copy the _vr_options.lua file to ../options.lua
`options_swap -q -c _options.lua` to copy the _options.lua file to ../options.lua

Also runs in interactive mode and provides a selection list to choose which config to load
""")

var cfg_path: string

let options = get_options:
    config: string {. aka("c") info("Which config file to load, i.e. vr to load _vr_options.lua") .}
    quiet: bool {.aka("q") info("Run without interaction") .}

if options.quiet:
  cfg_path = options.config

while cfg_path == "":
  
  var files = newSeq[string]()
  var accepted = newSeq[int]()
  for file in walkFiles("*options.lua"):
    files.add(file)
  
  echo "Please select which config to use"
  for i, f in files:
    accepted.add(i+1)
    echo fmt"  {i+1}. {f}"

  let selection = stdin.readline.parseInt

  if not selection in accepted:
    echo"Invalid Input..."
  else:
    cfg_path = files[selection - 1]

echo fmt"Copying config file {cfg_path} to ../options.lua"

os.copyFile(cfg_path, "../options.lua")

echo "Press enter to exit..."
let c = readLine(stdin)
