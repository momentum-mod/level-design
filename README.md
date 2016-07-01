# level-design
These are the assets and vmf files related to the tutorial/campaign in Momentum Mod. If you are a source engine level designer, texture artist, or modeler who wants to get involved, contact us via our website: http://momentum-mod.org/contact

Mapping Standards
=================
This is here to guide people intending to make maps for momentum mod as well as people working on the campaign mode. 
In this guide

 * Setting up hammer
 * Spawn
 * Triggers
 * Bhop Standards
 * stuff
 * Surf Standards
 * Ramp Sizes
 * Common Things

v0.01 - 06/19/16

---

Setting up hammer
-----------------
Install Source sdk base 2013 multiplayer and momentum mod first.

Go to Source SDK base 2013 multiplayer/bin and open hammer.exe. It should pop up a dialog to pick between different mods. Pick any of the options to get into hammer. Go to tools->options, you should be on the Game Configurations dialog. Hit "Edit" next to the configuration dropdown. Click "Add" and enter "Momentum" in the input box. Select Momentum from the drop-down box. Next, click "Add" next to the "Game Data Files" text box and navigate to the Momentum-mod fgd and hit open. For "Game Executable Directory" click browse and navigate to Source sdk base 2013 multiplayer directory and click open. For the "Game Directory" browse to the momentum mod folder inside steamapps/sourcemods.
for "Hammer VMF Directory", you can choose any folder you want, this will be the place you save the hammer map files to. If you want to use the git to keep track of your files, choose .../level-design/map-src folder where ever it may be. You may also want to consider changing the default point and solid entity types in the middle of this dialog. Also to be consistent, set your default lightmap scale to 128.

To start hammer use the hammer.exe from source sdk base 2013 multiplayer/bin folder as steampipe broke the sdk launcher a long time ago.


Spawn
-----

All that is needed for the spawn is the info_player_start entity. The mod itself will handle fall damage and movement settings (for surf and bhop).

Triggers
--------

To start the time in game, use the trigger_momentum_timer_start brush entity at the start of the map. Use trigger_momentum_timer_stage for every stage after the first. Use trigger_momentum_teleport_checkpoint for the death triggers, this will reset the player at the last stage they entered. You can either specify what info_teleport_destination to use or use none and the player will be teleported to the center marker of the stage trigger. There is an option to reset the players speed on teleport, so no clips are necessary.

