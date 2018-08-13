--Order of Battle - Aircraft/Helicopter
--organized in units (squadrons/regiments) containing a number of aircraft

--[[ Unit Entry Example ----------------------------------------------------------------------------

[1] = {
	inactive = true,								--true if unit is not active
	player = true,									--true for player unit
	name = "527 TFS",								--unit name
	type = "F-5E-3",								--aircraft type
	helicopter = true,								--true for helicopter units
	country = "USA",								--unit country
	livery = {"USAF Euro Camo"},					--unit livery
	base = "Groom Lake AFB",						--unit base
	skill = "Random",								--unit skill
	tasks = {										--list of eligible unit tasks. Note: task names do not necessary match DCS tasks)
		["AWACS"] = true,							
		["Anti-ship Strike"] = true,
		["CAP"] = true,
		["Fighter Sweep"] = true,	
		["Intercept"] = true,
		["Reconnaissance"] = true,
		["Refueling"] = true,
		["Strike"] = true,							--Generic air-ground task (replaces "Ground Attack", "CAS" and "Pinpoint Strike")
		["Transport"] = true,
		["Escort"] = true,							--Support task: Fighter escort for package
		["SEAD"] = true,							--Support task: SEAD escort for package
		["Escort Jammer"] = true,					--Support task: Single airraft in center of package for defensive jamming
		["Flare Illumination"] = true,				--Support task: Illuminate target with flares for package
		["Laser Illumination"] = true,				--Support task: Lase target for package
		["Stand-Off Jammer"] = true,				--Not implemeted yet: On-station jamming
		["Chaff Escort"] = true,					--Not implemented yet: Lay chaff corrdior ahead of package
		["A-FAC"] = true,							--Not implemented yet: Airborne forward air controller
	},
	number = 12,									--number of airframes
},

]]-----------------------------------------------------------------------------------------------------

oob_air = {
	["blue"] = {											--side 1
		[1] = {
			name = "64 FWS",								--unit name
			player = true,									--player unit
			type = "F-5E-3",								--aircraft type
			country = "USA",								--unit country
			livery = {"aggressor `snake` scheme", "aggressor `desert` scheme", "US USAF Grape 31"},	--unit livery
			base = "Nellis AFB",							--unit base
			skill = "High",									--unit skill
			tasks = {										--unit tasks
				["Strike"] = true,
				["Escort"] = true,
				["Fighter Sweep"] = true,
				["Intercept"] = true,
			},
			number = 18,
		},
		[2] = {
			name = "65 FWS",								--unit name
			type = "F-5E-3",								--aircraft type
			base = "Reserves",								--unit base
			tasks = {										--unit tasks
			},
			number = 30,
		},
		[3] = {
			inactive = true,								--unit is inactive
			name = "34 TFS",								--unit name
			type = "F-4E",									--aircraft type
			country = "USAF Aggressors",					--unit country
			livery = "",									--unit livery
			base = "Nellis AFB",							--unit base
			skill = "High",									--unit skill
			tasks = {										--unit tasks
				["CAP"] = true,
				["Strike"] = true,
				["Escort"] = true,
				["Fighter Sweep"] = true,
				["Intercept"] = true,
				["Reconnaissance"] = true,
				["SEAD"] = true,
			},
			number = 18,
		},
		[4] = {
			inactive = true,								--unit is inactive
			name = "4 TFS",									--unit name
			type = "F-4E",									--aircraft type
			base = "Reserves",								--unit base
			tasks = {										--unit tasks
			},
			number = 30,
		},
		[5] = {
			name = "963 AWCS",								--unit name
			type = "E-3A",									--aircraft type
			country = "USA",								--unit country
			livery = "usaf standard",						--unit livery
			base = "Nellis AFB",							--unit base
			skill = "Random",								--unit skill
			tasks = {										--unit tasks
				["AWACS"] = true,
			},
			number = 2,
		},
		[6] = {
			name = "171 ARW",								--unit name
			type = "KC-135",								--aircraft type
			country = "USA",								--unit country
			livery = "Standard USAF",						--unit livery
			base = "Nellis AFB",							--unit base
			skill = "Random",								--unit skill
			tasks = {										--unit tasks
				["Refueling"] = true,
			},
			number = 4,
		},
		[7] = {
			name = "40 TAS",								--unit name
			type = "C-130",									--aircraft type
			country = "USA",								--unit country
			livery = "US Air Force",						--unit livery
			base = "Nellis AFB",							--unit base
			skill = "Random",								--unit skill
			tasks = {										--unit tasks
				["Transport"] = true,
			},
			number = 1,
		},
		[8] = {
			name = "41 TAS",								--unit name
			type = "C-130",									--aircraft type
			country = "USA",								--unit country
			livery = "US Air Force",						--unit livery
			base = "Laughlin",								--unit base
			skill = "Random",								--unit skill
			tasks = {										--unit tasks
				["Transport"] = true,
			},
			number = 2,
		},
	},
	["red"] = {												--side 2
		[1] = {
			name = "1./76.IAP",								--unit name
			type = "MiG-21Bis",								--aircraft type
			country = "Russia",								--unit country
			livery = {"VVS Metal", "VVS Grey", "VVS Camo"},	--unit livery
			base = "Tonopah AFB",							--unit base
			skill = "Random",								--unit skill
			tasks = {										--unit tasks
				["CAP"] = true,
				["Strike"] = true,
				["Fighter Sweep"] = true,
				["Intercept"] = true,
			},
			number = 12,
		},
		[2] = {
			name = "2./76.IAP",								--unit name
			type = "MiG-21Bis",								--aircraft type
			base = "Reserves",								--unit base
			tasks = {										--unit tasks
			},
			number = 24,
		},
		[3] = {
			inactive = true,								--unit is inactive
			name = "35.IAP",								--unit name
			type = "MiG-23MLD",								--aircraft type
			country = "Russia",								--unit country
			livery = {"af standard", "af standard-1", "af standard-2"},		--unit livery
			base = "Tonopah AFB",							--unit base
			skill = "Random",								--unit skill
			tasks = {										--unit tasks
				["CAP"] = true,
				["Intercept"] = true,
			},
			number = 12,
		},
		[4] = {
			inactive = true,								--unit is inactive
			name = "787.IAP",								--unit name
			type = "MiG-25PD",								--aircraft type
			country = "Russia",								--unit country
			livery = "af standard",							--unit livery
			base = "Tonopah AFB",							--unit base
			skill = "High",									--unit skill
			tasks = {										--unit tasks
				["Intercept"] = true,
			},
			number = 6,
		},
		[5] = {
			name = "I./JG-8",								--unit name
			type = "MiG-21Bis",								--aircraft type
			country = "Germany",							--unit country
			livery = "Germany East",						--unit livery
			base = "Creech AFB",							--unit base
			skill = "Random",								--unit skill
			tasks = {										--unit tasks
				["CAP"] = true,
				["Strike"] = true,
				["Fighter Sweep"] = true,
				["Intercept"] = true,
			},
			number = 12,
		},
		[6] = {
			name = "II./JG-8",								--unit name
			type = "MiG-21Bis",								--aircraft type
			country = "Germany",							--unit country
			livery = "Germany East",						--unit livery
			base = "Beatty",								--unit base
			skill = "Random",								--unit skill
			tasks = {										--unit tasks
				["CAP"] = true,
				["Strike"] = true,
				["Fighter Sweep"] = true,
				["Intercept"] = true,
			},
			number = 3,
		},
		[7] = {
			name = "III./JG-8",								--unit name
			type = "MiG-21Bis",								--aircraft type
			base = "Reserves",								--unit base
			tasks = {										--unit tasks
			},
			number = 9,
		},
		[8] = {
			name = "1./26.PLM",								--unit name
			type = "MiG-21Bis",								--aircraft type
			country = "Poland",								--unit country
			livery = "Poland - Metal",						--unit livery
			base = "Groom Lake AFB",						--unit base
			skill = "Random",								--unit skill
			tasks = {										--unit tasks
				["CAP"] = true,
				["Strike"] = true,
				["Fighter Sweep"] = true,
				["Intercept"] = true,
			},
			number = 12,
		},
		[9] = {
			name = "2./26.PLM",								--unit name
			type = "MiG-21Bis",								--aircraft type
			base = "Reserves",								--unit base
			tasks = {										--unit tasks
			},
			number = 12,
		},
		[10] = {
			name = "1./17.SLP",								--unit name
			type = "MiG-15bis",								--aircraft type
			country = "Czech Republic",						--unit country
			livery = "Czechoslovakia_Air Force",			--unit livery
			base = "Pahute Airstrip",						--unit base
			skill = "Random",								--unit skill
			tasks = {										--unit tasks
				["Strike"] = true,
				["Intercept"] = true,
			},
			number = 5,
		},
		[11] = {
			name = "2./17.SLP",								--unit name
			type = "MiG-15bis",								--aircraft type
			country = "Czech Republic",						--unit country
			livery = "Czechoslovakia_Air Force",			--unit livery
			base = "Lincoln",								--unit base
			skill = "Random",								--unit skill
			tasks = {										--unit tasks
				["Strike"] = true,
				["Intercept"] = true,
			},
			number = 6,
		},
		[12] = {
			name = "3./17.SLP",								--unit name
			type = "MiG-15bis",								--aircraft type
			base = "Reserves",								--unit base
			tasks = {										--unit tasks
			},
			number = 6,
		},
		[13] = {
			name = "1.OSAP",								--unit name
			type = "An-26B",								--aircraft type
			country = "Russia",								--unit country
			livery = {"Aeroflot", "RF Air Force"},			--unit livery
			base = "Tonopah Airport",						--unit base
			skill = "Random",								--unit skill
			tasks = {										--unit tasks
				["Transport"] = true,
			},
			number = 2,
		},
		[14] = {
			name = "2.OSAP",								--unit name
			type = "An-26B",								--aircraft type
			country = "Russia",								--unit country
			livery = {"Aeroflot", "RF Air Force"},			--unit livery
			base = "Tonopah AFB",							--unit base
			skill = "Random",								--unit skill
			tasks = {										--unit tasks
				["Transport"] = true,
			},
			number = 1,
		},
		[15] = {
			name = "3.OSAP",								--unit name
			type = "An-26B",								--aircraft type
			country = "Russia",								--unit country
			livery = {"Aeroflot", "RF Air Force"},			--unit livery
			base = "Groom Lake AFB",						--unit base
			skill = "Random",								--unit skill
			tasks = {										--unit tasks
				["Transport"] = true,
			},
			number = 1,
		},
	}
}