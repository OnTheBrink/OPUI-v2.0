
WeakAurasSaved = {
	["displays"] = {
		["Hero"] = {
			["color"] = {
				0.7725490196078432, -- [1]
				0, -- [2]
				0.0196078431372549, -- [3]
				0.75, -- [4]
			},
			["mirror"] = true,
			["yOffset"] = -432,
			["regionType"] = "texture",
			["blendMode"] = "ADD",
			["actions"] = {
				["start"] = {
					["do_glow"] = false,
					["sound_channel"] = "Master",
					["sound"] = "Sound\\Spells\\EnlargeCast.wav",
					["do_sound"] = true,
				},
				["finish"] = {
				},
			},
			["texture"] = "Spells\\Eye",
			["untrigger"] = {
			},
			["animation"] = {
				["start"] = {
					["type"] = "preset",
					["preset"] = "shrink",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "preset",
					["preset"] = "pulse",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "preset",
					["preset"] = "shrink",
					["duration_type"] = "seconds",
				},
			},
			["id"] = "Hero",
			["selfPoint"] = "CENTER",
			["trigger"] = {
				["type"] = "aura",
				["subeventPrefix"] = "SPELL",
				["subeventSuffix"] = "_CAST_START",
				["debuffType"] = "HELPFUL",
				["names"] = {
					"Heroism", -- [1]
				},
				["event"] = "Health",
				["unit"] = "player",
			},
			["width"] = 350,
			["frameStrata"] = 2,
			["desaturate"] = false,
			["rotation"] = 0,
			["anchorPoint"] = "CENTER",
			["numTriggers"] = 1,
			["discrete_rotation"] = 0,
			["height"] = 350,
			["rotate"] = true,
			["load"] = {
				["role"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["xOffset"] = -194,
		},
		["5PT"] = {
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.75, -- [4]
			},
			["mirror"] = false,
			["yOffset"] = 0,
			["regionType"] = "texture",
			["blendMode"] = "BLEND",
			["actions"] = {
				["start"] = {
					["sound_channel"] = "Master",
					["do_custom"] = false,
					["do_sound"] = true,
				},
				["finish"] = {
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\SharpPunch.mp3",
					["do_sound"] = false,
				},
			},
			["texture"] = "Textures\\SpellActivationOverlays\\Nightfall",
			["untrigger"] = {
			},
			["animation"] = {
				["start"] = {
					["type"] = "preset",
					["preset"] = "grow",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "preset",
					["preset"] = "pulse",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "preset",
					["preset"] = "grow",
					["duration_type"] = "seconds",
				},
			},
			["id"] = "5PT",
			["selfPoint"] = "CENTER",
			["trigger"] = {
				["type"] = "status",
				["subeventSuffix"] = "_CAST_START",
				["use_combopoints"] = true,
				["event"] = "Combo Points",
				["unit"] = "player",
				["combopoints"] = "5",
				["unevent"] = "auto",
				["use_unit"] = true,
				["combopoints_operator"] = "==",
				["subeventPrefix"] = "SPELL",
				["names"] = {
				},
				["debuffType"] = "HELPFUL",
			},
			["width"] = 200,
			["frameStrata"] = 1,
			["desaturate"] = false,
			["rotation"] = 0,
			["anchorPoint"] = "CENTER",
			["numTriggers"] = 1,
			["discrete_rotation"] = 0,
			["height"] = 200,
			["rotate"] = true,
			["load"] = {
				["role"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["xOffset"] = -150,
		},
		["Blade Flurry"] = {
			["fontSize"] = 10,
			["displayStacks"] = "%s",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["untrigger"] = {
			},
			["yOffset"] = -340,
			["anchorPoint"] = "CENTER",
			["stacksPoint"] = "BOTTOMRIGHT",
			["regionType"] = "icon",
			["selfPoint"] = "CENTER",
			["customTextUpdate"] = "update",
			["trigger"] = {
				["type"] = "aura",
				["subeventPrefix"] = "SPELL",
				["subeventSuffix"] = "_CAST_START",
				["debuffType"] = "HELPFUL",
				["names"] = {
					"Blade Flurry", -- [1]
				},
				["event"] = "Health",
				["unit"] = "player",
			},
			["icon"] = true,
			["numTriggers"] = 1,
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = true,
			["animation"] = {
				["start"] = {
					["type"] = "preset",
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "preset",
					["preset"] = "alphaPulse",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "preset",
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
			},
			["id"] = "Blade Flurry",
			["width"] = 50,
			["frameStrata"] = 2,
			["stickyDuration"] = false,
			["xOffset"] = 0,
			["font"] = "Friz Quadrata TT",
			["inverse"] = false,
			["desaturate"] = false,
			["height"] = 50,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["load"] = {
				["role"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Deadly 0"] = {
			["fontSize"] = 24,
			["displayStacks"] = "%s",
			["untrigger"] = {
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["load"] = {
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["regionType"] = "icon",
			["yOffset"] = 130,
			["anchorPoint"] = "CENTER",
			["xOffset"] = -30,
			["actions"] = {
				["start"] = {
					["sound"] = " custom",
					["do_sound"] = false,
				},
				["finish"] = {
					["do_glow"] = false,
					["do_sound"] = false,
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\WarningSiren.mp3",
					["glow_action"] = "show",
				},
			},
			["inverse"] = false,
			["customTextUpdate"] = "update",
			["id"] = "Deadly 0",
			["icon"] = true,
			["additional_triggers"] = {
				{
					["trigger"] = {
						["type"] = "status",
						["use_hostility"] = false,
						["unevent"] = "auto",
						["event"] = "Unit Characteristics",
						["unit"] = "target",
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["use_unit"] = true,
						["hostility"] = "hostile",
						["use_character"] = false,
						["subeventSuffix"] = "_CAST_START",
						["use_attackable"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
						["unit"] = "target",
					},
				}, -- [1]
			},
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = true,
			["animation"] = {
				["start"] = {
					["type"] = "preset",
					["duration_type"] = "seconds",
					["preset"] = "fade",
				},
				["main"] = {
					["type"] = "preset",
					["duration_type"] = "seconds",
					["preset"] = "alphaPulse",
				},
				["finish"] = {
					["type"] = "preset",
					["duration_type"] = "seconds",
					["preset"] = "fade",
				},
			},
			["trigger"] = {
				["type"] = "aura",
				["subeventSuffix"] = "_CAST_START",
				["event"] = "Health",
				["unit"] = "player",
				["inverse"] = true,
				["rem"] = "300",
				["remOperator"] = "<=",
				["names"] = {
					"Deadly Poison", -- [1]
				},
				["subeventPrefix"] = "SPELL",
				["debuffType"] = "HELPFUL",
			},
			["desaturate"] = false,
			["frameStrata"] = 1,
			["stickyDuration"] = false,
			["width"] = 50,
			["font"] = "ElvUI Font",
			["numTriggers"] = 2,
			["selfPoint"] = "CENTER",
			["height"] = 50,
			["displayIcon"] = "Interface\\Icons\\Ability_Rogue_DualWeild",
			["stacksPoint"] = "BOTTOMRIGHT",
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["No Poison Text"] = {
			["outline"] = true,
			["fontSize"] = 28,
			["color"] = {
				0.8823529411764706, -- [1]
				0, -- [2]
				0.05882352941176471, -- [3]
				1, -- [4]
			},
			["displayText"] = "No Poisons",
			["yOffset"] = 165,
			["anchorPoint"] = "CENTER",
			["customTextUpdate"] = "update",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["regionType"] = "text",
			["justify"] = "CENTER",
			["selfPoint"] = "BOTTOM",
			["additional_triggers"] = {
				{
					["trigger"] = {
						["subeventPrefix"] = "SPELL",
						["type"] = "aura",
						["inverse"] = true,
						["subeventSuffix"] = "_CAST_START",
						["unit"] = "player",
						["names"] = {
							"Leeching Poison", -- [1]
						},
						["event"] = "Health",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["unit"] = "target",
						["type"] = "status",
						["use_attackable"] = true,
						["unevent"] = "auto",
						["use_unit"] = true,
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Unit Characteristics",
						["subeventPrefix"] = "SPELL",
					},
					["untrigger"] = {
						["unit"] = "target",
					},
				}, -- [2]
			},
			["untrigger"] = {
			},
			["frameStrata"] = 1,
			["width"] = 87.6800537109375,
			["id"] = "No Poison Text",
			["font"] = "ElvUI Font",
			["numTriggers"] = 3,
			["xOffset"] = 0,
			["height"] = 20.47995567321777,
			["animation"] = {
				["start"] = {
					["type"] = "preset",
					["duration_type"] = "seconds",
					["preset"] = "slidetop",
				},
				["main"] = {
					["type"] = "preset",
					["duration_type"] = "seconds",
					["preset"] = "bounce",
				},
				["finish"] = {
					["type"] = "preset",
					["duration_type"] = "seconds",
					["preset"] = "slidetop",
				},
			},
			["load"] = {
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["trigger"] = {
				["unit"] = "player",
				["type"] = "aura",
				["inverse"] = true,
				["subeventSuffix"] = "_CAST_START",
				["debuffType"] = "HELPFUL",
				["names"] = {
					"Deadly Poison", -- [1]
				},
				["event"] = "Health",
				["subeventPrefix"] = "SPELL",
			},
		},
		["Leeching 5m"] = {
			["fontSize"] = 20,
			["displayStacks"] = "%p",
			["untrigger"] = {
			},
			["xOffset"] = 30,
			["load"] = {
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["regionType"] = "icon",
			["yOffset"] = 129.9688720703125,
			["anchorPoint"] = "CENTER",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["inverse"] = false,
			["customTextUpdate"] = "update",
			["id"] = "Leeching 5m",
			["icon"] = true,
			["additional_triggers"] = {
				{
					["trigger"] = {
						["use_unit"] = true,
						["type"] = "status",
						["use_attackable"] = true,
						["unevent"] = "auto",
						["subeventSuffix"] = "_CAST_START",
						["unit"] = "target",
						["event"] = "Unit Characteristics",
						["subeventPrefix"] = "SPELL",
					},
					["untrigger"] = {
						["unit"] = "target",
					},
				}, -- [1]
			},
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = true,
			["selfPoint"] = "CENTER",
			["trigger"] = {
				["type"] = "aura",
				["subeventSuffix"] = "_CAST_START",
				["event"] = "Health",
				["subeventPrefix"] = "SPELL",
				["useRem"] = true,
				["rem"] = "300",
				["remOperator"] = "<=",
				["unit"] = "player",
				["names"] = {
					"Leeching Poison", -- [1]
				},
				["debuffType"] = "HELPFUL",
			},
			["stickyDuration"] = false,
			["frameStrata"] = 1,
			["desaturate"] = false,
			["width"] = 50,
			["font"] = "ElvUI Font",
			["numTriggers"] = 2,
			["animation"] = {
				["start"] = {
					["type"] = "preset",
					["duration_type"] = "seconds",
					["preset"] = "fade",
				},
				["main"] = {
					["type"] = "preset",
					["duration_type"] = "seconds",
					["preset"] = "alphaPulse",
				},
				["finish"] = {
					["type"] = "preset",
					["duration_type"] = "seconds",
					["preset"] = "fade",
				},
			},
			["height"] = 50,
			["displayIcon"] = "Interface\\Icons\\rogue_leeching_poison",
			["stacksPoint"] = "BOTTOMRIGHT",
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Hero 2"] = {
			["color"] = {
				0.7725490196078432, -- [1]
				0, -- [2]
				0.0196078431372549, -- [3]
				0.75, -- [4]
			},
			["mirror"] = false,
			["untrigger"] = {
			},
			["regionType"] = "texture",
			["blendMode"] = "ADD",
			["actions"] = {
				["start"] = {
					["sound"] = "Sound\\Spells\\EnlargeCast.wav",
					["do_sound"] = true,
				},
				["finish"] = {
				},
			},
			["texture"] = "Spells\\Eye",
			["xOffset"] = 194,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["preset"] = "shrink",
					["type"] = "preset",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["preset"] = "pulse",
					["type"] = "preset",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["preset"] = "shrink",
					["type"] = "preset",
				},
			},
			["trigger"] = {
				["type"] = "aura",
				["unit"] = "player",
				["subeventSuffix"] = "_CAST_START",
				["debuffType"] = "HELPFUL",
				["names"] = {
					"Heroism", -- [1]
				},
				["event"] = "Health",
				["subeventPrefix"] = "SPELL",
			},
			["selfPoint"] = "CENTER",
			["id"] = "Hero 2",
			["desaturate"] = false,
			["frameStrata"] = 2,
			["width"] = 350,
			["rotation"] = 0,
			["discrete_rotation"] = 0,
			["numTriggers"] = 1,
			["anchorPoint"] = "CENTER",
			["height"] = 350,
			["rotate"] = true,
			["load"] = {
				["class"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["yOffset"] = -432,
		},
		["Shiruken Reminder"] = {
			["fontSize"] = 12,
			["displayStacks"] = "%s",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["untrigger"] = {
			},
			["stacksPoint"] = "BOTTOMRIGHT",
			["yOffset"] = -456,
			["anchorPoint"] = "CENTER",
			["regionType"] = "icon",
			["xOffset"] = -340,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["customTextUpdate"] = "update",
			["numTriggers"] = 1,
			["icon"] = true,
			["trigger"] = {
				["type"] = "status",
				["subeventSuffix"] = "_CAST_START",
				["event"] = "Health",
				["unit"] = "player",
				["custom_hide"] = "timed",
				["custom_type"] = "event",
				["subeventPrefix"] = "SPELL",
				["use_unit"] = true,
				["unevent"] = "auto",
				["names"] = {
					"Anticipation", -- [1]
				},
				["debuffType"] = "HELPFUL",
			},
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "preset",
					["preset"] = "slideleft",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["preset"] = "spiralandpulse",
					["use_scale"] = false,
					["scaleType"] = "pulse",
				},
				["finish"] = {
					["type"] = "preset",
					["preset"] = "slideleft",
					["duration_type"] = "seconds",
				},
			},
			["id"] = "Shiruken Reminder",
			["width"] = 42,
			["frameStrata"] = 1,
			["desaturate"] = false,
			["stickyDuration"] = false,
			["font"] = "Friz Quadrata TT",
			["inverse"] = false,
			["selfPoint"] = "CENTER",
			["height"] = 42,
			["displayIcon"] = "INTERFACE\\ICONS\\inv_throwingknife_07",
			["load"] = {
				["use_size"] = false,
				["use_level"] = false,
				["talent"] = 16,
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["use_talent"] = true,
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
						["none"] = true,
					},
				},
			},
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Deadly 5M"] = {
			["fontSize"] = 20,
			["displayStacks"] = "%p",
			["untrigger"] = {
			},
			["xOffset"] = -30,
			["stacksPoint"] = "BOTTOMLEFT",
			["anchorPoint"] = "CENTER",
			["yOffset"] = 129.9688720703125,
			["regionType"] = "icon",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["animation"] = {
				["start"] = {
					["type"] = "preset",
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "preset",
					["preset"] = "alphaPulse",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "preset",
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
			},
			["numTriggers"] = 2,
			["customTextUpdate"] = "update",
			["trigger"] = {
				["type"] = "aura",
				["subeventSuffix"] = "_CAST_START",
				["event"] = "Health",
				["unit"] = "player",
				["useRem"] = true,
				["rem"] = "300",
				["remOperator"] = "<=",
				["subeventPrefix"] = "SPELL",
				["names"] = {
					"Deadly Poison", -- [1]
				},
				["debuffType"] = "HELPFUL",
			},
			["actions"] = {
				["start"] = {
					["sound"] = " custom",
					["do_sound"] = false,
				},
				["finish"] = {
					["do_glow"] = false,
					["glow_action"] = "show",
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\WarningSiren.mp3",
					["do_sound"] = false,
				},
			},
			["stickyDuration"] = false,
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = true,
			["selfPoint"] = "CENTER",
			["id"] = "Deadly 5M",
			["width"] = 50,
			["frameStrata"] = 1,
			["desaturate"] = false,
			["additional_triggers"] = {
				{
					["trigger"] = {
						["type"] = "status",
						["use_hostility"] = false,
						["unevent"] = "auto",
						["event"] = "Unit Characteristics",
						["unit"] = "target",
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["use_character"] = false,
						["hostility"] = "hostile",
						["use_unit"] = true,
						["use_attackable"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
						["unit"] = "target",
					},
				}, -- [1]
			},
			["font"] = "ElvUI Font",
			["inverse"] = false,
			["icon"] = true,
			["height"] = 50,
			["displayIcon"] = "Interface\\Icons\\Ability_Rogue_DualWeild",
			["load"] = {
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Versatility Reminder Raid"] = {
			["fontSize"] = 12,
			["displayStacks"] = "%s",
			["xOffset"] = -350,
			["regionType"] = "icon",
			["stacksPoint"] = "BOTTOMRIGHT",
			["yOffset"] = -456,
			["anchorPoint"] = "CENTER",
			["untrigger"] = {
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["customTextUpdate"] = "update",
			["numTriggers"] = 1,
			["icon"] = true,
			["trigger"] = {
				["type"] = "status",
				["custom_type"] = "event",
				["event"] = "Health",
				["unit"] = "player",
				["custom_hide"] = "timed",
				["subeventSuffix"] = "_CAST_START",
				["subeventPrefix"] = "SPELL",
				["use_unit"] = true,
				["unevent"] = "auto",
				["names"] = {
					"Anticipation", -- [1]
				},
				["debuffType"] = "HELPFUL",
			},
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = false,
			["selfPoint"] = "CENTER",
			["id"] = "Versatility Reminder Raid",
			["desaturate"] = false,
			["frameStrata"] = 1,
			["stickyDuration"] = false,
			["width"] = 48,
			["font"] = "Friz Quadrata TT",
			["inverse"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "preset",
					["preset"] = "slideleft",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["scaleType"] = "pulse",
					["preset"] = "shake",
					["duration_type"] = "seconds",
					["use_scale"] = false,
					["type"] = "preset",
				},
				["finish"] = {
					["type"] = "preset",
					["preset"] = "slideleft",
					["duration_type"] = "seconds",
				},
			},
			["height"] = 48,
			["displayIcon"] = "Interface\\Icons\\ability_rogue_versatility",
			["load"] = {
				["use_size"] = true,
				["use_level"] = false,
				["talent"] = 17,
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["use_talent"] = true,
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["single"] = "twentyfive",
					["multi"] = {
					},
				},
			},
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["5PT 2"] = {
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.75, -- [4]
			},
			["mirror"] = true,
			["untrigger"] = {
			},
			["regionType"] = "texture",
			["blendMode"] = "BLEND",
			["actions"] = {
				["start"] = {
					["sound_channel"] = "Master",
					["do_custom"] = false,
					["do_sound"] = true,
				},
				["finish"] = {
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\SharpPunch.mp3",
					["do_sound"] = false,
				},
			},
			["texture"] = "Textures\\SpellActivationOverlays\\Nightfall",
			["xOffset"] = 150,
			["animation"] = {
				["start"] = {
					["type"] = "preset",
					["duration_type"] = "seconds",
					["preset"] = "grow",
				},
				["main"] = {
					["type"] = "preset",
					["duration_type"] = "seconds",
					["preset"] = "pulse",
				},
				["finish"] = {
					["type"] = "preset",
					["duration_type"] = "seconds",
					["preset"] = "grow",
				},
			},
			["trigger"] = {
				["type"] = "status",
				["subeventSuffix"] = "_CAST_START",
				["use_combopoints"] = true,
				["event"] = "Combo Points",
				["unit"] = "player",
				["debuffType"] = "HELPFUL",
				["names"] = {
				},
				["subeventPrefix"] = "SPELL",
				["combopoints_operator"] = "==",
				["use_unit"] = true,
				["unevent"] = "auto",
				["combopoints"] = "5",
			},
			["selfPoint"] = "CENTER",
			["id"] = "5PT 2",
			["desaturate"] = false,
			["frameStrata"] = 1,
			["width"] = 200,
			["rotation"] = 0,
			["discrete_rotation"] = 0,
			["numTriggers"] = 1,
			["anchorPoint"] = "CENTER",
			["height"] = 200,
			["rotate"] = true,
			["load"] = {
				["class"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["yOffset"] = 0,
		},
		["Fort"] = {
			["fontSize"] = 24,
			["displayStacks"] = "%s",
			["untrigger"] = {
			},
			["xOffset"] = 0,
			["stacksPoint"] = "BOTTOMRIGHT",
			["anchorPoint"] = "CENTER",
			["yOffset"] = 130,
			["regionType"] = "icon",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["selfPoint"] = "CENTER",
			["numTriggers"] = 2,
			["customTextUpdate"] = "update",
			["additional_triggers"] = {
				{
					["trigger"] = {
						["type"] = "status",
						["use_hostility"] = false,
						["unevent"] = "auto",
						["event"] = "Unit Characteristics",
						["unit"] = "target",
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["use_character"] = false,
						["hostility"] = "hostile",
						["use_unit"] = true,
						["use_attackable"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
						["unit"] = "target",
					},
				}, -- [1]
			},
			["actions"] = {
				["start"] = {
					["sound"] = " custom",
					["do_sound"] = false,
				},
				["finish"] = {
					["do_glow"] = false,
					["glow_action"] = "show",
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\WarningSiren.mp3",
					["do_sound"] = false,
				},
			},
			["width"] = 50,
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = true,
			["animation"] = {
				["start"] = {
					["type"] = "preset",
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "preset",
					["preset"] = "alphaPulse",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "preset",
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
			},
			["id"] = "Fort",
			["stickyDuration"] = false,
			["frameStrata"] = 1,
			["desaturate"] = false,
			["trigger"] = {
				["rem"] = "300",
				["subeventSuffix"] = "_CAST_START",
				["event"] = "Health",
				["unit"] = "player",
				["inverse"] = true,
				["type"] = "aura",
				["remOperator"] = "<=",
				["subeventPrefix"] = "SPELL",
				["names"] = {
					"Power Word: Fortitude", -- [1]
				},
				["debuffType"] = "HELPFUL",
			},
			["font"] = "ElvUI Font",
			["inverse"] = false,
			["icon"] = true,
			["height"] = 50,
			["displayIcon"] = "Interface\\Icons\\Spell_Holy_WordFortitude",
			["load"] = {
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Healthstone"] = {
			["fontSize"] = 12,
			["displayStacks"] = "%s",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["untrigger"] = {
				["itemName"] = 5512,
			},
			["yOffset"] = -502,
			["anchorPoint"] = "CENTER",
			["stacksPoint"] = "BOTTOMRIGHT",
			["regionType"] = "icon",
			["icon"] = true,
			["customTextUpdate"] = "update",
			["id"] = "Healthstone",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
					["do_custom"] = false,
				},
			},
			["numTriggers"] = 1,
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = true,
			["selfPoint"] = "CENTER",
			["trigger"] = {
				["itemName"] = 5512,
				["use_count"] = true,
				["names"] = {
				},
				["debuffType"] = "HELPFUL",
				["use_sourceName"] = false,
				["custom_type"] = "event",
				["subeventPrefix"] = "SPELL",
				["event"] = "Item Count",
				["use_itemName"] = true,
				["type"] = "status",
				["subeventSuffix"] = "_CAST_START",
				["count"] = "1",
				["events"] = "ITEM",
				["custom_hide"] = "timed",
				["unit"] = "player",
				["use_unit"] = true,
				["unevent"] = "auto",
				["count_operator"] = "==",
			},
			["width"] = 50,
			["frameStrata"] = 1,
			["desaturate"] = false,
			["stickyDuration"] = false,
			["font"] = "ElvUI Font",
			["inverse"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "preset",
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["type"] = "preset",
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
			},
			["height"] = 50,
			["xOffset"] = -580,
			["load"] = {
				["role"] = {
					["multi"] = {
					},
				},
				["use_size"] = false,
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["single"] = "twentyfive",
					["multi"] = {
						["ten"] = true,
						["twentyfive"] = true,
						["party"] = true,
					},
				},
			},
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Flask"] = {
			["fontSize"] = 12,
			["displayStacks"] = "%s",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["yOffset"] = -502,
			["load"] = {
				["role"] = {
					["multi"] = {
					},
				},
				["use_size"] = false,
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["use_difficulty"] = false,
				["size"] = {
					["single"] = "twentyfive",
					["multi"] = {
						["ten"] = true,
						["twentyfive"] = true,
						["party"] = true,
					},
				},
			},
			["untrigger"] = {
			},
			["anchorPoint"] = "CENTER",
			["stacksPoint"] = "BOTTOMRIGHT",
			["xOffset"] = 516,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["preset"] = "fade",
					["type"] = "preset",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["preset"] = "fade",
					["type"] = "preset",
				},
			},
			["customTextUpdate"] = "update",
			["inverse"] = false,
			["icon"] = true,
			["trigger"] = {
				["type"] = "aura",
				["unit"] = "player",
				["subeventSuffix"] = "_CAST_START",
				["debuffType"] = "HELPFUL",
				["names"] = {
					"Flask of Spring Blossoms", -- [1]
				},
				["event"] = "Health",
				["subeventPrefix"] = "SPELL",
			},
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = true,
			["selfPoint"] = "CENTER",
			["id"] = "Flask",
			["desaturate"] = false,
			["frameStrata"] = 1,
			["stickyDuration"] = false,
			["width"] = 50,
			["font"] = "ElvUI Font",
			["numTriggers"] = 1,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["height"] = 50,
			["regionType"] = "icon",
			["cooldown"] = true,
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Fort Text Dungeon"] = {
			["outline"] = true,
			["disjunctive"] = false,
			["displayText"] = "BUFF",
			["yOffset"] = 170,
			["anchorPoint"] = "CENTER",
			["customTextUpdate"] = "update",
			["icon"] = true,
			["selfPoint"] = "CENTER",
			["trigger"] = {
				["rem"] = "300",
				["subeventSuffix"] = "_CAST_START",
				["event"] = "Health",
				["unit"] = "player",
				["inverse"] = true,
				["type"] = "aura",
				["remOperator"] = "<=",
				["subeventPrefix"] = "SPELL",
				["names"] = {
					"Power Word: Fortitude", -- [1]
				},
				["debuffType"] = "HELPFUL",
			},
			["desaturate"] = false,
			["font"] = "ElvUI Font",
			["height"] = 20.47995567321777,
			["load"] = {
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_size"] = false,
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
					},
				},
				["use_zone"] = false,
				["size"] = {
					["multi"] = {
						["party"] = true,
						["scenario"] = true,
						["twentyfive"] = true,
						["ten"] = true,
						["arena"] = true,
						["fortyman"] = true,
						["pvp"] = true,
					},
				},
			},
			["fontSize"] = 24,
			["displayStacks"] = "%s",
			["regionType"] = "text",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["actions"] = {
				["start"] = {
					["sound"] = " custom",
					["do_sound"] = false,
				},
				["finish"] = {
					["do_glow"] = false,
					["glow_action"] = "show",
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\WarningSiren.mp3",
					["do_sound"] = false,
				},
			},
			["stickyDuration"] = false,
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["justify"] = "LEFT",
			["animation"] = {
				["start"] = {
					["type"] = "preset",
					["preset"] = "slidetop",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "preset",
					["preset"] = "bounce",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "preset",
					["preset"] = "slidetop",
					["duration_type"] = "seconds",
				},
			},
			["id"] = "Fort Text Dungeon",
			["auto"] = true,
			["frameStrata"] = 1,
			["width"] = 41.60000228881836,
			["inverse"] = false,
			["untrigger"] = {
			},
			["numTriggers"] = 1,
			["xOffset"] = 0,
			["additional_triggers"] = {
			},
			["displayIcon"] = "Interface\\Icons\\Spell_Holy_WordFortitude",
			["stacksPoint"] = "BOTTOMRIGHT",
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Shiruken Reminder Raid"] = {
			["fontSize"] = 12,
			["displayStacks"] = "%s",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["anchorPoint"] = "CENTER",
			["load"] = {
				["use_size"] = false,
				["use_level"] = false,
				["talent"] = 16,
				["use_role"] = true,
				["spec"] = {
					["multi"] = {
					},
				},
				["use_talent"] = true,
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_difficulty"] = false,
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["size"] = {
					["single"] = "twentyfive",
					["multi"] = {
						["party"] = true,
						["scenario"] = true,
						["ten"] = true,
						["twentyfive"] = true,
						["fortyman"] = true,
					},
				},
			},
			["untrigger"] = {
			},
			["regionType"] = "icon",
			["yOffset"] = -456,
			["xOffset"] = -354,
			["selfPoint"] = "CENTER",
			["customTextUpdate"] = "update",
			["inverse"] = false,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["id"] = "Shiruken Reminder Raid",
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "preset",
					["duration_type"] = "seconds",
					["preset"] = "slideleft",
				},
				["main"] = {
					["scaleType"] = "pulse",
					["type"] = "preset",
					["duration_type"] = "seconds",
					["use_scale"] = false,
					["preset"] = "shake",
				},
				["finish"] = {
					["type"] = "preset",
					["duration_type"] = "seconds",
					["preset"] = "slideleft",
				},
			},
			["trigger"] = {
				["type"] = "status",
				["subeventSuffix"] = "_CAST_START",
				["event"] = "Health",
				["unit"] = "player",
				["debuffType"] = "HELPFUL",
				["names"] = {
					"Anticipation", -- [1]
				},
				["unevent"] = "auto",
				["use_unit"] = true,
				["subeventPrefix"] = "SPELL",
				["custom_type"] = "event",
				["custom_hide"] = "timed",
			},
			["stickyDuration"] = false,
			["frameStrata"] = 1,
			["width"] = 42,
			["desaturate"] = false,
			["font"] = "Friz Quadrata TT",
			["numTriggers"] = 1,
			["icon"] = true,
			["height"] = 42,
			["displayIcon"] = "INTERFACE\\ICONS\\inv_throwingknife_07",
			["stacksPoint"] = "BOTTOMRIGHT",
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Sound On Envenom"] = {
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0, -- [4]
			},
			["mirror"] = false,
			["yOffset"] = 0,
			["regionType"] = "texture",
			["blendMode"] = "BLEND",
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\SharpPunch.mp3",
					["do_sound"] = true,
				},
				["finish"] = {
				},
			},
			["texture"] = "Textures\\SpellActivationOverlays\\Eclipse_Sun",
			["untrigger"] = {
			},
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["id"] = "Sound On Envenom",
			["selfPoint"] = "CENTER",
			["trigger"] = {
				["sourceunit"] = "player",
				["source"] = "Eviscerate",
				["duration"] = "2",
				["subeventPrefix"] = "SPELL",
				["spellName"] = "Envenom",
				["type"] = "event",
				["subeventSuffix"] = "_DAMAGE",
				["use_source"] = false,
				["names"] = {
				},
				["unit"] = "player",
				["use_spellName"] = true,
				["event"] = "Combat Log",
				["use_sourceunit"] = true,
				["use_destunit"] = true,
				["debuffType"] = "HELPFUL",
				["unevent"] = "timed",
				["destunit"] = "target",
			},
			["width"] = 200,
			["frameStrata"] = 1,
			["desaturate"] = false,
			["rotation"] = 0,
			["anchorPoint"] = "CENTER",
			["numTriggers"] = 1,
			["discrete_rotation"] = 0,
			["height"] = 200,
			["rotate"] = true,
			["load"] = {
				["role"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["xOffset"] = 0,
		},
		["Leeching 0"] = {
			["fontSize"] = 24,
			["displayStacks"] = "%s",
			["untrigger"] = {
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["stacksPoint"] = "BOTTOMRIGHT",
			["anchorPoint"] = "CENTER",
			["yOffset"] = 130,
			["regionType"] = "icon",
			["xOffset"] = 30,
			["animation"] = {
				["start"] = {
					["type"] = "preset",
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "preset",
					["preset"] = "alphaPulse",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "preset",
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
			},
			["numTriggers"] = 2,
			["customTextUpdate"] = "update",
			["additional_triggers"] = {
				{
					["trigger"] = {
						["subeventPrefix"] = "SPELL",
						["type"] = "status",
						["event"] = "Unit Characteristics",
						["unevent"] = "auto",
						["unit"] = "target",
						["subeventSuffix"] = "_CAST_START",
						["use_attackable"] = true,
						["use_unit"] = true,
					},
					["untrigger"] = {
						["unit"] = "target",
					},
				}, -- [1]
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["width"] = 50,
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = true,
			["selfPoint"] = "CENTER",
			["id"] = "Leeching 0",
			["desaturate"] = false,
			["frameStrata"] = 1,
			["stickyDuration"] = false,
			["trigger"] = {
				["rem"] = "300",
				["unevent"] = "auto",
				["type"] = "aura",
				["unit"] = "player",
				["event"] = "Chat Message",
				["names"] = {
					"Leeching Poison", -- [1]
				},
				["use_unit"] = true,
				["count"] = "0",
				["inverse"] = true,
				["subeventPrefix"] = "SPELL",
				["remOperator"] = "<=",
				["subeventSuffix"] = "_CAST_START",
				["countOperator"] = "==",
				["debuffType"] = "HELPFUL",
			},
			["font"] = "ElvUI Font",
			["inverse"] = false,
			["icon"] = true,
			["height"] = 50,
			["displayIcon"] = "Interface\\Icons\\rogue_leeching_poison",
			["load"] = {
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["talent"] = 8,
				["use_talent"] = true,
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Adrenaline Rush"] = {
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.75, -- [4]
			},
			["mirror"] = false,
			["yOffset"] = 70.9232177734375,
			["regionType"] = "texture",
			["blendMode"] = "BLEND",
			["actions"] = {
				["start"] = {
					["sound_channel"] = "Master",
					["sound"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Sounds\\phone.ogg",
					["do_sound"] = false,
				},
				["finish"] = {
				},
			},
			["texture"] = "Textures\\SpellActivationOverlays\\Dark_Transformation",
			["untrigger"] = {
			},
			["animation"] = {
				["start"] = {
					["type"] = "preset",
					["preset"] = "fade",
					["duration_type"] = "seconds",
					["use_scale"] = false,
					["use_alpha"] = false,
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["type"] = "preset",
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
			},
			["id"] = "Adrenaline Rush",
			["selfPoint"] = "CENTER",
			["trigger"] = {
				["debuffType"] = "HELPFUL",
				["sourceunit"] = "player",
				["source"] = "Adrenaline Rush",
				["unevent"] = "timed",
				["type"] = "aura",
				["unit"] = "player",
				["event"] = "Combat Log",
				["names"] = {
					"Adrenaline Rush", -- [1]
				},
				["subeventSuffix"] = "_CAST_START",
				["use_spellName"] = true,
				["spellName"] = "Adrenaline Rush",
				["use_sourceunit"] = true,
				["use_destunit"] = false,
				["subeventPrefix"] = "SPELL",
				["use_source"] = false,
				["useRem"] = true,
			},
			["width"] = 200,
			["frameStrata"] = 1,
			["desaturate"] = false,
			["rotation"] = 0,
			["anchorPoint"] = "CENTER",
			["numTriggers"] = 1,
			["discrete_rotation"] = 0,
			["height"] = 200,
			["rotate"] = true,
			["load"] = {
				["role"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["xOffset"] = 0,
		},
		["Well Fed"] = {
			["user_y"] = 0,
			["user_x"] = 0,
			["xOffset"] = 580,
			["yOffset"] = -502.0002365112305,
			["anchorPoint"] = "CENTER",
			["desaturateBackground"] = false,
			["customTextUpdate"] = "update",
			["icon"] = true,
			["selfPoint"] = "CENTER",
			["trigger"] = {
				["type"] = "aura",
				["unit"] = "player",
				["subeventSuffix"] = "_CAST_START",
				["debuffType"] = "HELPFUL",
				["names"] = {
					"Well Fed", -- [1]
				},
				["event"] = "Health",
				["subeventPrefix"] = "SPELL",
			},
			["desaturate"] = false,
			["rotation"] = 0,
			["font"] = "ElvUI Font",
			["height"] = 50,
			["load"] = {
				["difficulty"] = "lfr",
				["role"] = {
					["multi"] = {
					},
				},
				["use_size"] = false,
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["use_difficulty"] = false,
				["size"] = {
					["single"] = "twentyfive",
					["multi"] = {
						["ten"] = true,
						["twentyfive"] = true,
						["party"] = true,
					},
				},
			},
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["stacksPoint"] = "BOTTOMRIGHT",
			["backgroundTexture"] = "Textures\\SpellActivationOverlays\\Eclipse_Sun",
			["displayStacks"] = "%s",
			["foregroundTexture"] = "Textures\\SpellActivationOverlays\\Eclipse_Sun",
			["crop_y"] = 0.41,
			["stickyDuration"] = false,
			["mirror"] = false,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["preset"] = "fade",
					["type"] = "preset",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["preset"] = "fade",
					["type"] = "preset",
				},
			},
			["regionType"] = "icon",
			["inverse"] = false,
			["blendMode"] = "BLEND",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["untrigger"] = {
			},
			["sameTexture"] = true,
			["frameStrata"] = 1,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = true,
			["compress"] = false,
			["id"] = "Well Fed",
			["foregroundColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["alpha"] = 1,
			["width"] = 50,
			["desaturateForeground"] = false,
			["backgroundColor"] = {
				0.5, -- [1]
				0.5, -- [2]
				0.5, -- [3]
				0.5, -- [4]
			},
			["numTriggers"] = 1,
			["fontSize"] = 12,
			["orientation"] = "VERTICAL",
			["crop_x"] = 0.41,
			["cooldown"] = true,
			["backgroundOffset"] = 2,
		},
		["Versatility Reminder"] = {
			["fontSize"] = 12,
			["displayStacks"] = "%s",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["anchorPoint"] = "CENTER",
			["load"] = {
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_level"] = false,
				["talent"] = 17,
				["size"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["use_talent"] = true,
			},
			["untrigger"] = {
			},
			["regionType"] = "icon",
			["yOffset"] = -456,
			["xOffset"] = -350,
			["selfPoint"] = "CENTER",
			["customTextUpdate"] = "update",
			["inverse"] = false,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["id"] = "Versatility Reminder",
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "preset",
					["duration_type"] = "seconds",
					["preset"] = "slideleft",
				},
				["main"] = {
					["scaleType"] = "pulse",
					["type"] = "none",
					["duration_type"] = "seconds",
					["use_scale"] = false,
					["preset"] = "spiralandpulse",
				},
				["finish"] = {
					["type"] = "preset",
					["duration_type"] = "seconds",
					["preset"] = "slideleft",
				},
			},
			["trigger"] = {
				["type"] = "status",
				["subeventSuffix"] = "_CAST_START",
				["event"] = "Health",
				["unit"] = "player",
				["debuffType"] = "HELPFUL",
				["names"] = {
					"Anticipation", -- [1]
				},
				["unevent"] = "auto",
				["use_unit"] = true,
				["subeventPrefix"] = "SPELL",
				["custom_type"] = "event",
				["custom_hide"] = "timed",
			},
			["stickyDuration"] = false,
			["frameStrata"] = 1,
			["width"] = 48,
			["desaturate"] = false,
			["font"] = "Friz Quadrata TT",
			["numTriggers"] = 1,
			["icon"] = true,
			["height"] = 48,
			["displayIcon"] = "Interface\\Icons\\ability_rogue_versatility",
			["stacksPoint"] = "BOTTOMRIGHT",
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Virmen's Bite CD"] = {
			["fontSize"] = 12,
			["displayStacks"] = "%s",
			["xOffset"] = -516,
			["stacksPoint"] = "BOTTOMRIGHT",
			["load"] = {
				["use_size"] = false,
				["role"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["single"] = "twentyfive",
					["multi"] = {
						["ten"] = true,
						["twentyfive"] = true,
						["party"] = true,
					},
				},
			},
			["untrigger"] = {
				["itemName"] = 76089,
			},
			["anchorPoint"] = "CENTER",
			["yOffset"] = -502,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["animation"] = {
				["start"] = {
					["type"] = "preset",
					["duration_type"] = "seconds",
					["preset"] = "fade",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "preset",
					["duration_type"] = "seconds",
					["preset"] = "fade",
				},
			},
			["customTextUpdate"] = "update",
			["inverse"] = false,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["id"] = "Virmen's Bite CD",
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = true,
			["selfPoint"] = "CENTER",
			["trigger"] = {
				["itemName"] = 76089,
				["use_count"] = true,
				["subeventPrefix"] = "SPELL",
				["debuffType"] = "HELPFUL",
				["use_sourceName"] = false,
				["use_unit"] = true,
				["unevent"] = "auto",
				["custom_hide"] = "timed",
				["unit"] = "player",
				["countOperator"] = ">=",
				["names"] = {
					"Virmen's Bite", -- [1]
				},
				["subeventSuffix"] = "_CAST_START",
				["events"] = "ITEM",
				["count"] = "1",
				["custom_type"] = "event",
				["type"] = "status",
				["event"] = "Cooldown Progress (Item)",
				["use_itemName"] = true,
				["count_operator"] = ">=",
			},
			["stickyDuration"] = false,
			["frameStrata"] = 1,
			["width"] = 50,
			["desaturate"] = false,
			["font"] = "ElvUI Font",
			["numTriggers"] = 1,
			["icon"] = true,
			["height"] = 50,
			["regionType"] = "icon",
			["cooldown"] = true,
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Fort Dungeon"] = {
			["fontSize"] = 24,
			["displayStacks"] = "%s",
			["untrigger"] = {
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["load"] = {
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_size"] = false,
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
						["party"] = true,
						["scenario"] = true,
						["arena"] = true,
						["ten"] = true,
						["twentyfive"] = true,
						["fortyman"] = true,
						["pvp"] = true,
					},
				},
			},
			["regionType"] = "icon",
			["yOffset"] = 130,
			["anchorPoint"] = "CENTER",
			["xOffset"] = 0,
			["actions"] = {
				["start"] = {
					["sound"] = " custom",
					["do_sound"] = false,
				},
				["finish"] = {
					["do_glow"] = false,
					["do_sound"] = false,
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\WarningSiren.mp3",
					["glow_action"] = "show",
				},
			},
			["inverse"] = false,
			["customTextUpdate"] = "update",
			["id"] = "Fort Dungeon",
			["icon"] = true,
			["trigger"] = {
				["type"] = "aura",
				["subeventSuffix"] = "_CAST_START",
				["event"] = "Health",
				["unit"] = "player",
				["inverse"] = true,
				["rem"] = "300",
				["remOperator"] = "<=",
				["names"] = {
					"Power Word: Fortitude", -- [1]
				},
				["subeventPrefix"] = "SPELL",
				["debuffType"] = "HELPFUL",
			},
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = true,
			["selfPoint"] = "CENTER",
			["additional_triggers"] = {
			},
			["desaturate"] = false,
			["frameStrata"] = 1,
			["width"] = 50,
			["stickyDuration"] = false,
			["font"] = "ElvUI Font",
			["numTriggers"] = 1,
			["animation"] = {
				["start"] = {
					["type"] = "preset",
					["duration_type"] = "seconds",
					["preset"] = "fade",
				},
				["main"] = {
					["type"] = "preset",
					["duration_type"] = "seconds",
					["preset"] = "alphaPulse",
				},
				["finish"] = {
					["type"] = "preset",
					["duration_type"] = "seconds",
					["preset"] = "fade",
				},
			},
			["height"] = 50,
			["displayIcon"] = "Interface\\Icons\\Spell_Holy_WordFortitude",
			["stacksPoint"] = "BOTTOMRIGHT",
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["4PTS"] = {
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0, -- [4]
			},
			["mirror"] = false,
			["yOffset"] = 0,
			["regionType"] = "texture",
			["blendMode"] = "BLEND",
			["actions"] = {
				["start"] = {
					["do_glow"] = false,
					["sound_channel"] = "Master",
					["sound"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Sounds\\heartbeat.ogg",
					["do_sound"] = true,
				},
				["finish"] = {
				},
			},
			["texture"] = "Textures\\SpellActivationOverlays\\Eclipse_Sun",
			["untrigger"] = {
			},
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["id"] = "4PTS",
			["selfPoint"] = "CENTER",
			["trigger"] = {
				["type"] = "status",
				["subeventSuffix"] = "_CAST_START",
				["use_combopoints"] = true,
				["event"] = "Combo Points",
				["unit"] = "player",
				["combopoints"] = "4",
				["unevent"] = "auto",
				["use_unit"] = true,
				["combopoints_operator"] = "==",
				["subeventPrefix"] = "SPELL",
				["names"] = {
				},
				["debuffType"] = "HELPFUL",
			},
			["width"] = 200,
			["frameStrata"] = 1,
			["desaturate"] = false,
			["rotation"] = 0,
			["anchorPoint"] = "CENTER",
			["numTriggers"] = 1,
			["discrete_rotation"] = 0,
			["height"] = 200,
			["rotate"] = true,
			["load"] = {
				["role"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["xOffset"] = 0,
		},
		["Fort Text"] = {
			["outline"] = true,
			["xOffset"] = 0,
			["displayText"] = "BUFF",
			["untrigger"] = {
			},
			["anchorPoint"] = "CENTER",
			["customTextUpdate"] = "update",
			["icon"] = true,
			["selfPoint"] = "CENTER",
			["trigger"] = {
				["type"] = "aura",
				["subeventSuffix"] = "_CAST_START",
				["event"] = "Health",
				["unit"] = "player",
				["inverse"] = true,
				["rem"] = "300",
				["remOperator"] = "<=",
				["names"] = {
					"Power Word: Fortitude", -- [1]
				},
				["subeventPrefix"] = "SPELL",
				["debuffType"] = "HELPFUL",
			},
			["desaturate"] = false,
			["font"] = "ElvUI Font",
			["height"] = 20.47995567321777,
			["load"] = {
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["fontSize"] = 24,
			["displayStacks"] = "%s",
			["regionType"] = "text",
			["disjunctive"] = false,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["auto"] = true,
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["justify"] = "CENTER",
			["stickyDuration"] = false,
			["additional_triggers"] = {
				{
					["trigger"] = {
						["type"] = "status",
						["use_hostility"] = false,
						["unevent"] = "auto",
						["event"] = "Unit Characteristics",
						["unit"] = "target",
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["use_unit"] = true,
						["hostility"] = "hostile",
						["use_character"] = false,
						["subeventSuffix"] = "_CAST_START",
						["use_attackable"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
						["unit"] = "target",
					},
				}, -- [1]
			},
			["actions"] = {
				["start"] = {
					["sound"] = " custom",
					["do_sound"] = false,
				},
				["finish"] = {
					["do_glow"] = false,
					["do_sound"] = false,
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\WarningSiren.mp3",
					["glow_action"] = "show",
				},
			},
			["frameStrata"] = 1,
			["width"] = 41.60000228881836,
			["numTriggers"] = 2,
			["animation"] = {
				["start"] = {
					["type"] = "preset",
					["duration_type"] = "seconds",
					["preset"] = "slidetop",
				},
				["main"] = {
					["type"] = "preset",
					["duration_type"] = "seconds",
					["preset"] = "bounce",
				},
				["finish"] = {
					["type"] = "preset",
					["duration_type"] = "seconds",
					["preset"] = "slidetop",
				},
			},
			["inverse"] = false,
			["yOffset"] = 170,
			["id"] = "Fort Text",
			["displayIcon"] = "Interface\\Icons\\Spell_Holy_WordFortitude",
			["stacksPoint"] = "BOTTOMRIGHT",
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Virmen's Bite Count"] = {
			["fontSize"] = 24,
			["displayStacks"] = "%p",
			["load"] = {
				["role"] = {
					["multi"] = {
					},
				},
				["use_size"] = false,
				["class"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["single"] = "twentyfive",
					["multi"] = {
						["ten"] = true,
						["twentyfive"] = true,
						["party"] = true,
					},
				},
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["cooldown"] = true,
			["regionType"] = "icon",
			["yOffset"] = -502,
			["anchorPoint"] = "CENTER",
			["xOffset"] = -516,
			["icon"] = true,
			["numTriggers"] = 2,
			["customTextUpdate"] = "update",
			["animation"] = {
				["start"] = {
					["type"] = "preset",
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["type"] = "preset",
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["width"] = 50,
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = true,
			["selfPoint"] = "CENTER",
			["additional_triggers"] = {
				{
					["trigger"] = {
						["type"] = "status",
						["unevent"] = "auto",
						["use_inverse"] = true,
						["event"] = "Cooldown Progress (Item)",
						["subeventPrefix"] = "SPELL",
						["unit"] = "player",
						["subeventSuffix"] = "_CAST_START",
						["use_unit"] = true,
						["itemName"] = 76089,
						["use_itemName"] = true,
						["use_remaining"] = true,
					},
					["untrigger"] = {
						["itemName"] = 76089,
					},
				}, -- [1]
			},
			["desaturate"] = false,
			["frameStrata"] = 1,
			["stickyDuration"] = false,
			["trigger"] = {
				["itemName"] = 76089,
				["use_count"] = true,
				["use_unit"] = true,
				["debuffType"] = "HELPFUL",
				["type"] = "status",
				["custom_hide"] = "timed",
				["custom_type"] = "event",
				["subeventSuffix"] = "_CAST_START",
				["subeventPrefix"] = "SPELL",
				["use_itemName"] = true,
				["countOperator"] = ">=",
				["unevent"] = "auto",
				["events"] = "ITEM",
				["count"] = "1",
				["use_sourceName"] = false,
				["names"] = {
					"Virmen's Bite", -- [1]
				},
				["event"] = "Item Count",
				["unit"] = "player",
				["count_operator"] = ">=",
			},
			["font"] = "ElvUI Font",
			["inverse"] = false,
			["id"] = "Virmen's Bite Count",
			["height"] = 50,
			["untrigger"] = {
				["itemName"] = 76089,
			},
			["stacksPoint"] = "CENTER",
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
	},
	["registered"] = {
	},
	["frame"] = {
		["xOffset"] = -302.1251220703125,
		["yOffset"] = -215.7852783203125,
		["height"] = 491.9999084472656,
		["width"] = 630.0003051757813,
	},
	["tempIconCache"] = {
		["Deadly Poison"] = "Interface\\Icons\\Ability_Rogue_DualWeild",
		["Blade Flurry"] = "Interface\\Icons\\Ability_Warrior_PunishingBlow",
		["Well Fed"] = "Interface\\Icons\\Spell_Misc_Food",
		["Leeching Poison"] = "Interface\\Icons\\rogue_leeching_poison",
		["Virmen's Bite"] = "Interface\\Icons\\trade_alchemy_potiond6",
		["Heroism"] = "Interface\\Icons\\Ability_Shaman_Heroism",
		["Flask of Spring Blossoms"] = "Interface\\Icons\\trade_alchemy_potione3",
		["Adrenaline Rush"] = "Interface\\Icons\\Spell_Shadow_ShadowWordDominate",
		["Power Word: Fortitude"] = "Interface\\Icons\\Spell_Holy_WordFortitude",
	},
	["login_squelch_time"] = 5,
}
