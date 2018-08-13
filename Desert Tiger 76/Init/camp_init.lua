--Initial status of the campaign (static file, not updated)
--Copied to camp_status.lua and for use in running campaign
-------------------------------------------------------------------------------------------------------

camp = {
	title = "Desert Tiger 76",	--Title of campaign (name of missions)
	path = "Mods/aircraft/F-5E/Missions/EN/Campaigns/Desert Tiger 76/",		--path of campaign folder
	mission = 1,					--campaig mission number
	date = {						--campaign date
        day = 6,
        year = 1976,
        month = 4,
    },
	time = 7200,					--daytime in seconds
	dawn = 18900,					--time of dawn in seconds
	dusk = 65700,					--time of dusk in seconds
	mission_duration = 10800,		--duration of a mission in seconds
	idle_time_min = 10800,			--minimum time between missions in seconds
	idle_time_max = 43200,			--maximum time between missions in seconds
	startup_time_ai = 180,			--time in seconds allocated for startup, taxi and take off for AI flights
	startup_time_player = 600,		--time in seconds allocated for startup, taxi and take off for player flight
	units = "imperial",				--unit output in briefing (imperial or metric)
	freq_min = 225,					--minimum player radio frequency in mHz
	freq_max = 399,					--maximum player radio frequency in mHz
	weather = {						--campaign weather
		pHigh = 100,				--probability of high pressure weather system
		pLow = 0,					--probability of low pressure weather system
		refTemp = 38,				--average day max temperature
	},
	variation = 14,					--variation in degrees from true north to magneitic north
	hotstart = false,				--player flights starts with engines running
	debug = false,					--debug mode
}