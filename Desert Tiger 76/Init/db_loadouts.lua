--Loadouts database
-------------------------------------------------------------------------------------------------------

--[[ Loadout Entry Example ----------------------------------------------------------------------------

["MiG-21Bis"] = {														--String, aircraft type
	["Strike"] = {														--String, task
		["Custom Loadout Name"] = {										--String, custom loadout name
			support = {													--Table, list of tasks that can support this loadout (nil = is never added, true = is added when available)
				["Escort"] = true,										--Fighter escort
				["SEAD"] = true,										--SEAD	escort
				["Escort Jammer"] = true,								--Jammer escort
				["Flare Illumination"] = true,							--Target area flare illumination (mandatory support for loadout to be eligible)
				["Laser Illumination"] = true,							--Target laser illumination (mandatory support for loadout to be eligible)
			},
			attributes = {												--Array, custom loadout attributes. Only used by A-G tasks. Any target attribute must be matched in this array for the loadout to be eligible for the target.
				[1] = "Anti-tank",										--String, custom attribute to be matched for target attribute
				[2] = "Stand-off Missile",								--String, custom attribute to be matched for target attribute
			},
			weaponType = "Bombs",										--String, type of ordinance of loadout. Only used by A-G taks. Options: "Cannon", "Rockets", "Bombs", "Guided bombs", "ASM". A-G weapon types cannot be mixed.
			expend = "All",												--String, quantity of wapons expended per attack. Only used by A-G tasks. Options: "Auto", "All", "Half", "Two".
			day = true,													--Boolean, loadout is day capable
			night = true,												--Boolean, loadout is night capable
			adverseWeather = true,										--Boolean, loadout is adverse weather capable
			range = 900000,												--Number, range radius in meters
			capability = 10,											--Number, how good is the aircraft with this loadout. The higher the better
			firepower = 10,												--Number, how much firepower has this loadout. The higher the better
			vCruise = 225,												--Number, cruise speed in m/s
			vAttack = 280,												--Number, attack speed in m/s
			hCruise = 6000,												--Number, cruise altitude in m
			hAttack = 100,												--Number, attack altitude in m
			standoff = 5000,											--Number, attack distance from target in m. Determines attack waypoint distance for A-G with missiles (for Bombss use nil) and engage distance for A-A tasks
			tStation = 1200,											--Number, seconds the aircraft can remain on station. Only used by CAP, AWACS and Refuelling tasks
			LDSD = true,												--Boolean, aircraft is Look-Down/Shoot-Down capable. Only used by CAP and Intercept tasks
			self_escort = false,										--Boolean, aircraft can defend itself against fighters. Only used by A-G tasks
			sortie_rate = 2,											--Number, average amount of sorties that aircraft flies per day
			stores = {													--Table, loadout table for DCS
				["pylons"] = 
				{
					[1] = 
					{
						["CLSID"] = "{R-60M 2L}",
					},
					[2] = 
					{
						["CLSID"] = "{R-3R}",
					},
					[3] = 
					{
						["CLSID"] = "{PTB_800_MIG21}",
					},
					[4] = 
					{
						["CLSID"] = "{R-3R}",
					},
					[5] = 
					{
						["CLSID"] = "{R-60M 2R}",
					},
					[6] = 
					{
						["CLSID"] = "{ASO-2}",
					},
				},
				["fuel"] = 2280,
				["flare"] = 32,
				["ammo_type"] = 1,
				["chaff"] = 32,
				["gun"] = 100,
			},
		},
	},
},

]]-----------------------------------------------------------------------------------------------------


db_loadouts = {
	["F-5E-3"] = {
		["Intercept"] = {
			["Day, AIM-9P*2"] = {
				attributes = {},
				weaponType = nil,
				expend = nil,
				day = true,
				night = false,
				adverseWeather = false,
				range = 200000,
				capability = 5,
				firepower = 10,
				vCruise = nil,
				vAttack = nil,
				hCruise = nil,
				hAttack = nil,
				standoff = nil,
				tStation = nil,
				LDSD = false,
				self_escort = false,
				sortie_rate = 2,
				stores = {
					["pylons"] = 
					{
						[1] = 
						{
							["CLSID"] = "{9BFD8C90-F7AE-4e90-833B-BFD0CED0E536}",
						}, -- end of [1]
						[7] = 
						{
							["CLSID"] = "{9BFD8C90-F7AE-4e90-833B-BFD0CED0E536}",
						}, -- end of [7]
					},
					["fuel"] = 2046,
					["flare"] = 15,
					["ammo_type"] = 1,
					["chaff"] = 30,
					["gun"] = 100,
				},
			},
		},
		["CAP"] = {
			["Day, AIM-9P*2, Fuel_275*3"] = {
				attributes = {},
				weaponType = nil,
				expend = nil,
				day = true,
				night = false,
				adverseWeather = false,
				range = 270000,
				capability = 5,
				firepower = 10,
				vCruise = 215.83333333333,
				vAttack = 246.66666666667,
				hCruise = 6096,
				hAttack = 6096,
				standoff = 36000,
				tStation = 1800,
				LDSD = false,
				self_escort = false,
				sortie_rate = 2,
				stores = {
					["pylons"] = 
					{
						[1] = 
						{
							["CLSID"] = "{9BFD8C90-F7AE-4e90-833B-BFD0CED0E536}",
						}, -- end of [1]
						[7] = 
						{
							["CLSID"] = "{9BFD8C90-F7AE-4e90-833B-BFD0CED0E536}",
						}, -- end of [7]
						[4] = 
						{
							["CLSID"] = "{0395076D-2F77-4420-9D33-087A4398130B}",
						}, -- end of [4]
					},
					["fuel"] = 2046,
					["flare"] = 15,
					["ammo_type"] = 1,
					["chaff"] = 30,
					["gun"] = 100,
				},
			},
		},
		["Escort"] = {
			["AIM-9P*2, Fuel_275*1"] = {
				attributes = {},
				weaponType = nil,
				expend = nil,
				day = true,
				night = false,
				adverseWeather = false,
				range = 360000,
				capability = 5,
				firepower = 10,
				vCruise = 270,
				vAttack = 270,
				hCruise = 6096,
				hAttack = 6096,
				standoff = 28000,
				tStation = nil,
				LDSD = false,
				self_escort = false,
				sortie_rate = 2,
				stores = {
					["pylons"] = 
					{
						[1] = 
						{
							["CLSID"] = "{9BFD8C90-F7AE-4e90-833B-BFD0CED0E536}",
						}, -- end of [1]
						[7] = 
						{
							["CLSID"] = "{9BFD8C90-F7AE-4e90-833B-BFD0CED0E536}",
						}, -- end of [7]
						[4] = 
						{
							["CLSID"] = "{0395076D-2F77-4420-9D33-087A4398130B}",
						}, -- end of [4]
					},
					["fuel"] = 2046,
					["flare"] = 15,
					["ammo_type"] = 1,
					["chaff"] = 30,
					["gun"] = 100,
				},
			},
		},
		["Fighter Sweep"] = {
			["AIM-9P*2, Fuel_275*1"] = {
				attributes = {},
				weaponType = nil,
				expend = nil,
				day = true,
				night = false,
				adverseWeather = false,
				range = 360000,
				capability = 5,
				firepower = 10,
				vCruise = 215.83333333333,
				vAttack = 215.83333333333,
				hCruise = 7011,
				hAttack = 7011,
				standoff = 27000,
				tStation = nil,
				LDSD = false,
				self_escort = false,
				sortie_rate = 1,
				stores = {
					["pylons"] = 
					{
						[1] = 
						{
							["CLSID"] = "{9BFD8C90-F7AE-4e90-833B-BFD0CED0E536}",
						}, -- end of [1]
						[7] = 
						{
							["CLSID"] = "{9BFD8C90-F7AE-4e90-833B-BFD0CED0E536}",
						}, -- end of [7]
						[4] = 
						{
							["CLSID"] = "{0395076D-2F77-4420-9D33-087A4398130B}",
						}, -- end of [4]
					},
					["fuel"] = 2046,
					["flare"] = 15,
					["ammo_type"] = 1,
					["chaff"] = 30,
					["gun"] = 100,
				},
			},
		},
		["Strike"] = {
			["MR, Mk-82*4, AIM-9P*2, Fuel_275*1"] = {
				support = {
					["Escort"] = true,
					["SEAD"] = true,
				},
				attributes = {"soft", "hard", "armor", "SA-6"},
				weaponType = "Bombs",
				expend = "All",
				day = true,
				night = false,
				adverseWeather = false,
				range = 360000,
				capability = 5,
				firepower = 10,
				vCruise = 215.83333333333,
				vAttack = 277.5,
				hCruise = 5486.4,
				hAttack = 4572,
				standoff = nil,
				tStation = nil,
				LDSD = false,
				self_escort = false,
				sortie_rate = 2,
				stores = {
					["pylons"] = 
					{
						[1] = 
						{
							["CLSID"] = "{9BFD8C90-F7AE-4e90-833B-BFD0CED0E536}",
						}, -- end of [1]
						[2] = 
						{
							["CLSID"] = "{BCE4E030-38E9-423E-98ED-24BE3DA87C32}",
						}, -- end of [2]
						[3] = 
						{
							["CLSID"] = "{BCE4E030-38E9-423E-98ED-24BE3DA87C32}",
						}, -- end of [3]
						[4] = 
						{
							["CLSID"] = "{0395076D-2F77-4420-9D33-087A4398130B}",
						}, -- end of [4]
						[5] = 
						{
							["CLSID"] = "{BCE4E030-38E9-423E-98ED-24BE3DA87C32}",
						}, -- end of [5]
						[6] = 
						{
							["CLSID"] = "{BCE4E030-38E9-423E-98ED-24BE3DA87C32}",
						}, -- end of [6]
						[7] = 
						{
							["CLSID"] = "{9BFD8C90-F7AE-4e90-833B-BFD0CED0E536}",
						}, -- end of [7]
					}, -- end of ["pylons"]
					["fuel"] = 2046,
					["flare"] = 15,
					["ammo_type"] = 1,
					["chaff"] = 30,
					["gun"] = 100,
				},
			},
			["SR, Mk-82*5, AIM-9P*2"] = {
				support = {
					["Escort"] = true,
					["SEAD"] = true,
				},
				attributes = {"soft", "hard", "armor", "SA-6", "SR"},
				weaponType = "Bombs",
				expend = "All",
				day = true,
				night = false,
				adverseWeather = false,
				range = 130000,
				capability = 5,
				firepower = 10,
				vCruise = 215.83333333333,
				vAttack = 277.5,
				hCruise = 4876.8,
				hAttack = 4572,
				standoff = nil,
				tStation = nil,
				LDSD = false,
				self_escort = false,
				sortie_rate = 2,
				stores = {
					["pylons"] = 
					{
						[1] = 
						{
							["CLSID"] = "{9BFD8C90-F7AE-4e90-833B-BFD0CED0E536}",
						}, -- end of [1]
						[7] = 
						{
							["CLSID"] = "{9BFD8C90-F7AE-4e90-833B-BFD0CED0E536}",
						}, -- end of [7]
						[4] = 
						{
							["CLSID"] = "{MER-5E_MK82x5}",
						}, -- end of [4]
					}, -- end of ["pylons"]
					["fuel"] = 2046,
					["flare"] = 15,
					["ammo_type"] = 1,
					["chaff"] = 30,
					["gun"] = 100,
				},
			},
			["OCA, Mk-83*2, AIM-9P*2"] = {
				support = {
					["Escort"] = true,
					["SEAD"] = true,
				},
				attributes = {"OCA"},
				weaponType = "Bombs",
				expend = "All",
				day = true,
				night = false,
				adverseWeather = false,
				range = 360000,
				capability = 5,
				firepower = 10,
				vCruise = 215.83333333333,
				vAttack = 277.5,
				hCruise = 5486.4,
				hAttack = 3048,
				standoff = nil,
				tStation = nil,
				LDSD = false,
				self_escort = false,
				sortie_rate = 2,
				stores = {
					["pylons"] = 
					{
						[1] = 
						{
							["CLSID"] = "{9BFD8C90-F7AE-4e90-833B-BFD0CED0E536}",
						}, -- end of [1]
						[3] = 
						{
							["CLSID"] = "{7A44FF09-527C-4B7E-B42B-3F111CFE50FB}",
						}, -- end of [3]
						[4] = 
						{
							["CLSID"] = "{0395076D-2F77-4420-9D33-087A4398130B}",
						}, -- end of [4]
						[5] = 
						{
							["CLSID"] = "{7A44FF09-527C-4B7E-B42B-3F111CFE50FB}",
						}, -- end of [5]
						[7] = 
						{
							["CLSID"] = "{9BFD8C90-F7AE-4e90-833B-BFD0CED0E536}",
						}, -- end of [7]
					}, -- end of ["pylons"]
					["fuel"] = 2046,
					["flare"] = 15,
					["ammo_type"] = 1,
					["chaff"] = 30,
					["gun"] = 100,
				},
			},
			["Mk-84*1, AIM-9P*2"] = {
				support = {
					["Escort"] = true,
					["SEAD"] = true,
				},
				attributes = {"bunker"},
				weaponType = "Bombs",
				expend = "All",
				day = true,
				night = false,
				adverseWeather = false,
				range = 360000,
				capability = 5,
				firepower = 10,
				vCruise = 215.83333333333,
				vAttack = 277.5,
				hCruise = 5486.4,
				hAttack = 4572,
				standoff = nil,
				tStation = nil,
				LDSD = false,
				self_escort = false,
				sortie_rate = 2,
				stores = {
					["pylons"] = 
					{
						[1] = 
						{
							["CLSID"] = "{9BFD8C90-F7AE-4e90-833B-BFD0CED0E536}",
						}, -- end of [1]
						[7] = 
						{
							["CLSID"] = "{9BFD8C90-F7AE-4e90-833B-BFD0CED0E536}",
						}, -- end of [7]
						[4] = 
						{
							["CLSID"] = "{AB8B8299-F1CC-4359-89B5-2172E0CF4A5A}",
						}, -- end of [4]
					}, -- end of ["pylons"]
					["fuel"] = 2046,
					["flare"] = 15,
					["ammo_type"] = 1,
					["chaff"] = 30,
					["gun"] = 100,
				},
			},
			--[[["MR, CBU-52*4, AIM-9P*2, Fuel_275*1"] = {
				support = {
					["Escort"] = true,
					["SEAD"] = true,
				},
				attributes = {"soft", "SA-6"},
				weaponType = "Bombs",
				expend = "All",
				day = true,
				night = false,
				adverseWeather = false,
				range = 360000,
				capability = 5,
				firepower = 10,
				vCruise = 215.83333333333,
				vAttack = 4572,
				hCruise = 5486.4,
				hAttack = 4572,
				standoff = nil,
				tStation = nil,
				LDSD = false,
				self_escort = false,
				sortie_rate = 2,
				stores = {
					["pylons"] = 
					{
						[1] = 
						{
							["CLSID"] = "{9BFD8C90-F7AE-4e90-833B-BFD0CED0E536}",
						}, -- end of [1]
						[2] = 
						{
							["CLSID"] = "{CBU-52B}",
						}, -- end of [2]
						[3] = 
						{
							["CLSID"] = "{CBU-52B}",
						}, -- end of [3]
						[4] = 
						{
							["CLSID"] = "{0395076D-2F77-4420-9D33-087A4398130B}",
						}, -- end of [4]
						[5] = 
						{
							["CLSID"] = "{CBU-52B}",
						}, -- end of [5]
						[6] = 
						{
							["CLSID"] = "{CBU-52B}",
						}, -- end of [6]
						[7] = 
						{
							["CLSID"] = "{9BFD8C90-F7AE-4e90-833B-BFD0CED0E536}",
						}, -- end of [7]
					}, -- end of ["pylons"]
					["fuel"] = 2046,
					["flare"] = 15,
					["ammo_type"] = 1,
					["chaff"] = 30,
					["gun"] = 100,
				},
			]]--},
			--[[["SR, CBU-52*4, AIM-9P*2"] = {
				support = {
					["Escort"] = true,
					["SEAD"] = true,
				},
				attributes = {"soft", "SA-6", "SR"},
				weaponType = "Bombs",
				expend = "All",
				day = true,
				night = false,
				adverseWeather = false,
				range = 130000,
				capability = 5,
				firepower = 10,
				vCruise = 215.83333333333,
				vAttack = 4572,
				hCruise = 4876.8,
				hAttack = 4572,
				standoff = nil,
				tStation = nil,
				LDSD = false,
				self_escort = false,
				sortie_rate = 2,
				stores = {
					["pylons"] = 
					{
						[1] = 
						{
							["CLSID"] = "{9BFD8C90-F7AE-4e90-833B-BFD0CED0E536}",
						}, -- end of [1]
						[2] = 
						{
							["CLSID"] = "{CBU-52B}",
						}, -- end of [2]
						[3] = 
						{
							["CLSID"] = "{CBU-52B}",
						}, -- end of [3]
						[5] = 
						{
							["CLSID"] = "{CBU-52B}",
						}, -- end of [5]
						[6] = 
						{
							["CLSID"] = "{CBU-52B}",
						}, -- end of [6]
						[7] = 
						{
							["CLSID"] = "{9BFD8C90-F7AE-4e90-833B-BFD0CED0E536}",
						}, -- end of [7]
					}, -- end of ["pylons"]
					["fuel"] = 2046,
					["flare"] = 15,
					["ammo_type"] = 1,
					["chaff"] = 30,
					["gun"] = 100,
				},
			]]--},
		},
	},
	["F-4E"] = {
		["Intercept"] = {
			["AIM-9P*4, AIM-7M*4"] = {
				attributes = {},
				weaponType = nil,
				expend = nil,
				day = true,
				night = true,
				adverseWeather = true,
				range = 200000,
				capability = 5,
				firepower = 10,
				vCruise = nil,
				vAttack = nil,
				hCruise = nil,
				hAttack = nil,
				standoff = nil,
				tStation = nil,
				LDSD = false,
				self_escort = false,
				sortie_rate = 2,
				stores = {
					["pylons"] = 
					{
						[2] = 
						{
							["CLSID"] = "{773675AB-7C29-422f-AFD8-32844A7B7F17}",
						}, -- end of [2]
						[3] = 
						{
							["CLSID"] = "{8D399DDA-FF81-4F14-904D-099B34FE7918}",
						}, -- end of [3]
						[4] = 
						{
							["CLSID"] = "{8D399DDA-FF81-4F14-904D-099B34FE7918}",
						}, -- end of [4]
						[6] = 
						{
							["CLSID"] = "{8D399DDA-FF81-4F14-904D-099B34FE7918}",
						}, -- end of [6]
						[7] = 
						{
							["CLSID"] = "{8D399DDA-FF81-4F14-904D-099B34FE7918}",
						}, -- end of [7]
						[8] = 
						{
							["CLSID"] = "{773675AB-7C29-422f-AFD8-32844A7B7F17}",
						}, -- end of [8]
					}, -- end of ["pylons"]
					["fuel"] = "4864",
					["flare"] = 30,
					["chaff"] = 60,
					["gun"] = 100,
				},
			},
		},
		["CAP"] = {
			["AIM-9P*4, AIM-7M*4, Fuel*2"] = {
				attributes = {},
				weaponType = nil,
				expend = nil,
				day = true,
				night = false,
				adverseWeather = true,
				range = 200000,
				capability = 5,
				firepower = 10,
				vCruise = 215.83333333333,
				vAttack = 246.66666666667,
				hCruise = 6096,
				hAttack = 6096,
				standoff = 55500,
				tStation = 7200,
				LDSD = false,
				self_escort = false,
				sortie_rate = 3,
				stores = {
					["pylons"] = 
					{
						[1] = 
						{
							["CLSID"] = "{7B4B122D-C12C-4DB4-834E-4D8BB4D863A8}",
						}, -- end of [1]
						[2] = 
						{
							["CLSID"] = "{773675AB-7C29-422f-AFD8-32844A7B7F17}",
						}, -- end of [2]
						[3] = 
						{
							["CLSID"] = "{8D399DDA-FF81-4F14-904D-099B34FE7918}",
						}, -- end of [3]
						[4] = 
						{
							["CLSID"] = "{8D399DDA-FF81-4F14-904D-099B34FE7918}",
						}, -- end of [4]
						[6] = 
						{
							["CLSID"] = "{8D399DDA-FF81-4F14-904D-099B34FE7918}",
						}, -- end of [6]
						[7] = 
						{
							["CLSID"] = "{8D399DDA-FF81-4F14-904D-099B34FE7918}",
						}, -- end of [7]
						[8] = 
						{
							["CLSID"] = "{773675AB-7C29-422f-AFD8-32844A7B7F17}",
						}, -- end of [8]
						[9] = 
						{
							["CLSID"] = "{7B4B122D-C12C-4DB4-834E-4D8BB4D863A8}",
						}, -- end of [9]
					}, -- end of ["pylons"]
					["fuel"] = "4864",
					["flare"] = 30,
					["chaff"] = 60,
					["gun"] = 100,
				},
			},
		},
		["Escort"] = {
			["Day, AIM-9P*4, AIM-7M*4, Fuel*2"] = {
				attributes = {},
				weaponType = nil,
				expend = nil,
				day = true,
				night = false,
				adverseWeather = true,
				range = 360000,
				capability = 5,
				firepower = 10,
				vCruise = 270,
				vAttack = 270,
				hCruise = 6096,
				hAttack = 6096,
				standoff = 28000,
				tStation = nil,
				LDSD = false,
				self_escort = false,
				sortie_rate = 2,
				stores = {
					["pylons"] = 
					{
						[1] = 
						{
							["CLSID"] = "{7B4B122D-C12C-4DB4-834E-4D8BB4D863A8}",
						}, -- end of [1]
						[2] = 
						{
							["CLSID"] = "{773675AB-7C29-422f-AFD8-32844A7B7F17}",
						}, -- end of [2]
						[3] = 
						{
							["CLSID"] = "{8D399DDA-FF81-4F14-904D-099B34FE7918}",
						}, -- end of [3]
						[4] = 
						{
							["CLSID"] = "{8D399DDA-FF81-4F14-904D-099B34FE7918}",
						}, -- end of [4]
						[6] = 
						{
							["CLSID"] = "{8D399DDA-FF81-4F14-904D-099B34FE7918}",
						}, -- end of [6]
						[7] = 
						{
							["CLSID"] = "{8D399DDA-FF81-4F14-904D-099B34FE7918}",
						}, -- end of [7]
						[8] = 
						{
							["CLSID"] = "{773675AB-7C29-422f-AFD8-32844A7B7F17}",
						}, -- end of [8]
						[9] = 
						{
							["CLSID"] = "{7B4B122D-C12C-4DB4-834E-4D8BB4D863A8}",
						}, -- end of [9]
					}, -- end of ["pylons"]
					["fuel"] = "4864",
					["flare"] = 30,
					["chaff"] = 60,
					["gun"] = 100,
				},
			},
			["Night, AIM-9P*4, AIM-7M*4, Fuel*2"] = {
				attributes = {},
				weaponType = nil,
				expend = nil,
				day = false,
				night = true,
				adverseWeather = true,
				range = 360000,
				capability = 5,
				firepower = 10,
				vCruise = 270,
				vAttack = 270,
				hCruise = 6096,
				hAttack = 6096,
				standoff = 28000,
				tStation = nil,
				LDSD = false,
				self_escort = false,
				sortie_rate = 1,
				stores = {
					["pylons"] = 
					{
						[1] = 
						{
							["CLSID"] = "{7B4B122D-C12C-4DB4-834E-4D8BB4D863A8}",
						}, -- end of [1]
						[2] = 
						{
							["CLSID"] = "{773675AB-7C29-422f-AFD8-32844A7B7F17}",
						}, -- end of [2]
						[3] = 
						{
							["CLSID"] = "{8D399DDA-FF81-4F14-904D-099B34FE7918}",
						}, -- end of [3]
						[4] = 
						{
							["CLSID"] = "{8D399DDA-FF81-4F14-904D-099B34FE7918}",
						}, -- end of [4]
						[6] = 
						{
							["CLSID"] = "{8D399DDA-FF81-4F14-904D-099B34FE7918}",
						}, -- end of [6]
						[7] = 
						{
							["CLSID"] = "{8D399DDA-FF81-4F14-904D-099B34FE7918}",
						}, -- end of [7]
						[8] = 
						{
							["CLSID"] = "{773675AB-7C29-422f-AFD8-32844A7B7F17}",
						}, -- end of [8]
						[9] = 
						{
							["CLSID"] = "{7B4B122D-C12C-4DB4-834E-4D8BB4D863A8}",
						}, -- end of [9]
					}, -- end of ["pylons"]
					["fuel"] = "4864",
					["flare"] = 30,
					["chaff"] = 60,
					["gun"] = 100,
				},
			},
		},
		["Fighter Sweep"] = {
			["AIM-9P*4, AIM-7M*4, Fuel*2"] = {
				attributes = {},
				weaponType = nil,
				expend = nil,
				day = true,
				night = false,
				adverseWeather = true,
				range = 360000,
				capability = 5,
				firepower = 10,
				vCruise = 215.83333333333,
				vAttack = 215.83333333333,
				hCruise = 7011,
				hAttack = 7011,
				standoff = 37000,
				tStation = nil,
				LDSD = false,
				self_escort = false,
				sortie_rate = 1,
				stores = {
					["pylons"] = 
					{
						[1] = 
						{
							["CLSID"] = "{7B4B122D-C12C-4DB4-834E-4D8BB4D863A8}",
						}, -- end of [1]
						[2] = 
						{
							["CLSID"] = "{773675AB-7C29-422f-AFD8-32844A7B7F17}",
						}, -- end of [2]
						[3] = 
						{
							["CLSID"] = "{8D399DDA-FF81-4F14-904D-099B34FE7918}",
						}, -- end of [3]
						[4] = 
						{
							["CLSID"] = "{8D399DDA-FF81-4F14-904D-099B34FE7918}",
						}, -- end of [4]
						[6] = 
						{
							["CLSID"] = "{8D399DDA-FF81-4F14-904D-099B34FE7918}",
						}, -- end of [6]
						[7] = 
						{
							["CLSID"] = "{8D399DDA-FF81-4F14-904D-099B34FE7918}",
						}, -- end of [7]
						[8] = 
						{
							["CLSID"] = "{773675AB-7C29-422f-AFD8-32844A7B7F17}",
						}, -- end of [8]
						[9] = 
						{
							["CLSID"] = "{7B4B122D-C12C-4DB4-834E-4D8BB4D863A8}",
						}, -- end of [9]
					}, -- end of ["pylons"]
					["fuel"] = "4864",
					["flare"] = 30,
					["chaff"] = 60,
					["gun"] = 100,
				},
			},
		},
		["SEAD"] = {
			["Day, AGM-45*2, AIM-7M*3, ECM*1, Fuel*2"] = {
				attributes = {},
				weaponType = "ASM",
				expend = nil,
				day = true,
				night = false,
				adverseWeather = true,
				range = 360000,
				capability = 5,
				firepower = 10,
				vCruise = 270,
				vAttack = 270,
				hCruise = 6096,
				hAttack = 6096,
				standoff = nil,
				tStation = nil,
				LDSD = false,
				self_escort = false,
				sortie_rate = 2,
				stores = {
					["pylons"] = 
					{
						[1] = 
						{
							["CLSID"] = "{7B4B122D-C12C-4DB4-834E-4D8BB4D863A8}",
						}, -- end of [1]
						[2] = 
						{
							["CLSID"] = "{3E6B632D-65EB-44D2-9501-1C2D04515405}",
						}, -- end of [2]
						[3] = 
						{
							["CLSID"] = "{6D21ECEA-F85B-4E8D-9D51-31DC9B8AA4EF}",
						}, -- end of [3]
						[4] = 
						{
							["CLSID"] = "{8D399DDA-FF81-4F14-904D-099B34FE7918}",
						}, -- end of [4]
						[6] = 
						{
							["CLSID"] = "{8D399DDA-FF81-4F14-904D-099B34FE7918}",
						}, -- end of [6]
						[7] = 
						{
							["CLSID"] = "{8D399DDA-FF81-4F14-904D-099B34FE7918}",
						}, -- end of [7]
						[8] = 
						{
							["CLSID"] = "{3E6B632D-65EB-44D2-9501-1C2D04515405}",
						}, -- end of [8]
						[9] = 
						{
							["CLSID"] = "{7B4B122D-C12C-4DB4-834E-4D8BB4D863A8}",
						}, -- end of [9]
					}, -- end of ["pylons"]
					["fuel"] = "4864",
					["flare"] = 30,
					["chaff"] = 60,
					["gun"] = 100,
				},
			},
			["Night, AGM-45*2, AIM-7M*3, ECM*1, Fuel*2"] = {
				attributes = {},
				weaponType = "ASM",
				expend = nil,
				day = false,
				night = true,
				adverseWeather = true,
				range = 360000,
				capability = 5,
				firepower = 10,
				vCruise = 270,
				vAttack = 270,
				hCruise = 6096,
				hAttack = 6096,
				standoff = nil,
				tStation = nil,
				LDSD = false,
				self_escort = false,
				sortie_rate = 1,
				stores = {
					["pylons"] = 
					{
						[1] = 
						{
							["CLSID"] = "{7B4B122D-C12C-4DB4-834E-4D8BB4D863A8}",
						}, -- end of [1]
						[2] = 
						{
							["CLSID"] = "{3E6B632D-65EB-44D2-9501-1C2D04515405}",
						}, -- end of [2]
						[3] = 
						{
							["CLSID"] = "{6D21ECEA-F85B-4E8D-9D51-31DC9B8AA4EF}",
						}, -- end of [3]
						[4] = 
						{
							["CLSID"] = "{8D399DDA-FF81-4F14-904D-099B34FE7918}",
						}, -- end of [4]
						[6] = 
						{
							["CLSID"] = "{8D399DDA-FF81-4F14-904D-099B34FE7918}",
						}, -- end of [6]
						[7] = 
						{
							["CLSID"] = "{8D399DDA-FF81-4F14-904D-099B34FE7918}",
						}, -- end of [7]
						[8] = 
						{
							["CLSID"] = "{3E6B632D-65EB-44D2-9501-1C2D04515405}",
						}, -- end of [8]
						[9] = 
						{
							["CLSID"] = "{7B4B122D-C12C-4DB4-834E-4D8BB4D863A8}",
						}, -- end of [9]
					}, -- end of ["pylons"]
					["fuel"] = "4864",
					["flare"] = 30,
					["chaff"] = 60,
					["gun"] = 100,
				},
			},
		},
		["Strike"] = {
			["Mk-82*6, AIM-7M*3, ECM*1, Fuel*2"] = {
				support = {
					["Escort"] = true,
					["SEAD"] = true,
				},
				attributes = {"soft", "hard"},
				weaponType = "Bombs",
				expend = "All",
				day = true,
				night = false,
				adverseWeather = false,
				range = 360000,
				capability = 5,
				firepower = 10,
				vCruise = 215.83333333333,
				vAttack = 277.5,
				hCruise = 5486.4,
				hAttack = 4572,
				standoff = nil,
				tStation = nil,
				LDSD = false,
				self_escort = false,
				sortie_rate = 2,
				stores = {
					["pylons"] = 
					{
						[1] = 
						{
							["CLSID"] = "{7B4B122D-C12C-4DB4-834E-4D8BB4D863A8}",
						}, -- end of [1]
						[2] = 
						{
							["CLSID"] = "{60CC734F-0AFA-4E2E-82B8-93B941AB11CF}",
						}, -- end of [2]
						[3] = 
						{
							["CLSID"] = "{6D21ECEA-F85B-4E8D-9D51-31DC9B8AA4EF}",
						}, -- end of [3]
						[4] = 
						{
							["CLSID"] = "{8D399DDA-FF81-4F14-904D-099B34FE7918}",
						}, -- end of [4]
						[6] = 
						{
							["CLSID"] = "{8D399DDA-FF81-4F14-904D-099B34FE7918}",
						}, -- end of [6]
						[7] = 
						{
							["CLSID"] = "{8D399DDA-FF81-4F14-904D-099B34FE7918}",
						}, -- end of [7]
						[8] = 
						{
							["CLSID"] = "{60CC734F-0AFA-4E2E-82B8-93B941AB11CF}",
						}, -- end of [8]
						[9] = 
						{
							["CLSID"] = "{7B4B122D-C12C-4DB4-834E-4D8BB4D863A8}",
						}, -- end of [9]
					}, -- end of ["pylons"]
					["fuel"] = "4864",
					["flare"] = 30,
					["chaff"] = 60,
					["gun"] = 100,
				},
			},
			["Mk-82*12, AIM-7M*3, ECM*1, Fuel*2"] = {
				support = {
					["Escort"] = true,
					["SEAD"] = true,
				},
				attributes = {"soft", "hard", "SR"},
				weaponType = "Bombs",
				expend = "All",
				day = true,
				night = false,
				adverseWeather = false,
				range = 130000,
				capability = 5,
				firepower = 10,
				vCruise = 215.83333333333,
				vAttack = 277.5,
				hCruise = 5486.4,
				hAttack = 4572,
				standoff = nil,
				tStation = nil,
				LDSD = false,
				self_escort = false,
				sortie_rate = 2,
				stores = {
					["pylons"] = 
					{
						[1] = 
						{
							["CLSID"] = "{60CC734F-0AFA-4E2E-82B8-93B941AB11CF}",
						}, -- end of [1]
						[2] = 
						{
							["CLSID"] = "{60CC734F-0AFA-4E2E-82B8-93B941AB11CF}",
						}, -- end of [2]
						[3] = 
						{
							["CLSID"] = "{6D21ECEA-F85B-4E8D-9D51-31DC9B8AA4EF}",
						}, -- end of [3]
						[4] = 
						{
							["CLSID"] = "{8D399DDA-FF81-4F14-904D-099B34FE7918}",
						}, -- end of [4]
						[6] = 
						{
							["CLSID"] = "{8D399DDA-FF81-4F14-904D-099B34FE7918}",
						}, -- end of [6]
						[7] = 
						{
							["CLSID"] = "{8D399DDA-FF81-4F14-904D-099B34FE7918}",
						}, -- end of [7]
						[8] = 
						{
							["CLSID"] = "{60CC734F-0AFA-4E2E-82B8-93B941AB11CF}",
						}, -- end of [8]
						[9] = 
						{
							["CLSID"] = "{60CC734F-0AFA-4E2E-82B8-93B941AB11CF}",
						}, -- end of [9]
					}, -- end of ["pylons"]
					["fuel"] = "4864",
					["flare"] = 30,
					["chaff"] = 60,
					["gun"] = 100,
				},
			},
			["GBU-10*2, AIM-7M*3, ECM*1, Fuel*2"] = {
				support = {
					["Escort"] = true,
					["SEAD"] = true,
				},
				attributes = {"bunker"},
				weaponType = "Guided bombs",
				expend = "All",
				day = true,
				night = false,
				adverseWeather = false,
				range = 360000,
				capability = 5,
				firepower = 10,
				vCruise = 215.83333333333,
				vAttack = 277.5,
				hCruise = 6096,
				hAttack = 4572,
				standoff = nil,
				tStation = nil,
				LDSD = false,
				self_escort = false,
				sortie_rate = 2,
				stores = {
					["pylons"] = 
					{
						[1] = 
						{
							["CLSID"] = "{7B4B122D-C12C-4DB4-834E-4D8BB4D863A8}",
						}, -- end of [1]
						[2] = 
						{
							["CLSID"] = "{51F9AAE5-964F-4D21-83FB-502E3BFE5F8A}",
						}, -- end of [2]
						[3] = 
						{
							["CLSID"] = "{6D21ECEA-F85B-4E8D-9D51-31DC9B8AA4EF}",
						}, -- end of [3]
						[4] = 
						{
							["CLSID"] = "{8D399DDA-FF81-4F14-904D-099B34FE7918}",
						}, -- end of [4]
						[6] = 
						{
							["CLSID"] = "{8D399DDA-FF81-4F14-904D-099B34FE7918}",
						}, -- end of [6]
						[7] = 
						{
							["CLSID"] = "{8D399DDA-FF81-4F14-904D-099B34FE7918}",
						}, -- end of [7]
						[8] = 
						{
							["CLSID"] = "{51F9AAE5-964F-4D21-83FB-502E3BFE5F8A}",
						}, -- end of [8]
						[9] = 
						{
							["CLSID"] = "{7B4B122D-C12C-4DB4-834E-4D8BB4D863A8}",
						}, -- end of [9]
					}, -- end of ["pylons"]
					["fuel"] = "4864",
					["flare"] = 30,
					["chaff"] = 60,
					["gun"] = 100,
				},
			},
			["AGM-65K*4, AIM-7M*3, ECM*1, Fuel*2"] = {
				support = {
					["Escort"] = true,
					["SEAD"] = true,
				},
				attributes = {"armor", "SA-6"},
				weaponType = "ASM",
				expend = "Auto",
				day = true,
				night = false,
				adverseWeather = false,
				range = 360000,
				capability = 5,
				firepower = 10,
				vCruise = 215.83333333333,
				vAttack = 277.5,
				hCruise = 4876.8,
				hAttack = 4572,
				standoff = 11000,
				tStation = nil,
				LDSD = false,
				self_escort = false,
				sortie_rate = 2,
				stores = {
					["pylons"] = 
					{
						[1] = 
						{
							["CLSID"] = "{7B4B122D-C12C-4DB4-834E-4D8BB4D863A8}",
						}, -- end of [1]
						[2] = 
						{
							["CLSID"] = "{D7670BC7-881B-4094-906C-73879CF7EB28}",
						}, -- end of [2]
						[3] = 
						{
							["CLSID"] = "{6D21ECEA-F85B-4E8D-9D51-31DC9B8AA4EF}",
						}, -- end of [3]
						[4] = 
						{
							["CLSID"] = "{8D399DDA-FF81-4F14-904D-099B34FE7918}",
						}, -- end of [4]
						[6] = 
						{
							["CLSID"] = "{8D399DDA-FF81-4F14-904D-099B34FE7918}",
						}, -- end of [6]
						[7] = 
						{
							["CLSID"] = "{8D399DDA-FF81-4F14-904D-099B34FE7918}",
						}, -- end of [7]
						[8] = 
						{
							["CLSID"] = "{D7670BC7-881B-4094-906C-73879CF7EB27}",
						}, -- end of [8]
						[9] = 
						{
							["CLSID"] = "{7B4B122D-C12C-4DB4-834E-4D8BB4D863A8}",
						}, -- end of [9]
					}, -- end of ["pylons"]
					["fuel"] = "4864",
					["flare"] = 30,
					["chaff"] = 60,
					["gun"] = 100,
				},
			},
			--[[["Mk-20*6, AIM-7M*3, ECM*1, Fuel*2"] = {
				support = {
					["Escort"] = true,
					["SEAD"] = true,
				},
				attributes = {"soft"},
				weaponType = "Bombs",
				expend = "All",
				day = true,
				night = false,
				adverseWeather = false,
				range = 360000,
				capability = 5,
				firepower = 10,
				vCruise = 215.83333333333,
				vAttack = 277.5,
				hCruise = 5486.4,
				hAttack = 4572,
				standoff = nil,
				tStation = nil,
				LDSD = false,
				self_escort = false,
				sortie_rate = 2,
				stores = {
					["pylons"] = 
					{
						[1] = 
						{
							["CLSID"] = "{7B4B122D-C12C-4DB4-834E-4D8BB4D863A8}",
						}, -- end of [1]
						[2] = 
						{
							["CLSID"] = "{B83CB620-5BBE-4BEA-910C-EB605A327EF9}",
						}, -- end of [2]
						[3] = 
						{
							["CLSID"] = "{6D21ECEA-F85B-4E8D-9D51-31DC9B8AA4EF}",
						}, -- end of [3]
						[4] = 
						{
							["CLSID"] = "{8D399DDA-FF81-4F14-904D-099B34FE7918}",
						}, -- end of [4]
						[6] = 
						{
							["CLSID"] = "{8D399DDA-FF81-4F14-904D-099B34FE7918}",
						}, -- end of [6]
						[7] = 
						{
							["CLSID"] = "{8D399DDA-FF81-4F14-904D-099B34FE7918}",
						}, -- end of [7]
						[8] = 
						{
							["CLSID"] = "{B83CB620-5BBE-4BEA-910C-EB605A327EF9}",
						}, -- end of [8]
						[9] = 
						{
							["CLSID"] = "{7B4B122D-C12C-4DB4-834E-4D8BB4D863A8}",
						}, -- end of [9]
					}, -- end of ["pylons"]
					["fuel"] = "4864",
					["flare"] = 30,
					["chaff"] = 60,
					["gun"] = 100,
				},
			]]--},
		},
		["Reconnaissance"] = {
			["ECM*1, Fuel*1"] = {
				support = {
					["Escort"] = true,
					["SEAD"] = true,
				},
				attributes = {},
				weaponType = nil,
				expend = nil,
				day = true,
				night = true,
				adverseWeather = false,
				range = 900000,
				capability = 5,
				firepower = 10,
				vCruise = 256.94444444444,
				vAttack = 513.88888888889,
				hCruise = 9144,
				hAttack = 13716,
				standoff = 74000,
				tStation = nil,
				LDSD = false,
				self_escort = false,
				sortie_rate = 0.5,
				stores = {
					["pylons"] = 
					{
						[5] = 
						{
							["CLSID"] = "{8B9E3FD0-F034-4A07-B6CE-C269884CC71B}",
						}, -- end of [5]
						[3] = 
						{
							["CLSID"] = "{6D21ECEA-F85B-4E8D-9D51-31DC9B8AA4EF}",
						}, -- end of [3]
					}, -- end of ["pylons"]
					["fuel"] = "4864",
					["flare"] = 30,
					["chaff"] = 60,
					["gun"] = 100,
				},
			},
		},
	},
	["E-3A"] = {
		["AWACS"] = {
			["Default"] = {
				attributes = {},
				weaponType = nil,
				expend = nil,
				day = true,
				night = true,
				adverseWeather = true,
				range = 500000,
				capability = 5,
				firepower = 10,
				vCruise = 231.25,
				vAttack = 231.25,
				hCruise = 9753.6,
				hAttack = 9753.6,
				standoff = nil,
				tStation = 36000,
				LDSD = false,
				self_escort = false,
				sortie_rate = 1.2,
				stores = {
					["pylons"] = 
					{
					}, -- end of ["pylons"]
					["fuel"] = "65000",
					["flare"] = 60,
					["chaff"] = 120,
					["gun"] = 100,
				},
			},
		},
	},
	["KC-135"] = {
		["Refuelling"] = {
			["Default"] = {
				attributes = {},
				weaponType = nil,
				expend = nil,
				day = true,
				night = true,
				adverseWeather = true,
				range = 500000,
				capability = 5,
				firepower = 10,
				vCruise = 246.66666666667,
				vAttack = 246.66666666667,
				hCruise = 7315.2,
				hAttack = 7315.2,
				standoff = nil,
				tStation = 21600,
				LDSD = false,
				self_escort = false,
				sortie_rate = 1.5,
				stores = {
					["pylons"] = 
					{
					}, -- end of ["pylons"]
					["fuel"] = 90700,
					["flare"] = 0,
					["chaff"] = 0,
					["gun"] = 100,
				},
			},
		},
	},
	["C-130"] = {
		["Transport"] = {
			["Default"] = {
				attributes = {},
				weaponType = nil,
				expend = nil,
				day = true,
				night = true,
				adverseWeather = true,
				range = 500000,
				capability = 5,
				firepower = 10,
				vCruise = 154.16666666667,
				vAttack = 154.16666666667,
				hCruise = 4572,
				hAttack = 4572,
				standoff = nil,
				tStation = nil,
				LDSD = false,
				self_escort = false,
				sortie_rate = 2,
				stores = {
					["pylons"] = 
					{
					}, -- end of ["pylons"]
					["fuel"] = "20830",
					["flare"] = 60,
					["chaff"] = 120,
					["gun"] = 100,
				},
			},
		},
	},
	["MiG-15bis"] = {
		["Intercept"] = {
			["Day"] = {
				attributes = {},
				weaponType = nil,
				expend = nil,
				day = true,
				night = false,
				adverseWeather = false,
				range = 100000,
				capability = 4,
				firepower = 5,
				vCruise = nil,
				vAttack = nil,
				hCruise = nil,
				hAttack = nil,
				standoff = nil,
				tStation = nil,
				LDSD = false,
				self_escort = false,
				sortie_rate = 3,
				stores = {
					["pylons"] = 
					{
					}, -- end of ["pylons"]
					["fuel"] = 1172,
					["flare"] = 0,
					["chaff"] = 0,
					["gun"] = 100,
				},
			},
		},
		["CAP"] = {
			["Day, Fuel_400*2"] = {
				attributes = {},
				weaponType = nil,
				expend = nil,
				day = true,
				night = false,
				adverseWeather = false,
				range = 300000,
				capability = 5,
				firepower = 5,
				vCruise = 166.666,
				vAttack = 125,
				hCruise = 5000,
				hAttack = 5000,
				standoff = 45000,
				tStation = 7200,
				LDSD = false,
				self_escort = false,
				sortie_rate = 2,
				stores = {
					["pylons"] = 
					{
						[1] = 
						{
							["CLSID"] = "PTB400_MIG15",
						}, -- end of [1]
						[2] = 
						{
							["CLSID"] = "PTB400_MIG15",
						}, -- end of [2]
					}, -- end of ["pylons"]
					["fuel"] = 1172,
					["flare"] = 0,
					["chaff"] = 0,
					["gun"] = 100,
				},
			},
		},
		["Strike"] = {
			["CAS, FAB-100*2"] = {
				support = {
					["Escort"] = true,
					["SEAD"] = true,
				},
				attributes = {"soft", "hard"},
				weaponType = "Bombs",
				expend = "All",
				day = true,
				night = false,
				adverseWeather = false,
				range = 360000,
				capability = 5,
				firepower = 10,
				vCruise = 194.44444444444,
				vAttack = 236.11111111111,
				hCruise = 3500,
				hAttack = 150,
				standoff = nil,
				tStation = nil,
				LDSD = false,
				self_escort = false,
				sortie_rate = 1,
				stores = {
					["pylons"] = 
					{
						[1] = 
						{
							["CLSID"] = "FAB_100M",
						}, -- end of [1]
						[2] = 
						{
							["CLSID"] = "FAB_100M",
						}, -- end of [2]
					}, -- end of ["pylons"]
					["fuel"] = 1172,
					["flare"] = 0,
					["chaff"] = 0,
					["gun"] = 100,
				},
			},
		},
	},
	["MiG-21Bis"] = {
		["Intercept"] = {
			["Day, R-13M*4, Fuel_800*1"] = {
				attributes = {},
				weaponType = nil,
				expend = nil,
				day = true,
				night = false,
				adverseWeather = false,
				range = 200000,
				capability = 5.1,
				firepower = 10,
				vCruise = nil,
				vAttack = nil,
				hCruise = nil,
				hAttack = nil,
				standoff = nil,
				tStation = nil,
				LDSD = false,
				self_escort = false,
				sortie_rate = 3,
				stores = {
					["pylons"] = 
					{
						[1] = 
						{
							["CLSID"] = "{R-13M}",
						}, -- end of [1]
						[2] = 
						{
							["CLSID"] = "{R-13M}",
						}, -- end of [2]
						[3] = 
						{
							["CLSID"] = "{PTB_800_MIG21}",
						},
						[4] = 
						{
							["CLSID"] = "{R-13M}",
						}, -- end of [4]
						[5] = 
						{
							["CLSID"] = "{R-13M}",
						}, -- end of [5]
						[6] = 
						{
							["CLSID"] = "{ASO-2}",
						}, -- end of [6]
					},
					["fuel"] = 2280,
					["flare"] = 32,
					["ammo_type"] = 1,
					["chaff"] = 32,
					["gun"] = 100,
				},
			},
			["Day AW, R-13M*2, R-3R*2, Fuel_800*1"] = {
				attributes = {},
				weaponType = nil,
				expend = nil,
				day = true,
				night = false,
				adverseWeather = true,
				range = 200000,
				capability = 5,
				firepower = 10,
				vCruise = nil,
				vAttack = nil,
				hCruise = nil,
				hAttack = nil,
				standoff = nil,
				tStation = nil,
				LDSD = false,
				self_escort = false,
				sortie_rate = 3,
				stores = {
					["pylons"] = 
					{
						[1] = 
						{
							["CLSID"] = "{R-3R}",
						}, -- end of [1]
						[5] = 
						{
							["CLSID"] = "{R-3R}",
						}, -- end of [5]
						[6] = 
						{
							["CLSID"] = "{ASO-2}",
						}, -- end of [6]
						[4] = 
						{
							["CLSID"] = "{R-13M}",
						}, -- end of [4]
						[2] = 
						{
							["CLSID"] = "{R-13M}",
						}, -- end of [2]
						[3] = 
						{
							["CLSID"] = "{PTB_800_MIG21}",
						},
					},
					["fuel"] = 2280,
					["flare"] = 32,
					["ammo_type"] = 1,
					["chaff"] = 32,
					["gun"] = 100,
				},
			},
			["Night, R-13M*2, R-3R*2, Fuel_800*1"] = {
				attributes = {},
				weaponType = nil,
				expend = nil,
				day = false,
				night = true,
				adverseWeather = true,
				range = 200000,
				capability = 5,
				firepower = 10,
				vCruise = nil,
				vAttack = nil,
				hCruise = nil,
				hAttack = nil,
				standoff = nil,
				tStation = nil,
				LDSD = false,
				self_escort = false,
				sortie_rate = 1.5,
				stores = {
					["pylons"] = 
					{
						[1] = 
						{
							["CLSID"] = "{R-3R}",
						}, -- end of [1]
						[5] = 
						{
							["CLSID"] = "{R-3R}",
						}, -- end of [5]
						[6] = 
						{
							["CLSID"] = "{ASO-2}",
						}, -- end of [6]
						[4] = 
						{
							["CLSID"] = "{R-13M}",
						}, -- end of [4]
						[2] = 
						{
							["CLSID"] = "{R-13M}",
						}, -- end of [2]
						[3] = 
						{
							["CLSID"] = "{PTB_800_MIG21}",
						},
					},
					["fuel"] = 2280,
					["flare"] = 32,
					["ammo_type"] = 1,
					["chaff"] = 32,
					["gun"] = 100,
				},
			},
		},
		["CAP"] = {
			["R-13M*4, Fuel_800*1"] = {
				attributes = {},
				weaponType = nil,
				expend = nil,
				day = true,
				night = true,
				adverseWeather = true,
				range = 300000,
				capability =  4,
				firepower = 10,
				vCruise = 222.222,
				vAttack = 180.555,
				hCruise = 7500,
				hAttack = 5500,
				standoff = 45000,
				tStation = 2700,
				LDSD = false,
				self_escort = false,
				sortie_rate = 3,
				stores = {
					["pylons"] = 
					{
						[1] = 
						{
							["CLSID"] = "{R-13M}",
						}, -- end of [1]
						[2] = 
						{
							["CLSID"] = "{R-13M}",
						}, -- end of [2]
						[3] = 
						{
							["CLSID"] = "{PTB_800_MIG21}",
						}, -- end of [3]
						[4] = 
						{
							["CLSID"] = "{R-13M}",
						}, -- end of [4]
						[5] = 
						{
							["CLSID"] = "{R-13M}",
						}, -- end of [5]
						[6] = 
						{
							["CLSID"] = "{ASO-2}",
						}, -- end of [6]
					},
					["fuel"] = 2280,
					["flare"] = 32,
					["ammo_type"] = 1,
					["chaff"] = 32,
					["gun"] = 100,
				},
			},
		},
		["Strike"] = {
			["UB-32*2, R-13M*2, Fuel_800*1"] = {
				support = {
					["Escort"] = true,
					["SEAD"] = true,
				},
				attributes = {"soft", "hard"},
				weaponType = "Rockets",
				expend = "All",
				day = true,
				night = false,
				adverseWeather = false,
				range = 360000,
				capability = 5,
				firepower = 10,
				vCruise = 236.11111111111,
				vAttack = 305.55555555556,
				hCruise = 4000,
				hAttack = 150,
				standoff = nil,
				tStation = nil,
				LDSD = false,
				self_escort = false,
				sortie_rate = 1,
				stores = {
					["pylons"] = 
					{
						[1] = 
						{
							["CLSID"] = "{R-13M}",
						}, -- end of [1]
						[2] = 
						{
							["CLSID"] = "{UB-32_S5M}",
						}, -- end of [2]
						[3] = 
						{
							["CLSID"] = "{PTB_800_MIG21}",
						}, -- end of [3]
						[4] = 
						{
							["CLSID"] = "{UB-32_S5M}",
						}, -- end of [4]
						[5] = 
						{
							["CLSID"] = "{R-13M}",
						}, -- end of [5]
						[6] = 
						{
							["CLSID"] = "{ASO-2}",
						}, -- end of [6]
					}, -- end of ["pylons"]
					["fuel"] = 2280,
					["flare"] = 32,
					["ammo_type"] = 1,
					["chaff"] = 32,
					["gun"] = 100,
				},
			},
		},
		["Fighter Sweep"] = {
			["R-13M*4, Fuel_800*1"] = {
				attributes = {},
				weaponType = nil,
				expend = nil,
				day = true,
				night = false,
				adverseWeather = false,
				range = 400000,
				capability = 5,
				firepower = 10,
				vCruise = 263.88888888889,
				vAttack = 263.88888888889,
				hCruise = 7000,
				hAttack = 7000,
				standoff = 30000,
				tStation = nil,
				LDSD = false,
				self_escort = false,
				sortie_rate = 1,
				stores = {
					["pylons"] = 
					{
						[1] = 
						{
							["CLSID"] = "{R-13M}",
						}, -- end of [1]
						[2] = 
						{
							["CLSID"] = "{R-13M}",
						}, -- end of [2]
						[3] = 
						{
							["CLSID"] = "{PTB_800_MIG21}",
						},
						[4] = 
						{
							["CLSID"] = "{R-13M}",
						}, -- end of [4]
						[5] = 
						{
							["CLSID"] = "{R-13M}",
						}, -- end of [5]
						[6] = 
						{
							["CLSID"] = "{ASO-2}",
						}, -- end of [6]
					},
					["fuel"] = 2280,
					["flare"] = 32,
					["ammo_type"] = 1,
					["chaff"] = 32,
					["gun"] = 100,
				},
			},
		},
		["Nothing"] = {
			["Ferry Flight"] = {
				attributes = {},
				weaponType = nil,
				expend = nil,
				day = true,
				night = false,
				adverseWeather = true,
				range = 500000,
				capability = 5,
				firepower = 10,
				vCruise = 222.222,
				vAttack = 222.222,
				hCruise = 6000,
				hAttack = 6000,
				standoff = nil,
				tStation = nil,
				LDSD = false,
				self_escort = false,
				sortie_rate = 99,
				stores = {
					["pylons"] = 
					{
						[6] = 
						{
							["CLSID"] = "{ASO-2}",
						}, -- end of [6]
					},
					["fuel"] = 2280,
					["flare"] = 32,
					["ammo_type"] = 1,
					["chaff"] = 32,
					["gun"] = 100,
				},
			},
		},
	},
	["MiG-23MLD"] = {
		["Intercept"] = {
			["R-24R*1, R-24T*1, R-60M*4"] = {
				attributes = {},
				weaponType = nil,
				expend = nil,
				day = true,
				night = true,
				adverseWeather = true,
				range = 200000,
				capability = 5,
				firepower = 10,
				vCruise = nil,
				vAttack = nil,
				hCruise = nil,
				hAttack = nil,
				standoff = nil,
				tStation = nil,
				LDSD = true,
				self_escort = false,
				sortie_rate = 3,
				stores = {
					["pylons"] = 
					{
						[2] = 
						{
							["CLSID"] = "{6980735A-44CC-4BB9-A1B5-591532F1DC69}",
						}, -- end of [2]
						[3] = 
						{
							["CLSID"] = "{R-60 2L}"
						}, -- end of [3]
						[5] = 
						{
							["CLSID"] = "{R-60 2R}"
						}, -- end of [5]
						[6] = 
						{
							["CLSID"] = "{CCF898C9-5BC7-49A4-9D1E-C3ED3D5166A1}",
						}, -- end of [6]
					}, -- end of ["pylons"]
					["fuel"] = "3800",
					["flare"] = 60,
					["chaff"] = 60,
					["gun"] = 100,
				},
			},
			["R-13M*4"] = {
				attributes = {},
				weaponType = nil,
				expend = nil,
				day = true,
				night = true,
				adverseWeather = true,
				range = 200000,
				capability = 5,
				firepower = 10,
				vCruise = nil,
				vAttack = nil,
				hCruise = nil,
				hAttack = nil,
				standoff = nil,
				tStation = nil,
				LDSD = true,
				self_escort = false,
				sortie_rate = 3,
				stores = {
					["pylons"] = 
					{
						[2] = 
						{
							["CLSID"] = "{R-13M}",
						}, -- end of [2]
						[3] = 
						{
							["CLSID"] = "{R-13M}",
						}, -- end of [3]
						[5] = 
						{
							["CLSID"] = "{R-13M}",
						}, -- end of [5]
						[6] = 
						{
							["CLSID"] = "{R-13M}",
						}, -- end of [6]
					}, -- end of ["pylons"]
					["fuel"] = "3800",
					["flare"] = 60,
					["chaff"] = 60,
					["gun"] = 100,
				},
			},
		},
		["CAP"] = {
			["R-24R*1, R-24T*1, R-60M*4, Fuel_800*1"] = {
				attributes = {},
				weaponType = nil,
				expend = nil,
				day = true,
				night = true,
				adverseWeather = true,
				range = 300000,
				capability = 5,
				firepower = 10,
				vCruise = 222.22,
				vAttack = 180.555,
				hCruise = 7500,
				hAttack = 6000,
				standoff = 45000,
				tStation = 3000,
				LDSD = true,
				self_escort = false,
				sortie_rate = 3,
				stores = {
					["pylons"] = 
					{
						[2] = 
						{
							["CLSID"] = "{6980735A-44CC-4BB9-A1B5-591532F1DC69}",
						}, -- end of [2]
						[3] = 
						{
							["CLSID"] = "{R-60 2L}"
						}, -- end of [3]
						[4] = 
						{
							["CLSID"] = "{A5BAEAB7-6FAF-4236-AF72-0FD900F493F9}",
						}, -- end of [4]
						[5] = 
						{
							["CLSID"] = "{R-60 2R}"
						}, -- end of [5]
						[6] = 
						{
							["CLSID"] = "{CCF898C9-5BC7-49A4-9D1E-C3ED3D5166A1}",
						}, -- end of [6]
					}, -- end of ["pylons"]
					["fuel"] = "3800",
					["flare"] = 60,
					["chaff"] = 60,
					["gun"] = 100,
				},
			},
			["R-13M*4, Fuel_800*1"] = {
				attributes = {},
				weaponType = nil,
				expend = nil,
				day = true,
				night = true,
				adverseWeather = true,
				range = 300000,
				capability = 5,
				firepower = 10,
				vCruise = 222.22,
				vAttack = 180.555,
				hCruise = 7500,
				hAttack = 6000,
				standoff = 45000,
				tStation = 3000,
				LDSD = true,
				self_escort = false,
				sortie_rate = 3,
				stores = {
					["pylons"] = 
					{
						[2] = 
						{
							["CLSID"] = "{R-13M}",
						}, -- end of [2]
						[3] = 
						{
							["CLSID"] = "{R-13M}",
						}, -- end of [3]
						[4] = 
						{
							["CLSID"] = "{A5BAEAB7-6FAF-4236-AF72-0FD900F493F9}",
						}, -- end of [4]
						[5] = 
						{
							["CLSID"] = "{R-13M}",
						}, -- end of [5]
						[6] = 
						{
							["CLSID"] = "{R-13M}",
						}, -- end of [6]
					}, -- end of ["pylons"]
					["fuel"] = "3800",
					["flare"] = 60,
					["chaff"] = 60,
					["gun"] = 100,
				},
			},
		},
	},
	["MiG-25PD"] = {
		["Intercept"] = {
			["R-40R*2, R-40T*2"] = {
				attributes = {"Foxbat"},
				weaponType = nil,
				expend = nil,
				day = true,
				night = true,
				adverseWeather = true,
				range = 300000,
				capability = 6,
				firepower = 10,
				vCruise = nil,
				vAttack = nil,
				hCruise = nil,
				hAttack = nil,
				standoff = nil,
				tStation = nil,
				LDSD = false,
				self_escort = false,
				sortie_rate = 2,
				stores = {
					["pylons"] = 
					{
						[1] = 
						{
							["CLSID"] = "{5F26DBC2-FB43-4153-92DE-6BBCE26CB0FF}",
						}, -- end of [1]
						[2] = 
						{
							["CLSID"] = "{4EDBA993-2E34-444C-95FB-549300BF7CAF}",
						}, -- end of [2]
						[3] = 
						{
							["CLSID"] = "{4EDBA993-2E34-444C-95FB-549300BF7CAF}",
						}, -- end of [3]
						[4] = 
						{
							["CLSID"] = "{5F26DBC2-FB43-4153-92DE-6BBCE26CB0FF}",
						}, -- end of [4]
					}, -- end of ["pylons"]
					["fuel"] = "15245",
					["flare"] = 64,
					["chaff"] = 64,
					["gun"] = 100,
				},
			},
		},
	},
	["An-26B"] = {
		["Transport"] = {
			["Default"] = {
				attributes = {},
				weaponType = nil,
				expend = nil,
				day = true,
				night = true,
				adverseWeather = true,
				range = 500000,
				capability = 5,
				firepower = 10,
				vCruise = 154.16666666667,
				vAttack = 154.16666666667,
				hCruise = 3500,
				hAttack = 3500,
				standoff = nil,
				tStation = nil,
				LDSD = false,
				self_escort = false,
				sortie_rate = 2,
				stores = {
					["pylons"] = 
					{
					}, -- end of ["pylons"]
					["fuel"] = "5500",
					["flare"] = 384,
					["chaff"] = 384,
					["gun"] = 100,
				},
			},
		},
	},
}
	