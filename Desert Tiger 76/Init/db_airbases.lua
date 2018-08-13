db_airbases = {
	['Nellis AFB'] = {
		x =	-397971,
		y = -17639.5,
		elevation = 563,
		airdromeId = 4,
		ATC_frequency = "327.000",
	},
	['McCarran'] = {
		x =	-416083,
		y = -27121.1,
		elevation = 664,
		airdromeId = 3,
		ATC_frequency = "257.800",
	},
	['Creech AFB'] = {
		x =	-359732,
		y = -74970.9,
		elevation = 953,
		airdromeId = 1,
		ATC_frequency = "118.300",
	},
	['Groom Lake AFB'] = {
		x =	-288694,
		y = -87414.2,
		elevation = 1370,
		airdromeId = 2,
		ATC_frequency = "118.000",
	},
	['Tonopah AFB'] = {
		x =	-225679.28125,
		y = -174488.90625,
		elevation = 1687,
		airdromeId = 18,
		ATC_frequency = "124.750",
	},
	['Tonopah Airport'] = {
		x =	-197283,
		y = -201303,
		elevation = 1643,
		airdromeId = 17,
		ATC_frequency = "000.000",
	},
	['Pahute Airstrip'] = {
		x =	-303620,
		y = -132938,
		elevation = 1542,
		airdromeId = 16,
		ATC_frequency = "000.000",
	},
	['Beatty'] = {
		x =	-330554,
		y = -174959,
		elevation = 968,
		airdromeId = 5,
		ATC_frequency = "000.000",
	},
	['Lincoln'] = {
		x =	-224143.265625,
		y = 33338.26953125,
		elevation = 1468,
		airdromeId = 11,
		ATC_frequency = "000.000",
	},
	['Laughlin'] = {
		x =	-516946,
		y = 28306.3,
		elevation = 200,
		airdromeId = 10,
		ATC_frequency = "250.000",
	},
	['Reserves'] = {						--dummy airbase to place virtual reserves
		inactive = true,
		x =	9999999999,						--position far away will make all range checks negative
		y = 9999999999,
		elevation = 0,
		airdromeId = nil,					--no id makes sure that no static aircraft are to be placed at this air base
		ATC_frequency = "0",
	},
}
	