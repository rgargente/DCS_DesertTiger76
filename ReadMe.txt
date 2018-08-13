Desert Tiger 76 – v1.05 21.20.2017
by Marc "MBot" Marbot

Installation:
-------------
1. Extract the folder in the zip file to: "DCS World 2 OpenAlpha\Mods\aircraft\F-5E\Missions". Ensure that the resulting folder structure is “...\F-5E\Missions\EN\Campaigns\Desert Tiger 76\...”.

2. Open the file "DCS World 2 OpenAlpha\Scripts\MissionScripting.lua". Add two minus signs in front of line 16 "sanitizeModule('os')" and line 17 "sanitizeModule('io')". The code block from line 16 to line 20 should then look like this:

--sanitizeModule('os')
--sanitizeModule('io')
sanitizeModule('lfs')
require = nil
loadlib = nil

This modification has to be repeated after each update of DCS World 2 OpenAlpha, as each update reverts the file back to its original state.

WARNING: This modification will allow the execution of LUA code included in any downloaded custom mission that is potentially harmful to your system. Modification at your own risk.


How to play:
------------
1. To start a new campaign, select CAMPAIGN from the DCS main menu. Select the campaign under the module “F-5E” and press OK.

2. To restart a new campaign, likewise select RESTART.

3. After completing a mission, a txt file will open automatically in Windows Notepad, providing a debriefing. If you are done reading, close the text window manually.

4. Simultaneously a command window will open, asking you whether you would like to accept the current mission results. If you are happy with the mission results, press “y” and ENTER. The next campaign mission will then be generated. If you are unhappy with the mission results, press “n” and ENTER. No new mission will be generated and you may fly the current mission again.


Special Functions:
------------------
This campaign is fully playable from within the DCS GUI with no further user action required. It however offers two additional functions through BAT files located in the folder “DCS World 2 OpenAlpha\Mods\aircraft\F-5E\Missions\EN\Campaigns\Desert Tiger 76”.

1. FirstMission.bat: In order to integrate this dynamic campaign with the DCS GUI, the first campaign mission has to be static. This means that each time you start a new campaign, the first mission will always be the same. If you would like to change the first mission to something new, use this BAT file to generate a different one. This BAT file will also reset any campaign progress you may have back to zero.

2. SkipMission.bat: If you are unhappy with the current (not first) campaign mission, use this BAT file to skip it and generate a new one.


COOP Multiplayer:
-----------------
1. This campaign is playable in multiplayer for up to 4 players.

2. To start a new coop campaign, execute “FirstMission.bat” under “DCS World 2 OpenAlpha\Mods\aircraft\F-5E\Missions\EN\Campaigns\Desert Tiger 76”, enter the amount of players and press ENTER.

3. Host the mission “Desert Tiger 76_first.miz” (if it is the first mission of the campaign) or “Desert Tiger 76_ongoing.miz” found in the folder "DCS World 2 OpenAlpha\Mods\aircraft\F-5E\Missions\EN\Campaigns" like any other multiplayer mission.

4. In order to end a mission, review the debriefing and automatically generate the next campaign mission, close your server. Hosts are advised to end missions after completing the assigned sortie. The campaign is not designed for rearming your aircraft and returning to the combat zone, as enemy activity is only set up for the planned duration of one sortie and a little extra. Closing the server and hosting the next generated mission will provide you with a fully set up new mission with all stats carried over.

5. If you would like to play a mission of your current singeplayer campaign in coop, open the mission “Desert Tiger 76_ongoing.miz”in the Mission Editor and manually change the skill of the aircraft in your flight to “client”. Then host the mission in multiplayer. Subsequent missions will again be for one player only.

6. If you would like to change the number of  players for all missions following you current mission, open the file “camp_status.lua” in the folder “DCS World 2 OpenAlpha\Mods\aircraft\F-5E\Missions\EN\Campaigns\Desert Tiger 76\Status”. Search the variable “coop” and change it to the required number of players (1 to 4). This will affect all subsequently generated missions but not your current mission (see 5. for this).

7. Playing in coop might cause problems with automatic mission generation, as sufficient campaign assets to satisfy a 4 player requirement may not always be available. 2 player coop will generally be less problematic.


FAQ:
----
Q: Why are my FPS so low?
A: Due to its very nature, this dynamic campaign includes many aircraft and ground units. Lower graphics settings than usual might be required to play it smoothly. With reduced graphics settings, missions should be easily playable on medium systems.

Q: Why do missions take so long to generate?
A: This is due to a large amount of calculations to find the optimal route for every possible sortie, even if only a few of these sorties will ultimately be part of the missions. Sorties are selected based among other factors on their danger level, for whose evaluation the optimal route must be known. Expect to wait half a minute for a new mission to be generated.

Q: Why can't I equip the all-aspect AIM-9P-5 on my aircraft?
A: As the campaign takes place in 1976, the AIM-9P-5 is not yet available. You will have to use the period AIM-9P-3.

Q: Why are there no loadouts with cluster bombs?
A: The AI has issues with employing cluster bombs. If you would like to use them on your aircraft, reload them after spawning on the airbase.

Q: Why do AGM-45 Shrike ARM sometimes disappear mid-air?
A: In 9 out of 10 ARM missile shots, a script will force the targeted ground unit to shut down its radar for several minutes, to avoid the incoming missile. In such cases the ARM is removed from the game to prevent it from striking the silenced radar none the less.

Q: Why sometimes there is no AWACS?
A: As the AWACS squadron assigned to this campaign has only two aircraft, it is unable to provide sustained 24/7 coverage.