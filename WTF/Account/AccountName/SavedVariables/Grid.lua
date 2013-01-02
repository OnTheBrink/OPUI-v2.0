
GridDB = {
	["namespaces"] = {
		["GridFrame"] = {
			["profiles"] = {
				["Default"] = {
					["fontSize"] = 16,
					["statusmap"] = {
						["healingBar"] = {
							["alert_lowMana"] = true,
						},
						["manabar"] = {
							["unit_mana"] = true,
						},
					},
					["fontOutline"] = "OUTLINE",
					["iconSize"] = 20,
					["texture"] = "Glamour4",
					["frameHeight"] = 30,
					["font"] = "BigNoodleTitling",
					["orientation"] = "HORIZONTAL",
					["frameWidth"] = 75,
				},
			},
		},
		["GridStatusVehicle"] = {
		},
		["GridRoster"] = {
		},
		["GridStatusName"] = {
		},
		["GridMBStatus"] = {
		},
		["GridStatusTarget"] = {
		},
		["GridMBFrame"] = {
			["profiles"] = {
				["Default"] = {
					["side"] = "Bottom",
					["size"] = 0.1,
				},
			},
		},
		["LibDualSpec-1.0"] = {
		},
		["GridStatusVoiceComm"] = {
		},
		["GridStatusRange"] = {
			["profiles"] = {
				["Default"] = {
					["alert_range_10"] = {
						["enable"] = false,
						["text"] = "10 yards",
						["color"] = {
							["a"] = 0.8181818181818181,
							["r"] = 0.1,
							["g"] = 0.2,
							["b"] = 0.3,
						},
						["priority"] = 81,
						["range"] = false,
						["desc"] = "More than 10 yards away",
					},
					["alert_range_38"] = {
						["enable"] = true,
						["text"] = "38 yards",
						["color"] = {
							["a"] = 0.3090909090909091,
							["r"] = 0.38,
							["g"] = 0.76,
							["b"] = 0.14,
						},
						["priority"] = 84,
						["range"] = false,
						["desc"] = "More than 38 yards away",
					},
					["alert_range_25"] = {
						["enable"] = true,
						["text"] = "25 yards",
						["color"] = {
							["a"] = 0.5454545454545454,
							["r"] = 0.25,
							["g"] = 0.5,
							["b"] = 0.75,
						},
						["priority"] = 82,
						["range"] = false,
						["desc"] = "More than 25 yards away",
					},
					["alert_range_40"] = {
						["enable"] = true,
						["text"] = "40 yards",
						["color"] = {
							["a"] = 0.2727272727272727,
							["r"] = 0.4,
							["g"] = 0.8,
							["b"] = 0.2,
						},
						["priority"] = 84,
						["range"] = false,
						["desc"] = "More than 40 yards away",
					},
					["alert_range_20"] = {
						["enable"] = true,
						["text"] = "20 yards",
						["color"] = {
							["a"] = 0.6363636363636364,
							["r"] = 0.2,
							["g"] = 0.4,
							["b"] = 0.6,
						},
						["priority"] = 82,
						["range"] = false,
						["desc"] = "More than 20 yards away",
					},
					["alert_range_28"] = {
						["enable"] = true,
						["text"] = "28 yards",
						["color"] = {
							["a"] = 0.490909090909091,
							["r"] = 0.28,
							["g"] = 0.5600000000000001,
							["b"] = 0.84,
						},
						["priority"] = 83,
						["range"] = false,
						["desc"] = "More than 28 yards away",
					},
					["alert_range_30"] = {
						["enable"] = true,
						["text"] = "30 yards",
						["color"] = {
							["a"] = 0.4545454545454546,
							["r"] = 0.3,
							["g"] = 0.6,
							["b"] = 0.9,
						},
						["priority"] = 83,
						["range"] = false,
						["desc"] = "More than 30 yards away",
					},
					["alert_range_60"] = {
						["enable"] = true,
						["text"] = "60 yards",
						["color"] = {
							["a"] = 0.8363636363636364,
							["r"] = 0.6,
							["g"] = 0.2,
							["b"] = 0.8,
						},
						["priority"] = 86,
						["range"] = false,
						["desc"] = "More than 60 yards away",
					},
					["alert_range_100"] = {
						["enable"] = false,
						["text"] = "100 yards",
						["color"] = {
							["a"] = 0.1090909090909091,
							["r"] = 0,
							["g"] = 0,
							["b"] = 0,
						},
						["priority"] = 90,
						["range"] = false,
						["desc"] = "More than 100 yards away",
					},
				},
			},
		},
		["GridStatusAuras"] = {
			["profiles"] = {
				["Default"] = {
					["buff_Renew"] = {
						["icon"] = "Interface\\Icons\\Spell_Holy_Renew",
					},
					["buff_Riptide"] = {
						["icon"] = "Interface\\Icons\\spell_nature_riptide",
					},
					["buff_PowerWord:Shield"] = {
						["icon"] = "Interface\\Icons\\Spell_Holy_PowerWordShield",
					},
					["buff_Rejuvenation"] = {
						["icon"] = "Interface\\Icons\\Spell_Nature_Rejuvenation",
					},
					["buff_BeaconofLight"] = {
						["icon"] = "Interface\\Icons\\Ability_Paladin_BeaconofLight",
					},
					["buff_Grace"] = {
						["icon"] = "Interface\\Icons\\Spell_Holy_HopeAndGrace",
					},
					["buff_EarthShield"] = {
						["icon"] = "Interface\\Icons\\Spell_Nature_SkinofEarth",
					},
					["buff_Regrowth"] = {
						["icon"] = "Interface\\Icons\\Spell_Nature_ResistNature",
					},
					["buff_Lifebloom"] = {
						["icon"] = "Interface\\Icons\\INV_Misc_Herb_Felblossom",
					},
				},
			},
		},
		["GridStatus"] = {
			["profiles"] = {
				["Default"] = {
					["colors"] = {
						["HUNTER"] = {
							["r"] = 0.67,
							["g"] = 0.83,
							["b"] = 0.45,
						},
						["SHAMAN"] = {
							["r"] = 0,
							["g"] = 0.44,
							["b"] = 0.87,
						},
						["MAGE"] = {
							["r"] = 0.41,
							["g"] = 0.8,
							["b"] = 0.94,
						},
						["DRUID"] = {
							["r"] = 1,
							["g"] = 0.49,
							["b"] = 0.04,
						},
						["MONK"] = {
							["r"] = 0,
							["g"] = 1,
							["b"] = 0.59,
						},
						["DEATHKNIGHT"] = {
							["r"] = 0.77,
							["g"] = 0.12,
							["b"] = 0.23,
						},
						["PRIEST"] = {
							["r"] = 1,
							["g"] = 1,
							["b"] = 1,
						},
						["WARLOCK"] = {
							["r"] = 0.58,
							["g"] = 0.51,
							["b"] = 0.79,
						},
						["WARRIOR"] = {
							["r"] = 0.78,
							["g"] = 0.61,
							["b"] = 0.43,
						},
						["PALADIN"] = {
							["r"] = 0.96,
							["g"] = 0.55,
							["b"] = 0.73,
						},
						["ROGUE"] = {
							["r"] = 1,
							["g"] = 0.96,
							["b"] = 0.41,
						},
					},
				},
			},
		},
		["GridStatusAggro"] = {
		},
		["GridStatusHeals"] = {
		},
		["GridStatusReadyCheck"] = {
		},
		["GridStatusHealth"] = {
		},
		["GridStatusMana"] = {
		},
		["GridLayout"] = {
			["profiles"] = {
				["Default"] = {
					["hideTab"] = true,
					["anchorRel"] = "TOPLEFT",
					["BorderB"] = 0.1764705882352941,
					["layouts"] = {
						["bg"] = "By Group 25",
					},
					["BackgroundR"] = 0.1137254901960784,
					["BorderR"] = 0.1764705882352941,
					["PosX"] = 10,
					["BackgroundG"] = 0.1137254901960784,
					["PosY"] = -469,
					["layout"] = "By Group 5",
					["BackgroundA"] = 1,
					["BorderG"] = 0.1764705882352941,
					["borderTexture"] = "Boarders A",
					["Padding"] = 4,
					["BackgroundB"] = 0.1137254901960784,
					["Spacing"] = 9,
				},
			},
		},
		["GridRange"] = {
		},
		["GridStatusRaidIcons"] = {
		},
		["GridStatusResurrect"] = {
		},
	},
	["profileKeys"] = {
		["Mileiance - Zuluhed"] = "Default",
		["Maulls - Kel'Thuzad"] = "Default",
		["Gho - Ysondre"] = "Default",
		["Löckness - Laughing Skull"] = "Default",
		["Ðreaded - Kel'Thuzad"] = "Default",
		["Eredrillin - Kil'jaeden"] = "Default",
		["Powlk - Arygos"] = "Default",
		["Koredishton - Kel'Thuzad"] = "Default",
		["Opacus - Kel'Thuzad"] = "Default",
		["Letheliarah - Khadgar"] = "Default",
		["Melicelicity - Drenden"] = "Default",
		["Ghorde - Kel'Thuzad"] = "Default",
		["Clashadrey - Tichondrius"] = "Default",
		["Praedatør - Kel'Thuzad"] = "Default",
		["Ellence - Blade's Edge"] = "Default",
		["Halvinravis - Terenas"] = "Default",
		["Twocents - Kel'Thuzad"] = "Default",
		["Rhodara - Blackhand"] = "Default",
		["Instaque - Kel'Thuzad"] = "Default",
		["Instaq - Laughing Skull"] = "Default",
		["Pubick - Kel'Thuzad"] = "Default",
	},
	["profiles"] = {
		["Default"] = {
			["minimap"] = {
				["minimapPos"] = 160.9188765748549,
				["hide"] = true,
			},
		},
	},
}
