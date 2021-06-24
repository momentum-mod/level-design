> # **Warning!**
> 
> This repository has not been actively maintained! In the past 5 years 
> Momentum Mod has changed dramatically and the information here does not
> yet reflect the current state of the game. While we do plan to eventually overhaul
> this document to more openly reflect our current mapping standards for *all* gamemodes, that has not yet been done!
> Follow the advice below at your own risk.

# Level Design
These are the assets and `.vmf` files related to the Tutorial/Campaign in ***Momentum Mod.***

If you are a Source Engine Level Designer, Texture Artist, or Modeler who wants to get involved, contact us via our website: [Contact](http://momentum-mod.org/contact)  

The most active place at the moment is the [Momentum Mod Discord](https://discord.gg/wQWkRb6).

---

## Mapping Standards
This guide exists for those intending to make maps for Momentum Mod, as well as people working on the Campaign Mode.  
_In this guide:_

 * Setting up Hammer
 * Spawn
 * Triggers
 * Surf Standards
 	* Ramp Sizes
 * Style Standards
 	* `.rad` files

v0.02 - 01/14/19

---

## Setting up Hammer
Install Source SDK Base 2013 Multiplayer and Momentum Mod first. **Singleplayer does not work, you must install Multiplayer.**  
**Source SDK Base 2013 Multiplayer** ***MUST*** **be installed to the `C:/` Drive, it unfortunately won't work elsewhere!**

* Once installed, navigate to `Source SDK Base 2013 Multiplayer/bin` and open `Hammer.bat`.

* A dialog should appear asking you to pick which Game Configuration to use. Pick any of these to continue.

* In the Menu Bar, click _Tools->Options_, you should be on the _Game Configurations_ dialog.
  * Click _"Edit"_ next to the _Configuration_ drop-down.
  * Click _"Add"_ and enter "Momentum" in the input box.
  
* Select the new _Momentum_ entry from the drop-down box.

* Next, click _"Add"_ next to the _"Game Data Files"_ text box and navigate to the `momentum.fgd` and click _Open_.
  * For _"Game Executable Directory"_ click _Browse_ and navigate to `Source SDK Base 2013 Multiplayer` and click _Open_.
  * For the _"Game Directory"_ browse to the Momentum Mod folder inside `steamapps/sourcemods`.
  * For _"Hammer VMF Directory"_, you can choose any folder you want, this will be the place you save the Hammer map files to.
    * If you want to use the Git to keep track of your files, choose `.../level-design/map-src` folder wherever it may be. 

You may also want to consider changing the _"Default PointEntity class"_ and _"Default SolidEntity class"_ options in the middle of this dialog.
Also to be consistent, set your default Lightmap scale to *128* instead of 16. This option is found in the _Game Configuration_ tab.
___It is strongly recommended to do so as VRAD will take much longer otherwise.___

To start Hammer use the `Hammer.bat` from `Source SDK Base 2013 Multiplayer/bin` folder as SteamPipe broke the SDK Launcher a long time ago.

## Spawn
All that is needed for the spawn is the `info_player_start` entity. The Mod itself will handle fall damage and movement settings (for Surf and Bhop respectively). No other configuration is required to begin playing as long as your map has the correct prefix.

Valid Map Prefixes include:
* `surf_`
* `bhop_`

## Triggers
* To start the timer in game, use the `trigger_momentum_timer_start` Brush Entity at the start of the map.
  * Use `trigger_momentum_timer_stage` for every stage after the first.
  
* Use `trigger_momentum_teleport_checkpoint` for the "death" triggers, this will reset the player at the last stage they entered.
* You can either specify what `info_teleport_destination` to use or use none and the player will be teleported to the center marker of the stage trigger.
  * There is an option to reset the player's speed on teleport, so no clips are necessary.

## Surf Standards

#### Ramp Standards

Ramps will be at a _5/4_ rise over run slope meaning if your ramp is _640 units_ tall, then it will be _512 units_ wide.
The ramps should contain a base of _64 units_ so the overall height will be _704 units_ using the previous example.  

[Here](https://docs.google.com/spreadsheets/d/1-K8c2F3EVhTpeyzDAoIfdjmWr1s6H8bEtUQy5cfKEJg/edit#gid=0) is a spreadsheet that gives you the height and width of ramps that follow this standard.  
Using a step angle of _2.5_ or _5 degrees_ is preferable when making curved ramps, but not necessary.

## Style Standards

#### `.rad` Files

`.rad` files are used to create lights just above specific textures.  

In the file is a list of texture path names followed by a light value on the same line `(R G B Intensity)`.  
You can insert these values into the `lights.rad` found in the Momentum Mod folder, _or_ use a `custom.rad` file that will house all the custom values instead.  
The second option is preferable as it is easier to keep track of the custom light textures and it also doesn't overwrite a default file.
The downside to this is that you will have to use a custom build profile. 

To do this:
* Click the _"Expert"_ button on the _"Run Map"_ Menu and add `-lights custom.rad` to the `$light_exe` line. It should be added before the `$gamedir $path\$file` section. 
  * The `custom.rad` file will have to be in the base folder to work.
  * Alternatively you can use the relative path of the `custom.rad` file.
