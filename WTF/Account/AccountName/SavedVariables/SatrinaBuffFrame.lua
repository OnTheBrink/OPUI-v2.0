
SBFDB = {
	["global"] = {
		["message"] = false,
		["version"] = 3.2,
		["combatUpdate"] = 0.2,
		["spellTTL"] = 30,
		["minor"] = 5,
	},
	["profileKeys"] = {
		["Opacus - Kel'Thuzad"] = "Opacus - Kel'Thuzad",
		["Ellence - Blade's Edge"] = "Ellence - Blade's Edge",
		["Letheliarah - Khadgar"] = "Letheliarah - Khadgar",
		["Rhodara - Blackhand"] = "Rhodara - Blackhand",
		["Instaque - Kel'Thuzad"] = "Instaque - Kel'Thuzad",
		["Melicelicity - Drenden"] = "Melicelicity - Drenden",
		["Halvinravis - Terenas"] = "Halvinravis - Terenas",
	},
	["profiles"] = {
		["Opacus - Kel'Thuzad"] = {
			["buttonFacade"] = {
				["Debuffs"] = {
					["gloss"] = 0,
					["colours"] = {
					},
					["backdrop"] = false,
					["skin"] = "Blizzard",
				},
				["Buffs"] = {
					["gloss"] = 0,
					["colours"] = {
					},
					["backdrop"] = false,
					["skin"] = "Blizzard",
				},
			},
			["frames"] = {
				{
					["general"] = {
						["frameName"] = "Buffs",
						["interactiveFrame"] = true,
						["buffs"] = true,
						["blacklist"] = true,
						["unit"] = "player",
					},
					["alwaysWarn"] = {
					},
					["layout"] = {
						["direction"] = "+",
						["point"] = {
							"TOPLEFT", -- [1]
							109.9559693713054, -- [2]
							-113.1384858323767, -- [3]
						},
						["opacity"] = 1,
						["rowCount"] = 2,
						["y"] = 14,
						["x"] = 14,
						["sort"] = "INDEX",
						["anchor"] = 1,
						["count"] = 20,
						["visibility"] = 1,
						["growth"] = 3,
					},
					["expiry"] = {
						["minimumDuration"] = 0,
						["sctColour"] = {
							["b"] = 0.1,
							["g"] = 1,
							["r"] = 0.1,
						},
						["warnAtTime"] = 30,
						["frame"] = "ChatFrame1",
						["sound"] = "None",
					},
					["count"] = {
						["y"] = -4,
						["x"] = 0,
						["justify"] = "CENTER",
						["frameLevel"] = 4,
						["fontSize"] = 18,
						["font"] = "BigNoodleTitling",
						["colour"] = {
							["b"] = 1,
							["g"] = 1,
							["r"] = 1,
						},
					},
					["list"] = {
					},
					["timer"] = {
						["fontSize"] = 16,
						["justify"] = "CENTER",
						["y"] = -15,
						["x"] = 0,
						["regularColour"] = {
							["b"] = 0,
							["g"] = 0.82,
							["r"] = 1,
						},
						["frameLevel"] = 4,
						["format"] = 2,
						["expiringColour"] = {
							["b"] = 0,
							["g"] = 0.82,
							["r"] = 1,
						},
						["font"] = "BigNoodleTitling",
					},
					["icon"] = {
						["y"] = 0,
						["x"] = 0,
						["frameLevel"] = 3,
						["opacity"] = 1,
						["size"] = 35,
					},
					["filters"] = {
					},
				}, -- [1]
			},
			["settings"] = {
			},
			["flow"] = {
			},
		},
		["Ellence - Blade's Edge"] = {
			["buttonFacade"] = {
				["Debuffs"] = {
					["gloss"] = 0,
					["colours"] = {
					},
					["backdrop"] = false,
					["skin"] = "Blizzard",
				},
				["Buffs"] = {
					["gloss"] = 0,
					["colours"] = {
					},
					["backdrop"] = false,
					["skin"] = "Blizzard",
				},
			},
			["settings"] = {
			},
			["frames"] = {
				{
					["general"] = {
						["frameName"] = "Buffs",
						["interactiveFrame"] = true,
						["buffs"] = true,
						["blacklist"] = true,
						["unit"] = "player",
					},
					["alwaysWarn"] = {
					},
					["layout"] = {
						["direction"] = "+",
						["point"] = {
							"TOPRIGHT", -- [1]
							-65, -- [2]
							-250, -- [3]
						},
						["opacity"] = 1,
						["rowCount"] = 20,
						["y"] = 0,
						["x"] = 0,
						["sort"] = "INDEX",
						["anchor"] = 1,
						["count"] = 20,
						["visibility"] = 1,
						["growth"] = 3,
					},
					["expiry"] = {
						["minimumDuration"] = 0,
						["sctColour"] = {
							["b"] = 0.1,
							["g"] = 1,
							["r"] = 0.1,
						},
						["warnAtTime"] = 30,
						["frame"] = "ChatFrame1",
						["sound"] = "None",
					},
					["count"] = {
						["y"] = -4,
						["x"] = 0,
						["justify"] = "CENTER",
						["frameLevel"] = 4,
						["fontSize"] = 10,
						["font"] = "Friz Quadrata TT",
						["colour"] = {
							["b"] = 1,
							["g"] = 1,
							["r"] = 1,
						},
					},
					["list"] = {
					},
					["timer"] = {
						["fontSize"] = 10,
						["justify"] = "CENTER",
						["y"] = -15,
						["x"] = 0,
						["regularColour"] = {
							["b"] = 0,
							["g"] = 0.82,
							["r"] = 1,
						},
						["frameLevel"] = 4,
						["format"] = 2,
						["expiringColour"] = {
							["b"] = 0,
							["g"] = 0.82,
							["r"] = 1,
						},
						["font"] = "Friz Quadrata TT",
					},
					["icon"] = {
						["y"] = 0,
						["x"] = 0,
						["frameLevel"] = 3,
						["opacity"] = 1,
						["size"] = 20,
					},
					["filters"] = {
					},
				}, -- [1]
				{
					["general"] = {
						["blacklist"] = true,
						["debuffs"] = true,
						["frameName"] = "Debuffs",
						["unit"] = "player",
					},
					["alwaysWarn"] = {
					},
					["layout"] = {
						["point"] = {
							"TOPRIGHT", -- [1]
							-110, -- [2]
							-250, -- [3]
						},
						["opacity"] = 1,
						["growth"] = 3,
						["y"] = 0,
						["x"] = 0,
						["sort"] = 1,
						["anchor"] = 1,
						["count"] = 16,
						["visibility"] = 1,
						["rowCount"] = 16,
					},
					["expiry"] = {
						["minimumDuration"] = 0,
						["sctColour"] = {
							["b"] = 0.1,
							["g"] = 1,
							["r"] = 0.1,
						},
						["warnAtTime"] = 30,
						["frame"] = "ChatFrame1",
						["sound"] = "None",
					},
					["count"] = {
						["y"] = -4,
						["x"] = 0,
						["justify"] = "CENTER",
						["frameLevel"] = 4,
						["fontSize"] = 10,
						["font"] = "Friz Quadrata TT",
						["colour"] = {
							["b"] = 1,
							["g"] = 1,
							["r"] = 1,
						},
					},
					["list"] = {
					},
					["timer"] = {
						["fontSize"] = 10,
						["justify"] = "CENTER",
						["y"] = -15,
						["x"] = 0,
						["regularColour"] = {
							["b"] = 0,
							["g"] = 0.82,
							["r"] = 1,
						},
						["frameLevel"] = 4,
						["format"] = 2,
						["expiringColour"] = {
							["b"] = 0,
							["g"] = 0.82,
							["r"] = 1,
						},
						["font"] = "Friz Quadrata TT",
					},
					["icon"] = {
						["y"] = 0,
						["x"] = 0,
						["frameLevel"] = 3,
						["opacity"] = 1,
						["size"] = 20,
					},
					["filters"] = {
					},
				}, -- [2]
			},
			["flow"] = {
			},
		},
		["Letheliarah - Khadgar"] = {
			["buttonFacade"] = {
				["Buffs"] = {
					["gloss"] = 0,
					["colours"] = {
					},
					["backdrop"] = false,
					["skin"] = "Blizzard",
				},
				["Debuffs"] = {
					["gloss"] = 0,
					["colours"] = {
					},
					["backdrop"] = false,
					["skin"] = "Blizzard",
				},
			},
			["flow"] = {
			},
			["frames"] = {
				{
					["general"] = {
						["frameName"] = "Buffs",
						["interactiveFrame"] = true,
						["buffs"] = true,
						["unit"] = "player",
						["blacklist"] = true,
					},
					["alwaysWarn"] = {
					},
					["layout"] = {
						["direction"] = "+",
						["point"] = {
							"TOPRIGHT", -- [1]
							-65, -- [2]
							-250, -- [3]
						},
						["opacity"] = 1,
						["rowCount"] = 20,
						["y"] = 0,
						["x"] = 0,
						["sort"] = "INDEX",
						["anchor"] = 1,
						["growth"] = 3,
						["visibility"] = 1,
						["count"] = 20,
					},
					["expiry"] = {
						["minimumDuration"] = 0,
						["sctColour"] = {
							["r"] = 0.1,
							["g"] = 1,
							["b"] = 0.1,
						},
						["warnAtTime"] = 30,
						["frame"] = "ChatFrame1",
						["sound"] = "None",
					},
					["count"] = {
						["y"] = -4,
						["x"] = 0,
						["justify"] = "CENTER",
						["frameLevel"] = 4,
						["font"] = "Friz Quadrata TT",
						["fontSize"] = 10,
						["colour"] = {
							["r"] = 1,
							["g"] = 1,
							["b"] = 1,
						},
					},
					["list"] = {
					},
					["timer"] = {
						["fontSize"] = 10,
						["justify"] = "CENTER",
						["y"] = -15,
						["x"] = 0,
						["regularColour"] = {
							["r"] = 1,
							["g"] = 0.82,
							["b"] = 0,
						},
						["font"] = "Friz Quadrata TT",
						["format"] = 2,
						["expiringColour"] = {
							["r"] = 1,
							["g"] = 0.82,
							["b"] = 0,
						},
						["frameLevel"] = 4,
					},
					["icon"] = {
						["y"] = 0,
						["x"] = 0,
						["frameLevel"] = 3,
						["opacity"] = 1,
						["size"] = 20,
					},
					["filters"] = {
					},
				}, -- [1]
				{
					["general"] = {
						["unit"] = "player",
						["debuffs"] = true,
						["frameName"] = "Debuffs",
						["blacklist"] = true,
					},
					["alwaysWarn"] = {
					},
					["layout"] = {
						["point"] = {
							"TOPRIGHT", -- [1]
							-110, -- [2]
							-250, -- [3]
						},
						["opacity"] = 1,
						["growth"] = 3,
						["y"] = 0,
						["x"] = 0,
						["sort"] = 1,
						["anchor"] = 1,
						["rowCount"] = 16,
						["visibility"] = 1,
						["count"] = 16,
					},
					["expiry"] = {
						["minimumDuration"] = 0,
						["sctColour"] = {
							["r"] = 0.1,
							["g"] = 1,
							["b"] = 0.1,
						},
						["warnAtTime"] = 30,
						["frame"] = "ChatFrame1",
						["sound"] = "None",
					},
					["count"] = {
						["y"] = -4,
						["x"] = 0,
						["justify"] = "CENTER",
						["frameLevel"] = 4,
						["font"] = "Friz Quadrata TT",
						["fontSize"] = 10,
						["colour"] = {
							["r"] = 1,
							["g"] = 1,
							["b"] = 1,
						},
					},
					["list"] = {
					},
					["timer"] = {
						["fontSize"] = 10,
						["justify"] = "CENTER",
						["y"] = -15,
						["x"] = 0,
						["regularColour"] = {
							["r"] = 1,
							["g"] = 0.82,
							["b"] = 0,
						},
						["font"] = "Friz Quadrata TT",
						["format"] = 2,
						["expiringColour"] = {
							["r"] = 1,
							["g"] = 0.82,
							["b"] = 0,
						},
						["frameLevel"] = 4,
					},
					["icon"] = {
						["y"] = 0,
						["x"] = 0,
						["frameLevel"] = 3,
						["opacity"] = 1,
						["size"] = 20,
					},
					["filters"] = {
					},
				}, -- [2]
			},
			["settings"] = {
			},
		},
		["Rhodara - Blackhand"] = {
			["buttonFacade"] = {
				["Debuffs"] = {
					["gloss"] = 0,
					["colours"] = {
					},
					["backdrop"] = false,
					["skin"] = "Blizzard",
				},
				["Buffs"] = {
					["gloss"] = 0,
					["colours"] = {
					},
					["backdrop"] = false,
					["skin"] = "Blizzard",
				},
			},
			["settings"] = {
			},
			["frames"] = {
				{
					["general"] = {
						["frameName"] = "Buffs",
						["interactiveFrame"] = true,
						["buffs"] = true,
						["blacklist"] = true,
						["unit"] = "player",
					},
					["alwaysWarn"] = {
					},
					["layout"] = {
						["direction"] = "+",
						["point"] = {
							"TOPRIGHT", -- [1]
							-65, -- [2]
							-250, -- [3]
						},
						["opacity"] = 1,
						["rowCount"] = 20,
						["y"] = 0,
						["x"] = 0,
						["sort"] = "INDEX",
						["anchor"] = 1,
						["count"] = 20,
						["visibility"] = 1,
						["growth"] = 3,
					},
					["expiry"] = {
						["minimumDuration"] = 0,
						["sctColour"] = {
							["b"] = 0.1,
							["g"] = 1,
							["r"] = 0.1,
						},
						["warnAtTime"] = 30,
						["frame"] = "ChatFrame1",
						["sound"] = "None",
					},
					["count"] = {
						["y"] = -4,
						["x"] = 0,
						["justify"] = "CENTER",
						["frameLevel"] = 4,
						["fontSize"] = 10,
						["font"] = "Friz Quadrata TT",
						["colour"] = {
							["b"] = 1,
							["g"] = 1,
							["r"] = 1,
						},
					},
					["list"] = {
					},
					["timer"] = {
						["fontSize"] = 10,
						["justify"] = "CENTER",
						["y"] = -15,
						["x"] = 0,
						["regularColour"] = {
							["b"] = 0,
							["g"] = 0.82,
							["r"] = 1,
						},
						["frameLevel"] = 4,
						["format"] = 2,
						["expiringColour"] = {
							["b"] = 0,
							["g"] = 0.82,
							["r"] = 1,
						},
						["font"] = "Friz Quadrata TT",
					},
					["icon"] = {
						["y"] = 0,
						["x"] = 0,
						["frameLevel"] = 3,
						["opacity"] = 1,
						["size"] = 20,
					},
					["filters"] = {
					},
				}, -- [1]
				{
					["general"] = {
						["blacklist"] = true,
						["debuffs"] = true,
						["frameName"] = "Debuffs",
						["unit"] = "player",
					},
					["alwaysWarn"] = {
					},
					["layout"] = {
						["point"] = {
							"TOPRIGHT", -- [1]
							-110, -- [2]
							-250, -- [3]
						},
						["opacity"] = 1,
						["growth"] = 3,
						["y"] = 0,
						["x"] = 0,
						["sort"] = 1,
						["anchor"] = 1,
						["count"] = 16,
						["visibility"] = 1,
						["rowCount"] = 16,
					},
					["expiry"] = {
						["minimumDuration"] = 0,
						["sctColour"] = {
							["b"] = 0.1,
							["g"] = 1,
							["r"] = 0.1,
						},
						["warnAtTime"] = 30,
						["frame"] = "ChatFrame1",
						["sound"] = "None",
					},
					["count"] = {
						["y"] = -4,
						["x"] = 0,
						["justify"] = "CENTER",
						["frameLevel"] = 4,
						["fontSize"] = 10,
						["font"] = "Friz Quadrata TT",
						["colour"] = {
							["b"] = 1,
							["g"] = 1,
							["r"] = 1,
						},
					},
					["list"] = {
					},
					["timer"] = {
						["fontSize"] = 10,
						["justify"] = "CENTER",
						["y"] = -15,
						["x"] = 0,
						["regularColour"] = {
							["b"] = 0,
							["g"] = 0.82,
							["r"] = 1,
						},
						["frameLevel"] = 4,
						["format"] = 2,
						["expiringColour"] = {
							["b"] = 0,
							["g"] = 0.82,
							["r"] = 1,
						},
						["font"] = "Friz Quadrata TT",
					},
					["icon"] = {
						["y"] = 0,
						["x"] = 0,
						["frameLevel"] = 3,
						["opacity"] = 1,
						["size"] = 20,
					},
					["filters"] = {
					},
				}, -- [2]
			},
			["flow"] = {
			},
		},
		["Instaque - Kel'Thuzad"] = {
			["buttonFacade"] = {
				["Buffs"] = {
					["gloss"] = 0,
					["colours"] = {
					},
					["backdrop"] = false,
					["skin"] = "Blizzard",
				},
				["Debuffs"] = {
					["gloss"] = 0,
					["colours"] = {
					},
					["backdrop"] = false,
					["skin"] = "Blizzard",
				},
			},
			["flow"] = {
			},
			["settings"] = {
			},
			["frames"] = {
				{
					["general"] = {
						["frameName"] = "Buffs",
						["interactiveFrame"] = true,
						["buffs"] = true,
						["unit"] = "player",
						["blacklist"] = true,
					},
					["alwaysWarn"] = {
					},
					["layout"] = {
						["direction"] = "+",
						["point"] = {
							"TOPRIGHT", -- [1]
							-65, -- [2]
							-250, -- [3]
						},
						["opacity"] = 1,
						["rowCount"] = 20,
						["y"] = 0,
						["x"] = 0,
						["sort"] = "INDEX",
						["anchor"] = 1,
						["growth"] = 3,
						["visibility"] = 1,
						["count"] = 20,
					},
					["expiry"] = {
						["minimumDuration"] = 0,
						["sctColour"] = {
							["r"] = 0.1,
							["g"] = 1,
							["b"] = 0.1,
						},
						["warnAtTime"] = 30,
						["frame"] = "ChatFrame1",
						["sound"] = "None",
					},
					["count"] = {
						["y"] = -4,
						["x"] = 0,
						["justify"] = "CENTER",
						["frameLevel"] = 4,
						["font"] = "Friz Quadrata TT",
						["fontSize"] = 10,
						["colour"] = {
							["r"] = 1,
							["g"] = 1,
							["b"] = 1,
						},
					},
					["list"] = {
					},
					["timer"] = {
						["fontSize"] = 10,
						["justify"] = "CENTER",
						["y"] = -15,
						["x"] = 0,
						["regularColour"] = {
							["r"] = 1,
							["g"] = 0.82,
							["b"] = 0,
						},
						["font"] = "Friz Quadrata TT",
						["format"] = 2,
						["expiringColour"] = {
							["r"] = 1,
							["g"] = 0.82,
							["b"] = 0,
						},
						["frameLevel"] = 4,
					},
					["icon"] = {
						["y"] = 0,
						["x"] = 0,
						["frameLevel"] = 3,
						["opacity"] = 1,
						["size"] = 20,
					},
					["filters"] = {
					},
				}, -- [1]
				{
					["general"] = {
						["unit"] = "player",
						["debuffs"] = true,
						["frameName"] = "Debuffs",
						["blacklist"] = true,
					},
					["alwaysWarn"] = {
					},
					["layout"] = {
						["point"] = {
							"TOPRIGHT", -- [1]
							-110, -- [2]
							-250, -- [3]
						},
						["opacity"] = 1,
						["growth"] = 3,
						["y"] = 0,
						["x"] = 0,
						["sort"] = 1,
						["anchor"] = 1,
						["rowCount"] = 16,
						["visibility"] = 1,
						["count"] = 16,
					},
					["expiry"] = {
						["minimumDuration"] = 0,
						["sctColour"] = {
							["r"] = 0.1,
							["g"] = 1,
							["b"] = 0.1,
						},
						["warnAtTime"] = 30,
						["frame"] = "ChatFrame1",
						["sound"] = "None",
					},
					["count"] = {
						["y"] = -4,
						["x"] = 0,
						["justify"] = "CENTER",
						["frameLevel"] = 4,
						["font"] = "Friz Quadrata TT",
						["fontSize"] = 10,
						["colour"] = {
							["r"] = 1,
							["g"] = 1,
							["b"] = 1,
						},
					},
					["list"] = {
					},
					["timer"] = {
						["fontSize"] = 10,
						["justify"] = "CENTER",
						["y"] = -15,
						["x"] = 0,
						["regularColour"] = {
							["r"] = 1,
							["g"] = 0.82,
							["b"] = 0,
						},
						["font"] = "Friz Quadrata TT",
						["format"] = 2,
						["expiringColour"] = {
							["r"] = 1,
							["g"] = 0.82,
							["b"] = 0,
						},
						["frameLevel"] = 4,
					},
					["icon"] = {
						["y"] = 0,
						["x"] = 0,
						["frameLevel"] = 3,
						["opacity"] = 1,
						["size"] = 20,
					},
					["filters"] = {
					},
				}, -- [2]
			},
		},
		["Melicelicity - Drenden"] = {
			["buttonFacade"] = {
				["Buffs"] = {
					["gloss"] = 0,
					["colours"] = {
					},
					["backdrop"] = false,
					["skin"] = "Blizzard",
				},
				["Debuffs"] = {
					["gloss"] = 0,
					["colours"] = {
					},
					["backdrop"] = false,
					["skin"] = "Blizzard",
				},
			},
			["flow"] = {
			},
			["settings"] = {
			},
			["frames"] = {
				{
					["general"] = {
						["frameName"] = "Buffs",
						["interactiveFrame"] = true,
						["buffs"] = true,
						["unit"] = "player",
						["blacklist"] = true,
					},
					["alwaysWarn"] = {
					},
					["layout"] = {
						["direction"] = "+",
						["point"] = {
							"TOPRIGHT", -- [1]
							-65, -- [2]
							-250, -- [3]
						},
						["opacity"] = 1,
						["rowCount"] = 20,
						["y"] = 0,
						["x"] = 0,
						["sort"] = "INDEX",
						["anchor"] = 1,
						["growth"] = 3,
						["visibility"] = 1,
						["count"] = 20,
					},
					["expiry"] = {
						["minimumDuration"] = 0,
						["sctColour"] = {
							["r"] = 0.1,
							["g"] = 1,
							["b"] = 0.1,
						},
						["warnAtTime"] = 30,
						["frame"] = "ChatFrame1",
						["sound"] = "None",
					},
					["count"] = {
						["y"] = -4,
						["x"] = 0,
						["justify"] = "CENTER",
						["frameLevel"] = 4,
						["font"] = "Friz Quadrata TT",
						["fontSize"] = 10,
						["colour"] = {
							["r"] = 1,
							["g"] = 1,
							["b"] = 1,
						},
					},
					["list"] = {
					},
					["timer"] = {
						["fontSize"] = 10,
						["justify"] = "CENTER",
						["y"] = -15,
						["x"] = 0,
						["regularColour"] = {
							["r"] = 1,
							["g"] = 0.82,
							["b"] = 0,
						},
						["font"] = "Friz Quadrata TT",
						["format"] = 2,
						["expiringColour"] = {
							["r"] = 1,
							["g"] = 0.82,
							["b"] = 0,
						},
						["frameLevel"] = 4,
					},
					["icon"] = {
						["y"] = 0,
						["x"] = 0,
						["frameLevel"] = 3,
						["opacity"] = 1,
						["size"] = 20,
					},
					["filters"] = {
					},
				}, -- [1]
				{
					["general"] = {
						["unit"] = "player",
						["debuffs"] = true,
						["frameName"] = "Debuffs",
						["blacklist"] = true,
					},
					["alwaysWarn"] = {
					},
					["layout"] = {
						["point"] = {
							"TOPRIGHT", -- [1]
							-110, -- [2]
							-250, -- [3]
						},
						["opacity"] = 1,
						["growth"] = 3,
						["y"] = 0,
						["x"] = 0,
						["sort"] = 1,
						["anchor"] = 1,
						["rowCount"] = 16,
						["visibility"] = 1,
						["count"] = 16,
					},
					["expiry"] = {
						["minimumDuration"] = 0,
						["sctColour"] = {
							["r"] = 0.1,
							["g"] = 1,
							["b"] = 0.1,
						},
						["warnAtTime"] = 30,
						["frame"] = "ChatFrame1",
						["sound"] = "None",
					},
					["count"] = {
						["y"] = -4,
						["x"] = 0,
						["justify"] = "CENTER",
						["frameLevel"] = 4,
						["font"] = "Friz Quadrata TT",
						["fontSize"] = 10,
						["colour"] = {
							["r"] = 1,
							["g"] = 1,
							["b"] = 1,
						},
					},
					["list"] = {
					},
					["timer"] = {
						["fontSize"] = 10,
						["justify"] = "CENTER",
						["y"] = -15,
						["x"] = 0,
						["regularColour"] = {
							["r"] = 1,
							["g"] = 0.82,
							["b"] = 0,
						},
						["font"] = "Friz Quadrata TT",
						["format"] = 2,
						["expiringColour"] = {
							["r"] = 1,
							["g"] = 0.82,
							["b"] = 0,
						},
						["frameLevel"] = 4,
					},
					["icon"] = {
						["y"] = 0,
						["x"] = 0,
						["frameLevel"] = 3,
						["opacity"] = 1,
						["size"] = 20,
					},
					["filters"] = {
					},
				}, -- [2]
			},
		},
		["Halvinravis - Terenas"] = {
			["buttonFacade"] = {
				["Debuffs"] = {
					["gloss"] = 0,
					["colours"] = {
					},
					["backdrop"] = false,
					["skin"] = "Blizzard",
				},
				["Buffs"] = {
					["gloss"] = 0,
					["colours"] = {
					},
					["backdrop"] = false,
					["skin"] = "Blizzard",
				},
			},
			["frames"] = {
				{
					["general"] = {
						["frameName"] = "Buffs",
						["interactiveFrame"] = true,
						["buffs"] = true,
						["blacklist"] = true,
						["unit"] = "player",
					},
					["alwaysWarn"] = {
					},
					["layout"] = {
						["direction"] = "+",
						["point"] = {
							"TOPRIGHT", -- [1]
							-65, -- [2]
							-250, -- [3]
						},
						["opacity"] = 1,
						["rowCount"] = 20,
						["y"] = 0,
						["x"] = 0,
						["sort"] = "INDEX",
						["anchor"] = 1,
						["count"] = 20,
						["visibility"] = 1,
						["growth"] = 3,
					},
					["expiry"] = {
						["minimumDuration"] = 0,
						["sctColour"] = {
							["b"] = 0.1,
							["g"] = 1,
							["r"] = 0.1,
						},
						["warnAtTime"] = 30,
						["frame"] = "ChatFrame1",
						["sound"] = "None",
					},
					["count"] = {
						["y"] = -4,
						["x"] = 0,
						["justify"] = "CENTER",
						["frameLevel"] = 4,
						["fontSize"] = 10,
						["font"] = "Friz Quadrata TT",
						["colour"] = {
							["b"] = 1,
							["g"] = 1,
							["r"] = 1,
						},
					},
					["list"] = {
					},
					["timer"] = {
						["fontSize"] = 10,
						["justify"] = "CENTER",
						["y"] = -15,
						["x"] = 0,
						["regularColour"] = {
							["b"] = 0,
							["g"] = 0.82,
							["r"] = 1,
						},
						["frameLevel"] = 4,
						["format"] = 2,
						["expiringColour"] = {
							["b"] = 0,
							["g"] = 0.82,
							["r"] = 1,
						},
						["font"] = "Friz Quadrata TT",
					},
					["icon"] = {
						["y"] = 0,
						["x"] = 0,
						["frameLevel"] = 3,
						["opacity"] = 1,
						["size"] = 20,
					},
					["filters"] = {
					},
				}, -- [1]
				{
					["general"] = {
						["blacklist"] = true,
						["debuffs"] = true,
						["frameName"] = "Debuffs",
						["unit"] = "player",
					},
					["alwaysWarn"] = {
					},
					["layout"] = {
						["point"] = {
							"TOPRIGHT", -- [1]
							-110, -- [2]
							-250, -- [3]
						},
						["opacity"] = 1,
						["growth"] = 3,
						["y"] = 0,
						["x"] = 0,
						["sort"] = 1,
						["anchor"] = 1,
						["count"] = 16,
						["visibility"] = 1,
						["rowCount"] = 16,
					},
					["expiry"] = {
						["minimumDuration"] = 0,
						["sctColour"] = {
							["b"] = 0.1,
							["g"] = 1,
							["r"] = 0.1,
						},
						["warnAtTime"] = 30,
						["frame"] = "ChatFrame1",
						["sound"] = "None",
					},
					["count"] = {
						["y"] = -4,
						["x"] = 0,
						["justify"] = "CENTER",
						["frameLevel"] = 4,
						["fontSize"] = 10,
						["font"] = "Friz Quadrata TT",
						["colour"] = {
							["b"] = 1,
							["g"] = 1,
							["r"] = 1,
						},
					},
					["list"] = {
					},
					["timer"] = {
						["fontSize"] = 10,
						["justify"] = "CENTER",
						["y"] = -15,
						["x"] = 0,
						["regularColour"] = {
							["b"] = 0,
							["g"] = 0.82,
							["r"] = 1,
						},
						["frameLevel"] = 4,
						["format"] = 2,
						["expiringColour"] = {
							["b"] = 0,
							["g"] = 0.82,
							["r"] = 1,
						},
						["font"] = "Friz Quadrata TT",
					},
					["icon"] = {
						["y"] = 0,
						["x"] = 0,
						["frameLevel"] = 3,
						["opacity"] = 1,
						["size"] = 20,
					},
					["filters"] = {
					},
				}, -- [2]
			},
			["settings"] = {
			},
			["flow"] = {
			},
		},
	},
}
