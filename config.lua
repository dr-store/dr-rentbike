-- Configuration
Config = {}

-- Geral settings
Config.RentBike = {
	NPC = 'u_m_m_bikehire_01', -- https://docs.fivem.net/docs/game-references/ped-models/
	Bikes = { -- for models and images you can search in https://docs.fivem.net/docs/game-references/vehicle-models/
		{ BikeName = 'Bmx', SpawnCode = 'bmx', Price = 30, image = 'https://docs.fivem.net/vehicles/bmx.webp'},
		{ BikeName = 'Scorcher', SpawnCode = 'scorcher', Price = 35, image = 'https://docs.fivem.net/vehicles/scorcher.webp'},
		{ BikeName = 'Cruiser', SpawnCode = 'cruiser', Price = 20, image = 'https://docs.fivem.net/vehicles/cruiser.webp'},
		{ BikeName = 'Fixter', SpawnCode = 'fixter', Price = 25, image = 'https://docs.fivem.net/vehicles/fixter.webp'},
		{ BikeName = 'Yellow Tribike', SpawnCode = 'tribike', Price = 50, image = 'https://docs.fivem.net/vehicles/tribike.webp'},
		{ BikeName = 'Red Tribike', SpawnCode = 'tribike2', Price = 50, image = 'https://docs.fivem.net/vehicles/tribike2.webp'},
		{ BikeName = 'Blue Tribike', SpawnCode = 'tribike3', Price = 50, image = 'https://docs.fivem.net/vehicles/tribike3.webp'},
	},

	Blip = {
		Sprite = 859, -- https://docs.fivem.net/docs/game-references/blips/
		Display = 4, -- https://docs.fivem.net/natives/?_0x9029B2F3DA924928
		Scale = 0.8, -- Scale
		Colour = 2, -- https://docs.fivem.net/docs/game-references/blips/#blip-colors
	},

	Locs = {
		{ Pos = vector4(165.7590, -1007.2192, 29.4253, 160.3173), Spawn = vector4(166.9693, -1009.1909, 29.3086, 117.2778)},
		{ Pos = vector4(-39.8542, -1118.0227, 26.4340, 50.0225), Spawn = vector4(-41.7207, -1116.9415, 26.4342, 2.6224)},
		{ Pos = vector4(-240.7918, -991.4285, 29.2883, 251.3149), Spawn = vector4(-240.3467, -989.7112, 29.2881, 248.4162)},
		{ Pos = vector4(-1106.0336, -1695.2134, 4.3733, 311.3956), Spawn = vector4(-1106.7390, -1693.8795, 4.3738, 304.4841)},
		{ Pos = vector4(-1637.4506, -980.3739, 13.0174, 227.2257), Spawn = vector4(-1635.5736, -979.5153, 13.0174, 230.2151)},
		{ Pos = vector4(276.9984, -613.5377, 43.1731, 339.0952), Spawn = vector4(278.5222, -612.3586, 43.2054, 352.9240)},
		{ Pos = vector4(275.4533, -348.0639, 45.1768, 154.1771), Spawn = vector4(277.3789, -349.2173, 45.1769, 160.3576)},
		{ Pos = vector4(310.3843, -230.5283, 54.0813, 157.5913), Spawn = vector4(308.1812, -230.7082, 54.0660, 157.7618)},
		{ Pos = vector4(920.0906, 41.7449, 81.0961, 55.5586), Spawn = vector4(916.6373, 40.0076, 80.8994, 21.2077)},
		{ Pos = vector4(1852.8176, 2595.3730, 45.6724, 268.9187), Spawn = vector4(1853.5375, 2593.3445, 45.6724, 270.8260)},
		{ Pos = vector4(1907.2367, 3709.9973, 32.7230, 214.8842), Spawn = vector4(1909.8726, 3711.1321, 32.7170, 203.9303)},
		{ Pos = vector4(2001.6658, 3050.8789, 47.2142, 340.9514), Spawn = vector4(2003.3229, 3050.3513, 47.2141, 340.2729)},
		{ Pos = vector4(1673.2913, 4957.8892, 42.3460, 226.3299), Spawn = vector4(1675.7246, 4957.9810, 42.3305, 238.3931)},
		{ Pos = vector4(99.7884, 6609.1450, 31.8233, 227.4849), Spawn = vector4(101.6921, 6607.4458, 31.8551, 310.2171)},
		{ Pos = vector4(-335.1148, 6105.1602, 31.4466, 228.4797), Spawn = vector4(-332.2170, 6107.6445, 31.4706, 225.0862)},
		{ Pos = vector4(-2202.7510, 4275.5684, 48.4423, 143.2274), Spawn = vector4(-2204.7271, 4276.0952, 48.3727, 149.5704)},
		{ Pos = vector4(-2560.9163, 2315.1655, 33.2160, 7.6648), Spawn = vector4(-2559.5928, 2316.7507, 33.2158, 29.9608)},
		{ Pos = vector4(-1135.7245, 2683.5049, 18.4452, 132.5723), Spawn = vector4(-1137.0610, 2685.0020, 18.4854, 135.2586)},
		{ Pos = vector4(265.9904, 2598.2615, 44.8369, 17.2186), Spawn = vector4(267.9808, 2599.6455, 44.6933, 355.4637)},
		{ Pos = vector4(605.7256, 2745.6182, 42.0062, 185.6914), Spawn = vector4(607.1396, 2744.4924, 41.9933, 194.5883)},
		{ Pos = vector4(1213.3782, 2643.3118, 37.8099, 25.4006), Spawn = vector4(1214.7090, 2644.8833, 37.8104, 66.0143)},
		{ Pos = vector4(1737.8424, 3709.2605, 34.1356, 21.7678), Spawn = vector4(1739.5686, 3711.4302, 34.1512, 21.5580)},
		{ Pos = vector4(419.9789, -1624.2330, 29.2916, 318.7695), Spawn = vector4(422.4047, -1624.1372, 29.2916, 324.7846)},
		{ Pos = vector4(217.0083, -814.5940, 30.6349, 157.6822), Spawn = vector4(215.2703, -815.7391, 30.6646, 170.1480)},
		{ Pos = vector4(-155.4582, -1358.4990, 29.7925, 248.8507), Spawn = vector4(-156.1060, -1360.4747, 29.7522, 270.4778)},
		{ Pos = vector4(222.1712, -1393.4539, 30.5875, 318.5134), Spawn = vector4(224.3086, -1391.7078, 30.5159, 274.3879)},
		{ Pos = vector4(818.0679, -1040.7955, 26.7508, 359.6967), Spawn = vector4(816.6779, -1039.9237, 26.7508, 11.0586)},
		{ Pos = vector4(532.0668, -133.9470, 60.0236, 183.3801), Spawn = vector4(533.2834, -134.1848, 59.9630, 188.2329)},
		{ Pos = vector4(363.5473, 302.0034, 103.5502, 353.3733), Spawn = vector4(362.3366, 303.2270, 103.5840, 315.6982)},
		{ Pos = vector4(78.2712, 14.2191, 69.0404, 68.0838), Spawn = vector4(78.2467, 15.9243, 69.0891, 71.6505)},
		{ Pos = vector4(-504.9420, -254.7535, 35.6543, 202.7313), Spawn = vector4(-502.9429, -254.5201, 35.6805, 195.2935)},
		{ Pos = vector4(-599.3942, -1097.1731, 22.1780, 314.5945), Spawn = vector4(-597.6050, -1097.0253, 22.1780, 314.2701)},
		{ Pos = vector4(-704.1534, -1398.3362, 5.4953, 137.3685), Spawn = vector4(-705.7652, -1396.9178, 5.1504, 143.7024)},
		{ Pos = vector4(-1578.9041, -885.1082, 10.0628, 140.0773), Spawn = vector4(-1580.1222, -886.5945, 10.0183, 143.0516)},
		{ Pos = vector4(-1508.2177, -421.2505, 35.5919, 135.8203), Spawn = vector4(-1507.7791, -424.5813, 35.4422, 78.9487)},
		{ Pos = vector4(-1279.8906, -1138.7904, 6.4712, 115.6185), Spawn = vector4(-1282.1461, -1139.2972, 6.4365, 65.4834)},
		{ Pos = vector4(-1379.3163, 10.5431, 53.4935, 132.6986), Spawn = vector4(-1380.8781, 9.2531, 53.4896, 119.9184)},
		{ Pos = vector4(109.4618, -1409.5924, 29.3859, 120.3070), Spawn = vector4(109.4426, -1411.3422, 29.4284, 118.2937)},
		{ Pos = vector4(-73.8207, -1832.8019, 26.9434, 233.9878), Spawn = vector4(-73.9091, -1834.6614, 26.9454, 277.0746)},
		{ Pos = vector4(-342.1549, -1474.9492, 30.7495, 273.4970), Spawn = vector4(-341.6623, -1476.4076, 30.7514, 266.1152)},
		{ Pos = vector4(-1038.9482, -2730.8513, 20.2160, 242.4398), Spawn = vector4(-1037.8154, -2728.8965, 20.0299, 237.7503)},
		{ Pos = vector4(395.3254, -1925.6465, 24.7757, 40.6034), Spawn = vector4(393.7868, -1925.2975, 24.7634, 347.7155)},
		{ Pos = vector4(642.0010, 260.5723, 103.2956, 63.2425), Spawn = vector4(640.3188, 259.4629, 103.2999, 48.3648)},
		{ Pos = vector4(816.0679, -279.2564, 66.4626, 18.3868), Spawn = vector4(817.4296, -278.9249, 66.4626, 14.3368)},
		{ Pos = vector4(1303.4578, -1656.7085, 51.1126, 304.7049), Spawn = vector4(1305.2189, -1657.7628, 51.1880, 321.9706)},
		{ Pos = vector4(-512.7408, 276.9668, 83.2453, 132.8075), Spawn = vector4(-514.1169, 278.0606, 83.2075, 151.5184)},
		{ Pos = vector4(-800.3408, -923.1349, 18.7773, 179.0121), Spawn = vector4(-801.7850, -923.2791, 18.7737, 186.2584)},
		{ Pos = vector4(-1176.6338, -869.1465, 14.0591, 36.7489), Spawn = vector4(-1176.2432, -868.0278, 14.0689, 25.2453)},
		{ Pos = vector4(-1087.8149, -262.5882, 37.7895, 186.1179), Spawn = vector4(-1089.4231, -262.6110, 37.7828, 157.6800)},
		{ Pos = vector4(827.9896, -2135.0164, 29.2884, 0.9804), Spawn = vector4(827.9745, -2133.8267, 29.2884, 58.6555)},

	},

	Texts = {
		MarkerText = 'Bike Rental', -- Marker Text
		TalkText = 'Rent a Bike', -- Label Text when using ox_target
		NotEnoughMoney = 'You do not have enough money to rent this bike.', -- Displayed when the player do not have the enough money to rent a bike
		BlockedSpawn = 'There is a something bloking the renting area.', -- Displayed when the spawn area is bloked by something
		RentedBike = 'You rented a Bike', -- Message to appear after renting bike
	}
}