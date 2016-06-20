# level-design
These are the assets and vmf files related to the tutorial/campaign in Momentum Mod. If you are a source engine level designer, texture artist, or modeller who wants to get involved, contact us via our website: http://momentum-mod.org/contact

Mapping Standards
=================
This is here to guide people intending to make maps for momentum mod as well as people working on the campaign mode. 
In this guide
	* Spawn
	* Triggers
	* Bhop Standards
		* stuff
	* Surf Standards
		* Ramp Sizes
	* Common Things

v0.01 - 06/19/16

---

Spawn
-----

All that is needed for the spawn is the info_player_start entity. The mod itself will handle fall damage and movement settings (for surf and bhop).

Triggers
--------

To start the time in game, use the trigger_momentum_timer_start brush entity at the start of the map. Use trigger_momentum_timer_stage for every stage after the first. 

