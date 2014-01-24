mudlet-eotl
===========

My Mudlet scripts for EotL

## Setup

### Get the files

1. You'll need git installed on your mac. Here are some [instructions](https://help.github.com/articles/set-up-git).
2. Go to command line on your mac via the terminal.  Type: `cd ~/.config//mudlet/profiles/EotL/` _Replacing "EotL" with whatever profile you created for EotL in your mudlet client._
3. Clone this repository: `git clone git@github.com:borkweb/mudlet-eotl.git`

### Set up the Mudlet script

1. Open Mudlet and click the "Scripts" icon
2. Add a new script and give it a name.  I use "mudlet-eotl"
3. In the code section of that script, place the following:

```lua
-- Commands and helpers
dofile(getMudletHomeDir() .. "/mudlet-eotl/go.lua")

-- UI Stuff
dofile(getMudletHomeDir() .. "/mudlet-eotl/bootstrap.lua")
dofile(getMudletHomeDir() .. "/mudlet-eotl/ui.chatbox.lua")
dofile(getMudletHomeDir() .. "/mudlet-eotl/ui.statusbar.lua")
dofile(getMudletHomeDir() .. "/mudlet-eotl/ui.bars.lua")
dofile(getMudletHomeDir() .. "/mudlet-eotl/ui.roomlabel.lua")
```

## Disabling features

If you don't want certain UI components, you can remove them by commenting out the line for the element you do not wish to have.  E.g. if you don't want the bars (health/mana/etc) you would do:

```lua
-- dofile(getMudletHomeDir() .. "/scripts/ui.bars.lua")
```
