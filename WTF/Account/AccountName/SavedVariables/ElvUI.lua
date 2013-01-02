
ElvDB = {
	["profileKeys"] = {
		["Alterboi - Kel'Thuzad"] = "OPUI Healer/Tank",
		["Opacus - Kel'Thuzad"] = "OPUI 2.1",
		["Nanathaict - Kel'Thuzad"] = "Alterboi Heals",
		["Uthalip - Kel'Thuzad"] = "OPUI 2.0",
		["Ladoroy - Kel'Thuzad"] = "Alterboi Heals",
		["Snô - Kel'Thuzad"] = "OPUI 2.0",
		["Pubick - Kel'Thuzad"] = "OPUI 2.0",
		["Warredroes - Kel'Thuzad"] = "Warredroes - Kel'Thuzad",
		["Elylarina - Kel'Thuzad"] = "Elylarina - Kel'Thuzad",
		["Ponk - Kel'Thuzad"] = "Healer",
	},
	["gold"] = {
		["Kel'Thuzad"] = {
			["Ponk"] = 10012482,
			["Alterboi"] = 9833968,
			["Uthalip"] = 0,
			["Snô"] = 40479105,
			["Nanathaict"] = 0,
			["Elylarina"] = 0,
			["Pubick"] = 52610791,
			["Warredroes"] = 0,
			["Opacus"] = 522315967,
			["Ladoroy"] = 0,
		},
	},
	["namespaces"] = {
		["LibDualSpec-1.0"] = {
			["char"] = {
				["Alterboi - Kel'Thuzad"] = {
					["profile"] = "Alterboi",
					["enabled"] = true,
					["specGroup"] = 2,
				},
				["Opacus - Kel'Thuzad"] = {
					["profile"] = "OPUI 2.0",
					["specGroup"] = 1,
					["enabled"] = false,
				},
			},
		},
	},
	["global"] = {
		["unitframe"] = {
			["aurafilters"] = {
				["Blacklist"] = {
					["spells"] = {
						["Deadly Poison"] = {
							["enable"] = true,
							["priority"] = 0,
						},
						["Blessing of the Celestials"] = {
							["enable"] = true,
							["priority"] = 0,
						},
						["Dressed to Kill"] = {
							["enable"] = true,
							["priority"] = 0,
						},
						["Blood Elf Illusion"] = {
							["enable"] = true,
							["priority"] = 0,
						},
						["Leeching Poison"] = {
							["enable"] = true,
							["priority"] = 0,
						},
						["Shadow Blades"] = {
							["enable"] = true,
							["priority"] = 0,
						},
						["Flask of Spring Blossoms"] = {
							["enable"] = true,
							["priority"] = 0,
						},
						["Dancing Steel"] = {
							["enable"] = true,
							["priority"] = 0,
						},
						["Presence of the Crane"] = {
							["enable"] = true,
							["priority"] = 0,
						},
						["Mistletoe"] = {
							["enable"] = true,
							["priority"] = 0,
						},
						["Adrenaline Rush"] = {
							["enable"] = true,
							["priority"] = 0,
						},
						["Well Fed"] = {
							["enable"] = true,
							["priority"] = 0,
						},
						["Velocity"] = {
							["enable"] = true,
							["priority"] = 0,
						},
					},
				},
			},
			["AuraBarColors"] = {
				["Slice and Dice"] = {
					["r"] = 1,
					["g"] = 1,
					["b"] = 0.4627450980392157,
				},
				["Recuperate"] = {
					["r"] = 0.807843137254902,
					["g"] = 1,
					["b"] = 0.8274509803921568,
				},
				["Reccuperate"] = {
					["r"] = 0.6509803921568628,
					["g"] = 1,
					["b"] = 0.7098039215686275,
				},
			},
		},
	},
	["profiles"] = {
		["OPUI Healer/Tank"] = {
			["nameplate"] = {
				["fontSize"] = 10,
				["auraFontOutline"] = "OUTLINE",
				["trackauras"] = false,
				["auraFontSize"] = 10,
				["fontOutline"] = "OUTLINE",
				["auraFont"] = "ElvUI Font",
				["font"] = "ElvUI Font",
				["bgMult"] = 0,
			},
			["currentTutorial"] = 11,
			["hideTutorial"] = 1,
			["chat"] = {
				["tabFontOutline"] = "OUTLINE",
				["panelHeight"] = 174,
				["panelBackdrop"] = "HIDEBOTH",
				["tabFontSize"] = 14,
				["fontOutline"] = "OUTLINE",
			},
			["layoutSet"] = "dpsMelee",
			["movers"] = {
				["ElvUF_Raid40Mover"] = "BOTTOMElvUIParentBOTTOM0269",
				["ElvUF_PlayerCastbarMover"] = "BOTTOMElvUIParentBOTTOM-179157",
				["ElvUF_FocusTargetMover"] = "BOTTOMElvUIParentBOTTOM240581",
				["ElvUF_AssistMover"] = "BOTTOMElvUIParentBOTTOM231436",
				["BossButton"] = "TOPElvUIParentTOP0-121",
				["LootFrameMover"] = "TOPLEFTElvUIParentTOPLEFT60-195",
				["ElvUF_Raid10Mover"] = "BOTTOMElvUIParentBOTTOM0354",
				["ElvUF_PartyMover"] = "BOTTOMElvUIParentBOTTOM0316",
				["ElvAB_3"] = "BOTTOMElvUIParentBOTTOM091",
				["ElvAB_5"] = "BOTTOMLEFTElvUIParentBOTTOMLEFT49428",
				["ElvUF_Raid25Mover"] = "BOTTOMElvUIParentBOTTOM0284",
				["ElvUF_PlayerMover"] = "BOTTOMElvUIParentBOTTOM-177178",
				["BossHeaderMover"] = "TOPRIGHTElvUIParentTOPRIGHT-60-516",
				["ElvUF_TargetMover"] = "BOTTOMElvUIParentBOTTOM177178",
				["ElvAB_2"] = "BOTTOMElvUIParentBOTTOM17797",
				["ShiftAB"] = "BOTTOMLEFTElvUIParentBOTTOMLEFT42884",
				["ElvAB_6"] = "BOTTOMElvUIParentBOTTOM-17797",
				["ElvUF_FocusMover"] = "BOTTOMElvUIParentBOTTOM240550",
				["ElvUF_TargetCastbarMover"] = "BOTTOMElvUIParentBOTTOM179157",
				["TooltipMover"] = "BOTTOMRIGHTElvUIParentBOTTOMRIGHT-60309",
				["ElvUF_TankMover"] = "BOTTOMElvUIParentBOTTOM-231436",
				["MicrobarMover"] = "TOPLEFTElvUIParentTOPLEFT3-48",
				["ElvUF_PetMover"] = "BOTTOMElvUIParentBOTTOM0213",
				["VehicleSeatMover"] = "TOPLEFTElvUIParentTOPLEFT60-45",
				["RightChatMover"] = "BOTTOMRIGHTElvUIParentBOTTOMRIGHT-50133",
				["AlertFrameMover"] = "TOPElvUIParentTOP0-86",
				["LeftChatMover"] = "BOTTOMLEFTElvUIParentBOTTOMLEFT50133",
				["ElvUF_TargetTargetMover"] = "BOTTOMElvUIParentBOTTOM0178",
			},
			["tooltip"] = {
				["anchor"] = "ANCHOR",
			},
			["unitframe"] = {
				["fontSize"] = 12,
				["units"] = {
					["tank"] = {
						["height"] = 22,
						["targetsGroup"] = {
							["height"] = 22,
						},
					},
					["raid25"] = {
						["power"] = {
							["height"] = 8,
						},
						["healPrediction"] = true,
						["width"] = 114,
						["health"] = {
							["frequentUpdates"] = true,
						},
						["height"] = 30,
					},
					["raid10"] = {
						["healPrediction"] = true,
						["width"] = 114,
						["health"] = {
							["frequentUpdates"] = true,
						},
						["height"] = 40,
					},
					["focustarget"] = {
						["enable"] = true,
						["width"] = 140,
						["height"] = 20,
					},
					["targettarget"] = {
						["debuffs"] = {
							["enable"] = false,
						},
						["power"] = {
							["height"] = 8,
						},
						["width"] = 118,
						["height"] = 28,
					},
					["player"] = {
						["debuffs"] = {
							["sizeOverride"] = 24,
							["attachTo"] = "BUFFS",
							["fontSize"] = 14,
						},
						["portrait"] = {
							["overlay"] = true,
							["camDistanceScale"] = 1.25,
							["width"] = 42,
						},
						["classbar"] = {
							["enable"] = false,
							["height"] = 8,
						},
						["aurabar"] = {
							["enable"] = false,
						},
						["power"] = {
							["height"] = 8,
							["text_format"] = "[healthcolor][power:current]",
						},
						["width"] = 228,
						["height"] = 28,
						["buffs"] = {
							["fontSize"] = 16,
							["noDuration"] = false,
							["perrow"] = 7,
							["attachTo"] = "FRAME",
							["sizeOverride"] = 0,
							["enable"] = true,
						},
						["castbar"] = {
							["poweroverlay"] = false,
							["width"] = 228,
							["height"] = 14,
							["latency"] = false,
						},
					},
					["assist"] = {
						["height"] = 22,
						["targetsGroup"] = {
							["height"] = 22,
						},
					},
					["party"] = {
						["debuffs"] = {
							["sizeOverride"] = 0,
							["anchorPoint"] = "TOPLEFT",
						},
						["health"] = {
							["orientation"] = "VERTICAL",
							["frequentUpdates"] = true,
							["position"] = "BOTTOMLEFT",
						},
						["roleIcon"] = {
							["position"] = "TOPRIGHT",
						},
						["columnAnchorPoint"] = "RIGHT",
						["power"] = {
							["height"] = 8,
						},
						["healPrediction"] = true,
						["width"] = 114,
						["maxColumns"] = 5,
						["name"] = {
							["position"] = "TOPLEFT",
						},
						["unitsPerColumn"] = 1,
					},
					["raid40"] = {
						["width"] = 114,
						["health"] = {
							["frequentUpdates"] = true,
						},
						["height"] = 18,
					},
					["focus"] = {
						["power"] = {
							["height"] = 8,
							["width"] = "spaced",
						},
						["width"] = 140,
						["name"] = {
							["position"] = "TOP",
						},
						["height"] = 28,
						["castbar"] = {
							["height"] = 4.000041961669922,
							["enable"] = false,
							["icon"] = false,
							["width"] = 68.00003814697266,
						},
					},
					["target"] = {
						["combobar"] = {
							["enable"] = false,
						},
						["debuffs"] = {
							["fontSize"] = 16,
						},
						["portrait"] = {
							["overlay"] = true,
							["camDistanceScale"] = 1.25,
						},
						["castbar"] = {
							["poweroverlay"] = false,
							["height"] = 14,
							["width"] = 228,
						},
						["width"] = 228,
						["height"] = 28,
						["buffs"] = {
							["sizeOverride"] = 24,
							["fontSize"] = 14,
						},
						["power"] = {
							["height"] = 8,
							["text_format"] = "[healthcolor][power:current]",
						},
						["aurabar"] = {
							["enable"] = false,
						},
					},
					["arena"] = {
						["power"] = {
							["height"] = 8,
							["width"] = "spaced",
						},
						["castbar"] = {
							["height"] = 4.000041961669922,
							["icon"] = false,
							["width"] = 118.0000305175781,
						},
					},
					["boss"] = {
						["debuffs"] = {
							["numrows"] = 1,
							["sizeOverride"] = 20,
						},
						["portrait"] = {
							["overlay"] = true,
							["enable"] = true,
						},
						["power"] = {
							["height"] = 8,
							["width"] = "spaced",
						},
						["growthDirection"] = "DOWN",
						["castbar"] = {
							["height"] = 3.99990725517273,
							["icon"] = false,
							["width"] = 87.99997711181641,
						},
						["height"] = 30,
						["buffs"] = {
							["sizeOverride"] = 20,
						},
						["width"] = 180,
					},
					["pet"] = {
						["width"] = 118,
						["height"] = 30,
					},
				},
				["statusbar"] = "ElvUI Norm",
				["colors"] = {
					["auraBarBuff"] = {
						["b"] = 0.2196078431372549,
						["g"] = 0.2196078431372549,
						["r"] = 0.2196078431372549,
					},
					["colorhealthbyvalue"] = false,
					["customhealthbackdrop"] = true,
					["health_backdrop"] = {
						["b"] = 0.5294117647058824,
						["g"] = 0.5294117647058824,
						["r"] = 0.5294117647058824,
					},
					["power"] = {
						["MANA"] = {
							["b"] = 1,
							["g"] = 0.7411764705882353,
							["r"] = 0.6,
						},
						["RUNIC_POWER"] = {
							["g"] = 0.6078431372549019,
							["r"] = 0.592156862745098,
						},
						["ENERGY"] = {
							["b"] = 0.592156862745098,
							["g"] = 0.5568627450980392,
							["r"] = 0.4705882352941176,
						},
						["FOCUS"] = {
							["b"] = 0.5372549019607843,
							["g"] = 0.6862745098039216,
							["r"] = 1,
						},
						["RAGE"] = {
							["b"] = 0.4666666666666667,
							["g"] = 0.4196078431372549,
							["r"] = 1,
						},
					},
					["castColor"] = {
						["b"] = 0.196078431372549,
						["g"] = 0.196078431372549,
						["r"] = 0.196078431372549,
					},
					["tapped"] = {
						["b"] = 0.3411764705882353,
						["g"] = 0.3176470588235294,
						["r"] = 0.7098039215686275,
					},
					["health"] = {
						["b"] = 0.2352941176470588,
						["g"] = 0.2352941176470588,
						["r"] = 0.2352941176470588,
					},
					["reaction"] = {
						["BAD"] = {
							["b"] = 0.1019607843137255,
							["g"] = 0.1019607843137255,
							["r"] = 0.8,
						},
					},
				},
				["fontOutline"] = "OUTLINE",
				["font"] = "ElvUI Font",
			},
			["datatexts"] = {
				["panels"] = {
					["RightChatDataPanel"] = {
						["right"] = "Skada",
					},
					["LeftChatDataPanel"] = {
						["right"] = "Crit Chance",
						["left"] = "Attack Power",
					},
				},
				["fontOutline"] = "OUTLINE",
			},
			["actionbar"] = {
				["bar3"] = {
					["buttons"] = 3,
					["buttonspacing"] = 4,
					["backdrop"] = true,
					["buttonsPerRow"] = 3,
					["buttonsize"] = 34,
				},
				["fontSize"] = 16,
				["fontOutline"] = "OUTLINE",
				["hotkeytext"] = false,
				["bar2"] = {
					["enabled"] = true,
					["buttons"] = 7,
					["buttonspacing"] = 4,
					["backdrop"] = true,
					["buttonsize"] = 28,
				},
				["bar1"] = {
					["backdrop"] = true,
					["buttonsize"] = 34,
					["visibility"] = "[vehicleui] show; [overridebar] show; [petbattle] hide; hide",
				},
				["bar5"] = {
					["buttons"] = 12,
					["buttonspacing"] = 4,
					["mouseover"] = true,
					["buttonsPerRow"] = 4,
					["buttonsize"] = 28,
					["backdrop"] = true,
				},
				["font"] = "ElvUI Font",
				["bar6"] = {
					["buttons"] = 7,
					["buttonspacing"] = 4,
					["backdrop"] = true,
					["buttonsize"] = 28,
				},
				["stanceBar"] = {
					["buttonsize"] = 40,
				},
				["bar4"] = {
					["buttonspacing"] = 4,
					["buttonsize"] = 28,
				},
			},
			["general"] = {
				["interruptAnnounce"] = "SAY",
				["backdropfadecolor"] = {
					["a"] = 1,
					["b"] = 0.1568627450980392,
					["g"] = 0.1568627450980392,
					["r"] = 0.1568627450980392,
				},
				["loginmessage"] = false,
				["topPanel"] = false,
				["autoRoll"] = true,
				["disconnected"] = {
				},
				["tapped"] = {
				},
				["experience"] = {
					["height"] = 12,
					["textSize"] = 10,
				},
				["BUFFS"] = {
				},
				["RAGE"] = {
				},
				["fontSize"] = 14,
				["health_backdrop"] = {
				},
				["bottomPanel"] = false,
				["ENERGY"] = {
				},
				["MANA"] = {
				},
				["backdropcolor"] = {
					["b"] = 0.2352941176470588,
					["g"] = 0.2352941176470588,
					["r"] = 0.2352941176470588,
				},
				["castColor"] = {
				},
				["reputation"] = {
					["height"] = 12,
					["textSize"] = 10,
				},
				["health"] = {
				},
				["bordercolor"] = {
					["b"] = 0.1568627450980392,
					["g"] = 0.1568627450980392,
					["r"] = 0.1568627450980392,
				},
				["FOCUS"] = {
				},
				["DEBUFFS"] = {
				},
				["BAD"] = {
				},
				["RUNIC_POWER"] = {
				},
			},
			["auras"] = {
				["fontSize"] = 12,
				["font"] = "ElvUI Font",
				["fontOutline"] = "OUTLINE",
				["consolidatedBuffs"] = {
					["fontSize"] = 16,
					["fontOutline"] = "OUTLINE",
					["font"] = "ElvUI Font",
				},
			},
		},
		["Alterboi"] = {
			["nameplate"] = {
				["auraFontSize"] = 10,
				["fontSize"] = 10,
				["auraFontOutline"] = "OUTLINE",
				["fontOutline"] = "OUTLINE",
				["auraFont"] = "ElvUI Font",
				["font"] = "ElvUI Font",
				["trackauras"] = false,
				["bgMult"] = 0,
			},
			["currentTutorial"] = 11,
			["general"] = {
				["fontSize"] = 14,
				["interruptAnnounce"] = "SAY",
				["FOCUS"] = {
				},
				["health_backdrop"] = {
				},
				["DEBUFFS"] = {
				},
				["backdropfadecolor"] = {
					["a"] = 1,
					["b"] = 0.1568627450980392,
					["g"] = 0.1568627450980392,
					["r"] = 0.1568627450980392,
				},
				["BAD"] = {
				},
				["ENERGY"] = {
				},
				["loginmessage"] = false,
				["MANA"] = {
				},
				["reputation"] = {
					["height"] = 12,
					["textSize"] = 10,
				},
				["backdropcolor"] = {
					["b"] = 0.2352941176470588,
					["g"] = 0.2352941176470588,
					["r"] = 0.2352941176470588,
				},
				["topPanel"] = false,
				["bordercolor"] = {
					["b"] = 0.1568627450980392,
					["g"] = 0.1568627450980392,
					["r"] = 0.1568627450980392,
				},
				["castColor"] = {
				},
				["disconnected"] = {
				},
				["autoRoll"] = true,
				["tapped"] = {
				},
				["health"] = {
				},
				["experience"] = {
					["height"] = 12,
					["textSize"] = 10,
				},
				["RUNIC_POWER"] = {
				},
				["BUFFS"] = {
				},
				["bottomPanel"] = false,
				["RAGE"] = {
				},
			},
			["movers"] = {
				["ElvUF_Raid40Mover"] = "BOTTOMLEFTElvUIParentBOTTOMLEFT60484",
				["ElvUF_PlayerCastbarMover"] = "BOTTOMElvUIParentBOTTOM-179157",
				["ElvUF_FocusTargetMover"] = "BOTTOMElvUIParentBOTTOM240460",
				["ElvUF_AssistMover"] = "TOPLEFTElvUIParentTOPLEFT60-463",
				["ElvAB_3"] = "BOTTOMElvUIParentBOTTOM091",
				["ElvUF_Raid10Mover"] = "TOPLEFTElvUIParentTOPLEFT60-558",
				["LootFrameMover"] = "TOPLEFTElvUIParentTOPLEFT60-195",
				["BossButton"] = "TOPElvUIParentTOP0-121",
				["ElvAB_5"] = "BOTTOMLEFTElvUIParentBOTTOMLEFT49428",
				["ElvUF_PartyMover"] = "BOTTOMElvUIParentBOTTOM0246",
				["ElvUF_Raid25Mover"] = "TOPLEFTElvUIParentTOPLEFT60-504",
				["ElvUF_PlayerMover"] = "BOTTOMElvUIParentBOTTOM-177178",
				["BossHeaderMover"] = "TOPRIGHTElvUIParentTOPRIGHT-60-516",
				["ElvUF_TargetMover"] = "BOTTOMElvUIParentBOTTOM177178",
				["ElvAB_2"] = "BOTTOMElvUIParentBOTTOM17797",
				["ElvAB_6"] = "BOTTOMElvUIParentBOTTOM-17797",
				["ElvUF_FocusMover"] = "BOTTOMElvUIParentBOTTOM240428",
				["ElvUF_TargetCastbarMover"] = "BOTTOMElvUIParentBOTTOM179157",
				["TooltipMover"] = "BOTTOMRIGHTElvUIParentBOTTOMRIGHT-60309",
				["ElvUF_TankMover"] = "TOPLEFTElvUIParentTOPLEFT60-410",
				["MicrobarMover"] = "TOPLEFTElvUIParentTOPLEFT3-48",
				["ElvUF_PetMover"] = "BOTTOMElvUIParentBOTTOM0213",
				["VehicleSeatMover"] = "TOPLEFTElvUIParentTOPLEFT60-45",
				["RightChatMover"] = "BOTTOMRIGHTElvUIParentBOTTOMRIGHT-50133",
				["AlertFrameMover"] = "TOPElvUIParentTOP0-86",
				["LeftChatMover"] = "BOTTOMLEFTElvUIParentBOTTOMLEFT50133",
				["ElvUF_TargetTargetMover"] = "BOTTOMElvUIParentBOTTOM0178",
			},
			["tooltip"] = {
				["anchor"] = "ANCHOR",
			},
			["hideTutorial"] = 1,
			["auras"] = {
				["fontSize"] = 12,
				["visualtimer"] = {
					["threshold"] = {
						["buffs"] = true,
					},
				},
				["fontOutline"] = "OUTLINE",
				["consolidatedBuffs"] = {
					["fontSize"] = 16,
					["font"] = "ElvUI Font",
					["fontOutline"] = "OUTLINE",
				},
				["font"] = "ElvUI Font",
			},
			["unitframe"] = {
				["fontSize"] = 12,
				["colors"] = {
					["auraBarBuff"] = {
						["b"] = 0.2196078431372549,
						["g"] = 0.2196078431372549,
						["r"] = 0.2196078431372549,
					},
					["power"] = {
						["MANA"] = {
							["b"] = 1,
							["g"] = 0.7411764705882353,
							["r"] = 0.6,
						},
						["RUNIC_POWER"] = {
							["g"] = 0.6078431372549019,
							["r"] = 0.592156862745098,
						},
						["ENERGY"] = {
							["b"] = 0.592156862745098,
							["g"] = 0.5568627450980392,
							["r"] = 0.4705882352941176,
						},
						["FOCUS"] = {
							["b"] = 0.5372549019607843,
							["g"] = 0.6862745098039216,
							["r"] = 1,
						},
						["RAGE"] = {
							["b"] = 0.4666666666666667,
							["g"] = 0.4196078431372549,
							["r"] = 1,
						},
					},
					["castColor"] = {
						["b"] = 0.196078431372549,
						["g"] = 0.196078431372549,
						["r"] = 0.196078431372549,
					},
					["colorhealthbyvalue"] = false,
					["customhealthbackdrop"] = true,
					["health_backdrop"] = {
						["b"] = 0.5294117647058824,
						["g"] = 0.5294117647058824,
						["r"] = 0.5294117647058824,
					},
					["health"] = {
						["b"] = 0.2352941176470588,
						["g"] = 0.2352941176470588,
						["r"] = 0.2352941176470588,
					},
					["tapped"] = {
						["b"] = 0.3411764705882353,
						["g"] = 0.3176470588235294,
						["r"] = 0.7098039215686275,
					},
					["reaction"] = {
						["BAD"] = {
							["b"] = 0.1019607843137255,
							["g"] = 0.1019607843137255,
							["r"] = 0.8,
						},
					},
				},
				["fontOutline"] = "OUTLINE",
				["font"] = "ElvUI Font",
				["statusbar"] = "ElvUI Norm",
				["units"] = {
					["tank"] = {
						["height"] = 22,
						["targetsGroup"] = {
							["height"] = 22,
						},
					},
					["raid10"] = {
						["height"] = 40,
					},
					["focustarget"] = {
						["enable"] = true,
						["height"] = 20,
						["width"] = 140,
					},
					["pet"] = {
						["height"] = 30,
						["width"] = 118,
					},
					["targettarget"] = {
						["height"] = 28,
						["debuffs"] = {
							["enable"] = false,
						},
						["power"] = {
							["height"] = 8,
						},
						["width"] = 118,
					},
					["raid25"] = {
						["health"] = {
							["orientation"] = "VERTICAL",
						},
						["height"] = 40,
					},
					["boss"] = {
						["width"] = 180,
						["debuffs"] = {
							["numrows"] = 1,
							["sizeOverride"] = 20,
						},
						["portrait"] = {
							["overlay"] = true,
							["enable"] = true,
						},
						["castbar"] = {
							["height"] = 3.99990725517273,
							["icon"] = false,
							["width"] = 87.99997711181641,
						},
						["height"] = 30,
						["buffs"] = {
							["sizeOverride"] = 20,
						},
						["power"] = {
							["height"] = 8,
							["width"] = "spaced",
						},
						["growthDirection"] = "DOWN",
					},
					["assist"] = {
						["height"] = 22,
						["targetsGroup"] = {
							["height"] = 22,
						},
					},
					["focus"] = {
						["name"] = {
							["position"] = "TOP",
						},
						["power"] = {
							["height"] = 8,
							["width"] = "spaced",
						},
						["height"] = 28,
						["castbar"] = {
							["height"] = 4.000041961669922,
							["icon"] = false,
							["width"] = 68.00003814697266,
						},
						["width"] = 140,
					},
					["target"] = {
						["combobar"] = {
							["enable"] = false,
						},
						["debuffs"] = {
							["enable"] = false,
						},
						["portrait"] = {
							["overlay"] = true,
							["camDistanceScale"] = 1.25,
						},
						["smartAuraDisplay"] = "SHOW_DEBUFFS_ON_FRIENDLIES",
						["width"] = 228,
						["castbar"] = {
							["height"] = 14,
							["poweroverlay"] = false,
							["width"] = 228,
						},
						["height"] = 28,
						["buffs"] = {
							["playerOnly"] = {
								["friendly"] = true,
							},
						},
						["power"] = {
							["height"] = 8,
							["text_format"] = "[healthcolor][power:current]",
						},
						["aurabar"] = {
							["attachTo"] = "BUFFS",
						},
					},
					["arena"] = {
						["castbar"] = {
							["height"] = 4.000041961669922,
							["icon"] = false,
							["width"] = 118.0000305175781,
						},
						["power"] = {
							["height"] = 8,
							["width"] = "spaced",
						},
					},
					["party"] = {
						["roleIcon"] = {
							["position"] = "RIGHT",
						},
						["debuffs"] = {
							["anchorPoint"] = "BOTTOMLEFT",
							["fontSize"] = 18,
							["enable"] = false,
							["sizeOverride"] = 28,
							["perrow"] = 4,
						},
						["point"] = "LEFT",
						["power"] = {
							["text_format"] = "",
						},
						["xOffset"] = 3,
						["yOffset"] = 0,
						["health"] = {
							["text_format"] = "",
						},
						["columnSpacing"] = 4,
						["width"] = 114,
						["height"] = 28,
					},
					["player"] = {
						["debuffs"] = {
							["sizeOverride"] = 28,
						},
						["portrait"] = {
							["overlay"] = true,
							["camDistanceScale"] = 1.25,
							["width"] = 42,
						},
						["castbar"] = {
							["height"] = 14,
							["poweroverlay"] = false,
							["width"] = 228,
							["latency"] = false,
						},
						["healPrediction"] = false,
						["width"] = 228,
						["height"] = 38,
						["buffs"] = {
							["sizeOverride"] = 32,
						},
						["classbar"] = {
							["height"] = 8,
						},
						["power"] = {
							["height"] = 8,
							["text_format"] = "[healthcolor][power:current]",
						},
					},
				},
			},
			["datatexts"] = {
				["panels"] = {
					["RightChatDataPanel"] = {
						["right"] = "Skada",
					},
					["LeftChatDataPanel"] = {
						["left"] = "Attack Power",
						["right"] = "Crit Chance",
					},
				},
				["fontOutline"] = "OUTLINE",
			},
			["actionbar"] = {
				["bar3"] = {
					["buttons"] = 3,
					["buttonspacing"] = 4,
					["buttonsPerRow"] = 3,
					["backdrop"] = true,
					["buttonsize"] = 34,
				},
				["bar6"] = {
					["buttonspacing"] = 4,
					["backdrop"] = true,
					["buttonsize"] = 28,
					["buttons"] = 7,
				},
				["bar2"] = {
					["enabled"] = true,
					["buttons"] = 7,
					["buttonspacing"] = 4,
					["backdrop"] = true,
					["buttonsize"] = 28,
				},
				["hotkeytext"] = false,
				["bar5"] = {
					["backdrop"] = true,
					["buttons"] = 12,
					["buttonspacing"] = 4,
					["buttonsPerRow"] = 4,
					["buttonsize"] = 28,
					["mouseover"] = true,
				},
				["font"] = "ElvUI Font",
				["fontOutline"] = "OUTLINE",
				["bar1"] = {
					["backdrop"] = true,
					["buttonsize"] = 34,
					["visibility"] = "[vehicleui] show; [overridebar] show; [petbattle] hide; hide",
				},
				["fontSize"] = 16,
				["bar4"] = {
					["buttonspacing"] = 4,
					["buttonsize"] = 28,
				},
			},
			["layoutSet"] = "dpsMelee",
			["chat"] = {
				["tabFontOutline"] = "OUTLINE",
				["fontOutline"] = "OUTLINE",
				["panelHeight"] = 174,
				["tabFontSize"] = 14,
				["panelBackdrop"] = "HIDEBOTH",
			},
		},
		["Default"] = {
			["unitframe"] = {
				["units"] = {
					["target"] = {
						["castbar"] = {
							["height"] = 5.000001907348633,
							["icon"] = false,
						},
					},
					["boss"] = {
						["castbar"] = {
							["height"] = 2.000020980834961,
							["icon"] = false,
							["width"] = 215.9999694824219,
						},
					},
					["player"] = {
						["castbar"] = {
							["height"] = 5.000001907348633,
							["icon"] = false,
							["width"] = 269.9999694824219,
						},
					},
					["arena"] = {
						["castbar"] = {
							["height"] = 2.000020980834961,
							["icon"] = false,
							["width"] = 193,
						},
					},
				},
			},
			["movers"] = {
				["ExperienceBarMover"] = "TOPElvUIParentTOP00",
			},
		},
		["OPUI Sno"] = {
			["nameplate"] = {
				["auraFontSize"] = 10,
				["fontSize"] = 10,
				["auraFontOutline"] = "OUTLINE",
				["fontOutline"] = "OUTLINE",
				["bgMult"] = 0,
				["font"] = "ElvUI Font",
				["trackauras"] = false,
				["auraFont"] = "ElvUI Font",
			},
			["currentTutorial"] = 11,
			["general"] = {
				["fontSize"] = 14,
				["interruptAnnounce"] = "SAY",
				["FOCUS"] = {
				},
				["health_backdrop"] = {
				},
				["bottomPanel"] = false,
				["backdropfadecolor"] = {
					["a"] = 0.7800000011920929,
					["b"] = 0.1568627450980392,
					["g"] = 0.1568627450980392,
					["r"] = 0.1568627450980392,
				},
				["BAD"] = {
				},
				["ENERGY"] = {
				},
				["loginmessage"] = false,
				["castColor"] = {
				},
				["bordercolor"] = {
					["b"] = 0.1568627450980392,
					["g"] = 0.1568627450980392,
					["r"] = 0.1568627450980392,
				},
				["backdropcolor"] = {
					["b"] = 0.2352941176470588,
					["g"] = 0.2352941176470588,
					["r"] = 0.2352941176470588,
				},
				["topPanel"] = false,
				["autoRoll"] = true,
				["tapped"] = {
				},
				["disconnected"] = {
				},
				["experience"] = {
					["height"] = 12,
					["textSize"] = 10,
				},
				["RUNIC_POWER"] = {
				},
				["health"] = {
				},
				["DEBUFFS"] = {
				},
				["reputation"] = {
					["height"] = 12,
					["textSize"] = 10,
				},
				["BUFFS"] = {
				},
				["MANA"] = {
				},
				["RAGE"] = {
				},
			},
			["movers"] = {
				["ElvUF_Raid40Mover"] = "BOTTOMLEFTElvUIParentBOTTOMLEFT60484",
				["ElvUF_PlayerCastbarMover"] = "BOTTOMElvUIParentBOTTOM-179157",
				["LeftChatMover"] = "BOTTOMLEFTElvUIParentBOTTOMLEFT60133",
				["ElvUF_Raid10Mover"] = "TOPLEFTElvUIParentTOPLEFT60-558",
				["ElvUF_AssistMover"] = "TOPLEFTElvUIParentTOPLEFT60-452",
				["ElvAB_3"] = "BOTTOMElvUIParentBOTTOM091",
				["ElvAB_5"] = "BOTTOMLEFTElvUIParentBOTTOMLEFT49428",
				["LootFrameMover"] = "TOPLEFTElvUIParentTOPLEFT40-195",
				["ElvUF_FocusTargetMover"] = "BOTTOMElvUIParentBOTTOM240460",
				["ElvUF_PartyMover"] = "BOTTOMElvUIParentBOTTOM058",
				["ElvAB_2"] = "BOTTOMRIGHTElvUIParentBOTTOMRIGHT-49428",
				["ElvUF_PlayerMover"] = "BOTTOMElvUIParentBOTTOM-177178",
				["ShiftAB"] = "BOTTOMLEFTElvUIParentBOTTOMLEFT508131",
				["ElvAB_6"] = "BOTTOMElvUIParentBOTTOM-17797",
				["ElvUF_FocusMover"] = "BOTTOMElvUIParentBOTTOM240428",
				["ElvUF_TargetCastbarMover"] = "BOTTOMElvUIParentBOTTOM179157",
				["TooltipMover"] = "BOTTOMRIGHTElvUIParentBOTTOMRIGHT-60309",
				["ElvUF_TankMover"] = "TOPLEFTElvUIParentTOPLEFT60-410",
				["BossHeaderMover"] = "TOPRIGHTElvUIParentTOPRIGHT-60-495",
				["ElvUF_PetMover"] = "BOTTOMElvUIParentBOTTOM0219",
				["ElvUF_Raid25Mover"] = "TOPLEFTElvUIParentTOPLEFT60-504",
				["RightChatMover"] = "BOTTOMRIGHTElvUIParentBOTTOMRIGHT-60133",
				["AlertFrameMover"] = "TOPElvUIParentTOP0-86",
				["ElvUF_TargetMover"] = "BOTTOMElvUIParentBOTTOM177178",
				["ElvUF_TargetTargetMover"] = "BOTTOMElvUIParentBOTTOM0178",
			},
			["tooltip"] = {
				["anchor"] = "ANCHOR",
			},
			["hideTutorial"] = 1,
			["auras"] = {
				["consolidatedBuffs"] = {
					["fontSize"] = 16,
					["font"] = "ElvUI Font",
					["fontOutline"] = "OUTLINE",
				},
				["fontSize"] = 12,
				["font"] = "ElvUI Font",
				["fontOutline"] = "OUTLINE",
			},
			["unitframe"] = {
				["fontSize"] = 12,
				["colors"] = {
					["auraBarBuff"] = {
						["b"] = 0.2196078431372549,
						["g"] = 0.2196078431372549,
						["r"] = 0.2196078431372549,
					},
					["power"] = {
						["MANA"] = {
							["b"] = 1,
							["g"] = 0.7411764705882353,
							["r"] = 0.6,
						},
						["RUNIC_POWER"] = {
							["g"] = 0.6078431372549019,
							["r"] = 0.592156862745098,
						},
						["ENERGY"] = {
							["b"] = 0.592156862745098,
							["g"] = 0.5568627450980392,
							["r"] = 0.4705882352941176,
						},
						["FOCUS"] = {
							["b"] = 0.5372549019607843,
							["g"] = 0.6862745098039216,
							["r"] = 1,
						},
						["RAGE"] = {
							["b"] = 0.4666666666666667,
							["g"] = 0.4196078431372549,
							["r"] = 1,
						},
					},
					["castColor"] = {
						["b"] = 0.196078431372549,
						["g"] = 0.196078431372549,
						["r"] = 0.196078431372549,
					},
					["colorhealthbyvalue"] = false,
					["customhealthbackdrop"] = true,
					["health_backdrop"] = {
						["b"] = 0.5294117647058824,
						["g"] = 0.5294117647058824,
						["r"] = 0.5294117647058824,
					},
					["reaction"] = {
						["BAD"] = {
							["b"] = 0.1019607843137255,
							["g"] = 0.1019607843137255,
							["r"] = 0.8,
						},
					},
					["health"] = {
						["b"] = 0.2352941176470588,
						["g"] = 0.2352941176470588,
						["r"] = 0.2352941176470588,
					},
					["tapped"] = {
						["b"] = 0.3411764705882353,
						["g"] = 0.3176470588235294,
						["r"] = 0.7098039215686275,
					},
				},
				["fontOutline"] = "OUTLINE",
				["font"] = "ElvUI Font",
				["statusbar"] = "ElvUI Norm",
				["units"] = {
					["tank"] = {
						["height"] = 22,
						["targetsGroup"] = {
							["height"] = 22,
						},
					},
					["raid10"] = {
						["height"] = 40,
					},
					["focustarget"] = {
						["enable"] = true,
						["height"] = 20,
						["width"] = 140,
					},
					["targettarget"] = {
						["height"] = 30,
						["debuffs"] = {
							["enable"] = false,
						},
						["width"] = 118,
						["power"] = {
							["height"] = 8,
						},
					},
					["party"] = {
						["roleIcon"] = {
							["position"] = "RIGHT",
						},
						["debuffs"] = {
							["anchorPoint"] = "BOTTOMLEFT",
							["fontSize"] = 18,
							["enable"] = false,
							["sizeOverride"] = 28,
							["perrow"] = 4,
						},
						["point"] = "LEFT",
						["power"] = {
							["text_format"] = "",
						},
						["xOffset"] = 3,
						["yOffset"] = 0,
						["health"] = {
							["text_format"] = "",
						},
						["columnSpacing"] = 4,
						["height"] = 28,
						["width"] = 114,
					},
					["player"] = {
						["debuffs"] = {
							["fontSize"] = 14,
						},
						["portrait"] = {
							["overlay"] = true,
							["camDistanceScale"] = 1.25,
							["width"] = 42,
						},
						["power"] = {
							["height"] = 8,
							["text_format"] = "[healthcolor][power:current]",
						},
						["healPrediction"] = false,
						["width"] = 228,
						["height"] = 30,
						["buffs"] = {
							["fontSize"] = 14,
						},
						["classbar"] = {
							["enable"] = false,
							["height"] = 8,
						},
						["castbar"] = {
							["height"] = 14,
							["latency"] = false,
							["width"] = 228,
							["poweroverlay"] = false,
						},
					},
					["raid25"] = {
						["health"] = {
							["orientation"] = "VERTICAL",
						},
						["height"] = 40,
					},
					["focus"] = {
						["name"] = {
							["position"] = "TOP",
						},
						["power"] = {
							["height"] = 8,
							["width"] = "spaced",
						},
						["height"] = 28,
						["castbar"] = {
							["height"] = 4.000041961669922,
							["icon"] = false,
							["width"] = 68.00003814697266,
						},
						["width"] = 140,
					},
					["target"] = {
						["combobar"] = {
							["enable"] = false,
						},
						["debuffs"] = {
							["enable"] = false,
							["fontSize"] = 14,
						},
						["portrait"] = {
							["overlay"] = true,
							["camDistanceScale"] = 1.25,
						},
						["smartAuraDisplay"] = "SHOW_BUFFS_ON_FRIENDLIES",
						["width"] = 228,
						["power"] = {
							["height"] = 8,
							["text_format"] = "[healthcolor][power:current]",
						},
						["height"] = 30,
						["buffs"] = {
							["fontSize"] = 14,
						},
						["castbar"] = {
							["height"] = 14,
							["width"] = 228,
							["poweroverlay"] = false,
						},
						["aurabar"] = {
							["attachTo"] = "BUFFS",
						},
					},
					["arena"] = {
						["castbar"] = {
							["height"] = 4.000041961669922,
							["icon"] = false,
							["width"] = 118.0000305175781,
						},
						["power"] = {
							["height"] = 8,
							["width"] = "spaced",
						},
					},
					["assist"] = {
						["height"] = 22,
						["targetsGroup"] = {
							["height"] = 22,
						},
					},
					["boss"] = {
						["growthDirection"] = "DOWN",
						["debuffs"] = {
							["numrows"] = 1,
							["sizeOverride"] = 20,
						},
						["portrait"] = {
							["overlay"] = true,
							["enable"] = true,
						},
						["castbar"] = {
							["height"] = 3.99990725517273,
							["icon"] = false,
							["width"] = 87.99997711181641,
						},
						["height"] = 38,
						["buffs"] = {
							["sizeOverride"] = 20,
						},
						["power"] = {
							["height"] = 8,
							["width"] = "spaced",
						},
						["width"] = 180,
					},
				},
			},
			["datatexts"] = {
				["panels"] = {
					["RightChatDataPanel"] = {
						["right"] = "Skada",
					},
					["LeftChatDataPanel"] = {
						["left"] = "Attack Power",
						["right"] = "Crit Chance",
					},
				},
				["fontOutline"] = "OUTLINE",
			},
			["actionbar"] = {
				["bar3"] = {
					["buttons"] = 3,
					["buttonspacing"] = 4,
					["buttonsPerRow"] = 3,
					["backdrop"] = true,
					["buttonsize"] = 34,
				},
				["bar6"] = {
					["buttonspacing"] = 4,
					["buttonsize"] = 28,
					["backdrop"] = true,
					["buttons"] = 7,
				},
				["bar2"] = {
					["enabled"] = true,
					["buttonspacing"] = 4,
					["buttonsPerRow"] = 4,
					["backdrop"] = true,
					["buttonsize"] = 28,
				},
				["hotkeytext"] = false,
				["bar5"] = {
					["buttons"] = 12,
					["buttonspacing"] = 4,
					["buttonsPerRow"] = 4,
					["backdrop"] = true,
					["buttonsize"] = 28,
				},
				["font"] = "ElvUI Font",
				["fontOutline"] = "OUTLINE",
				["bar1"] = {
					["visibility"] = "[vehicleui] show; [overridebar] show; [petbattle] hide; hide",
					["backdrop"] = true,
					["buttonsize"] = 34,
				},
				["fontSize"] = 16,
				["bar4"] = {
					["buttonspacing"] = 4,
					["mouseover"] = true,
					["buttonsize"] = 28,
				},
			},
			["layoutSet"] = "dpsMelee",
			["chat"] = {
				["tabFontOutline"] = "OUTLINE",
				["fontOutline"] = "OUTLINE",
				["panelHeight"] = 174,
				["tabFontSize"] = 14,
				["panelBackdrop"] = "HIDEBOTH",
			},
		},
		["Alterboi Heals"] = {
			["nameplate"] = {
				["auraFontSize"] = 10,
				["fontSize"] = 10,
				["auraFontOutline"] = "OUTLINE",
				["fontOutline"] = "OUTLINE",
				["bgMult"] = 0,
				["font"] = "ElvUI Font",
				["trackauras"] = false,
				["auraFont"] = "ElvUI Font",
			},
			["currentTutorial"] = 11,
			["general"] = {
				["fontSize"] = 14,
				["interruptAnnounce"] = "SAY",
				["FOCUS"] = {
				},
				["health_backdrop"] = {
				},
				["DEBUFFS"] = {
				},
				["backdropfadecolor"] = {
					["a"] = 1,
					["r"] = 0.1568627450980392,
					["g"] = 0.1568627450980392,
					["b"] = 0.1568627450980392,
				},
				["loginmessage"] = false,
				["ENERGY"] = {
				},
				["MANA"] = {
				},
				["autoRoll"] = true,
				["topPanel"] = false,
				["backdropcolor"] = {
					["r"] = 0.2352941176470588,
					["g"] = 0.2352941176470588,
					["b"] = 0.2352941176470588,
				},
				["castColor"] = {
				},
				["bordercolor"] = {
					["r"] = 0.1568627450980392,
					["g"] = 0.1568627450980392,
					["b"] = 0.1568627450980392,
				},
				["tapped"] = {
				},
				["disconnected"] = {
				},
				["experience"] = {
					["height"] = 12,
					["textSize"] = 10,
				},
				["RUNIC_POWER"] = {
				},
				["health"] = {
				},
				["bottomPanel"] = false,
				["reputation"] = {
					["height"] = 12,
					["textSize"] = 10,
				},
				["BUFFS"] = {
				},
				["BAD"] = {
				},
				["RAGE"] = {
				},
			},
			["movers"] = {
				["ElvUF_Raid40Mover"] = "BOTTOMElvUIParentBOTTOM0269",
				["ElvUF_PlayerCastbarMover"] = "BOTTOMElvUIParentBOTTOM-179157",
				["ElvUF_FocusTargetMover"] = "BOTTOMElvUIParentBOTTOM240581",
				["ElvUF_TargetTargetMover"] = "BOTTOMElvUIParentBOTTOM0178",
				["LeftChatMover"] = "BOTTOMLEFTElvUIParentBOTTOMLEFT50133",
				["ElvAB_5"] = "BOTTOMLEFTElvUIParentBOTTOMLEFT49428",
				["ElvUF_Raid10Mover"] = "BOTTOMElvUIParentBOTTOM0354",
				["RightChatMover"] = "BOTTOMRIGHTElvUIParentBOTTOMRIGHT-50133",
				["ElvAB_3"] = "BOTTOMElvUIParentBOTTOM091",
				["LootFrameMover"] = "TOPLEFTElvUIParentTOPLEFT60-195",
				["VehicleSeatMover"] = "TOPLEFTElvUIParentTOPLEFT60-45",
				["ElvUF_PetMover"] = "BOTTOMElvUIParentBOTTOM0213",
				["MicrobarMover"] = "TOPLEFTElvUIParentTOPLEFT3-48",
				["ElvAB_2"] = "BOTTOMElvUIParentBOTTOM17797",
				["ElvUF_TargetMover"] = "BOTTOMElvUIParentBOTTOM177178",
				["ShiftAB"] = "BOTTOMLEFTElvUIParentBOTTOMLEFT42884",
				["ElvUF_TargetCastbarMover"] = "BOTTOMElvUIParentBOTTOM179157",
				["ElvUF_FocusMover"] = "BOTTOMElvUIParentBOTTOM240550",
				["ElvAB_6"] = "BOTTOMElvUIParentBOTTOM-17797",
				["TooltipMover"] = "BOTTOMRIGHTElvUIParentBOTTOMRIGHT-60309",
				["ElvUF_TankMover"] = "BOTTOMElvUIParentBOTTOM-231436",
				["BossHeaderMover"] = "TOPRIGHTElvUIParentTOPRIGHT-60-516",
				["ElvUF_PlayerMover"] = "BOTTOMElvUIParentBOTTOM-177178",
				["ElvUF_Raid25Mover"] = "BOTTOMElvUIParentBOTTOM0284",
				["ElvUF_PartyMover"] = "BOTTOMElvUIParentBOTTOM0316",
				["AlertFrameMover"] = "TOPElvUIParentTOP0-86",
				["BossButton"] = "TOPElvUIParentTOP0-121",
				["ElvUF_AssistMover"] = "BOTTOMElvUIParentBOTTOM231436",
			},
			["tooltip"] = {
				["anchor"] = "ANCHOR",
			},
			["hideTutorial"] = 1,
			["chat"] = {
				["tabFontOutline"] = "OUTLINE",
				["fontOutline"] = "OUTLINE",
				["panelHeight"] = 174,
				["tabFontSize"] = 14,
				["panelBackdrop"] = "HIDEBOTH",
			},
			["unitframe"] = {
				["fontSize"] = 12,
				["colors"] = {
					["auraBarBuff"] = {
						["r"] = 0.2196078431372549,
						["g"] = 0.2196078431372549,
						["b"] = 0.2196078431372549,
					},
					["power"] = {
						["MANA"] = {
							["r"] = 0.6,
							["g"] = 0.7411764705882353,
							["b"] = 1,
						},
						["RUNIC_POWER"] = {
							["g"] = 0.6078431372549019,
							["r"] = 0.592156862745098,
						},
						["RAGE"] = {
							["r"] = 1,
							["g"] = 0.4196078431372549,
							["b"] = 0.4666666666666667,
						},
						["FOCUS"] = {
							["r"] = 1,
							["g"] = 0.6862745098039216,
							["b"] = 0.5372549019607843,
						},
						["ENERGY"] = {
							["r"] = 0.4705882352941176,
							["g"] = 0.5568627450980392,
							["b"] = 0.592156862745098,
						},
					},
					["castColor"] = {
						["r"] = 0.196078431372549,
						["g"] = 0.196078431372549,
						["b"] = 0.196078431372549,
					},
					["colorhealthbyvalue"] = false,
					["customhealthbackdrop"] = true,
					["health_backdrop"] = {
						["r"] = 0.5294117647058824,
						["g"] = 0.5294117647058824,
						["b"] = 0.5294117647058824,
					},
					["health"] = {
						["r"] = 0.2352941176470588,
						["g"] = 0.2352941176470588,
						["b"] = 0.2352941176470588,
					},
					["reaction"] = {
						["BAD"] = {
							["r"] = 0.8,
							["g"] = 0.1019607843137255,
							["b"] = 0.1019607843137255,
						},
					},
					["tapped"] = {
						["r"] = 0.7098039215686275,
						["g"] = 0.3176470588235294,
						["b"] = 0.3411764705882353,
					},
				},
				["fontOutline"] = "OUTLINE",
				["font"] = "ElvUI Font",
				["statusbar"] = "ElvUI Norm",
				["units"] = {
					["tank"] = {
						["height"] = 22,
						["targetsGroup"] = {
							["height"] = 22,
						},
					},
					["targettarget"] = {
						["height"] = 28,
						["debuffs"] = {
							["enable"] = false,
						},
						["width"] = 118,
						["power"] = {
							["height"] = 8,
						},
					},
					["raid10"] = {
						["height"] = 40,
						["healPrediction"] = true,
						["health"] = {
							["frequentUpdates"] = true,
						},
						["width"] = 114,
					},
					["focustarget"] = {
						["enable"] = true,
						["height"] = 20,
						["width"] = 140,
					},
					["pet"] = {
						["height"] = 30,
						["width"] = 118,
					},
					["boss"] = {
						["width"] = 180,
						["debuffs"] = {
							["numrows"] = 1,
							["sizeOverride"] = 20,
						},
						["portrait"] = {
							["overlay"] = true,
							["enable"] = true,
						},
						["power"] = {
							["height"] = 8,
							["width"] = "spaced",
						},
						["height"] = 30,
						["buffs"] = {
							["sizeOverride"] = 20,
						},
						["castbar"] = {
							["height"] = 3.99990725517273,
							["icon"] = false,
							["width"] = 87.99997711181641,
						},
						["growthDirection"] = "DOWN",
					},
					["target"] = {
						["combobar"] = {
							["enable"] = false,
						},
						["debuffs"] = {
							["fontSize"] = 16,
						},
						["portrait"] = {
							["overlay"] = true,
							["camDistanceScale"] = 1.25,
						},
						["castbar"] = {
							["height"] = 14,
							["width"] = 228,
							["poweroverlay"] = false,
						},
						["width"] = 228,
						["height"] = 28,
						["buffs"] = {
							["sizeOverride"] = 24,
							["fontSize"] = 14,
						},
						["power"] = {
							["height"] = 8,
							["text_format"] = "[healthcolor][power:current]",
						},
						["aurabar"] = {
							["enable"] = false,
						},
					},
					["party"] = {
						["roleIcon"] = {
							["position"] = "RIGHT",
						},
						["columnAnchorPoint"] = "RIGHT",
						["power"] = {
							["height"] = 8,
							["text_format"] = "",
						},
						["healPrediction"] = true,
						["width"] = 114,
						["maxColumns"] = 5,
						["health"] = {
							["orientation"] = "VERTICAL",
							["frequentUpdates"] = true,
							["text_format"] = "",
							["position"] = "BOTTOMLEFT",
						},
						["height"] = 40,
						["debuffs"] = {
							["anchorPoint"] = "TOPLEFT",
							["sizeOverride"] = 0,
						},
						["unitsPerColumn"] = 1,
					},
					["raid40"] = {
						["height"] = 18,
						["health"] = {
							["frequentUpdates"] = true,
						},
						["width"] = 114,
					},
					["focus"] = {
						["name"] = {
							["position"] = "TOP",
						},
						["power"] = {
							["height"] = 8,
							["width"] = "spaced",
						},
						["height"] = 28,
						["castbar"] = {
							["enable"] = false,
							["height"] = 4.000041961669922,
							["icon"] = false,
							["width"] = 68.00003814697266,
						},
						["width"] = 140,
					},
					["raid25"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
						["power"] = {
							["height"] = 8,
						},
						["height"] = 30,
						["healPrediction"] = true,
						["width"] = 114,
					},
					["arena"] = {
						["power"] = {
							["height"] = 8,
							["width"] = "spaced",
						},
						["castbar"] = {
							["height"] = 4.000041961669922,
							["icon"] = false,
							["width"] = 118.0000305175781,
						},
					},
					["player"] = {
						["debuffs"] = {
							["attachTo"] = "BUFFS",
							["sizeOverride"] = 24,
							["fontSize"] = 14,
						},
						["portrait"] = {
							["overlay"] = true,
							["camDistanceScale"] = 1.25,
							["width"] = 42,
						},
						["power"] = {
							["height"] = 8,
							["text_format"] = "[healthcolor][power:current]",
						},
						["width"] = 228,
						["castbar"] = {
							["height"] = 14,
							["latency"] = false,
							["width"] = 228,
							["poweroverlay"] = false,
						},
						["height"] = 28,
						["buffs"] = {
							["attachTo"] = "FRAME",
							["sizeOverride"] = 0,
							["noDuration"] = false,
							["enable"] = true,
							["fontSize"] = 16,
							["perrow"] = 7,
						},
						["classbar"] = {
							["height"] = 8,
							["enable"] = false,
						},
						["aurabar"] = {
							["enable"] = false,
						},
					},
					["assist"] = {
						["height"] = 22,
						["targetsGroup"] = {
							["height"] = 22,
						},
					},
				},
			},
			["datatexts"] = {
				["panels"] = {
					["RightChatDataPanel"] = {
						["right"] = "Skada",
					},
					["LeftChatDataPanel"] = {
						["left"] = "Attack Power",
						["right"] = "Crit Chance",
					},
				},
				["fontOutline"] = "OUTLINE",
			},
			["actionbar"] = {
				["bar3"] = {
					["buttons"] = 3,
					["buttonspacing"] = 4,
					["buttonsPerRow"] = 3,
					["backdrop"] = true,
					["buttonsize"] = 34,
				},
				["bar6"] = {
					["buttonspacing"] = 4,
					["buttonsize"] = 28,
					["backdrop"] = true,
					["buttons"] = 7,
				},
				["bar2"] = {
					["enabled"] = true,
					["buttons"] = 7,
					["buttonspacing"] = 4,
					["backdrop"] = true,
					["buttonsize"] = 28,
				},
				["hotkeytext"] = false,
				["bar5"] = {
					["backdrop"] = true,
					["buttons"] = 12,
					["buttonspacing"] = 4,
					["buttonsPerRow"] = 4,
					["buttonsize"] = 28,
					["mouseover"] = true,
				},
				["font"] = "ElvUI Font",
				["fontOutline"] = "OUTLINE",
				["bar1"] = {
					["backdrop"] = true,
					["buttonsize"] = 34,
					["visibility"] = "[vehicleui] show; [overridebar] show; [petbattle] hide; hide",
				},
				["stanceBar"] = {
					["buttonsize"] = 40,
				},
				["fontSize"] = 16,
				["bar4"] = {
					["buttonspacing"] = 4,
					["buttonsize"] = 28,
				},
			},
			["layoutSet"] = "dpsMelee",
			["auras"] = {
				["consolidatedBuffs"] = {
					["fontSize"] = 16,
					["font"] = "ElvUI Font",
					["fontOutline"] = "OUTLINE",
				},
				["fontSize"] = 12,
				["font"] = "ElvUI Font",
				["fontOutline"] = "OUTLINE",
			},
		},
		["OPUI Opacus"] = {
			["nameplate"] = {
				["auraFontSize"] = 10,
				["fontSize"] = 10,
				["auraFontOutline"] = "OUTLINE",
				["fontOutline"] = "OUTLINE",
				["bgMult"] = 0,
				["font"] = "ElvUI Font",
				["trackauras"] = false,
				["auraFont"] = "ElvUI Font",
			},
			["currentTutorial"] = 11,
			["general"] = {
				["fontSize"] = 14,
				["interruptAnnounce"] = "SAY",
				["autoAcceptInvite"] = true,
				["FOCUS"] = {
				},
				["health_backdrop"] = {
				},
				["bottomPanel"] = false,
				["backdropfadecolor"] = {
					["a"] = 1,
					["r"] = 0.1568627450980392,
					["g"] = 0.1568627450980392,
					["b"] = 0.1568627450980392,
				},
				["reputation"] = {
					["height"] = 12,
					["textSize"] = 10,
				},
				["bordercolor"] = {
					["r"] = 0.1568627450980392,
					["g"] = 0.1568627450980392,
					["b"] = 0.1568627450980392,
				},
				["ENERGY"] = {
				},
				["loginmessage"] = false,
				["MANA"] = {
				},
				["tapped"] = {
				},
				["backdropcolor"] = {
					["r"] = 0.2352941176470588,
					["g"] = 0.2352941176470588,
					["b"] = 0.2352941176470588,
				},
				["topPanel"] = false,
				["autoRoll"] = true,
				["DEBUFFS"] = {
				},
				["disconnected"] = {
				},
				["health"] = {
				},
				["RUNIC_POWER"] = {
				},
				["experience"] = {
					["height"] = 12,
					["textSize"] = 10,
				},
				["autoRepair"] = "PLAYER",
				["castColor"] = {
				},
				["BUFFS"] = {
				},
				["BAD"] = {
				},
				["RAGE"] = {
				},
			},
			["movers"] = {
				["ElvUF_Raid40Mover"] = "BOTTOMLEFTElvUIParentBOTTOMLEFT60484",
				["ElvUF_PlayerCastbarMover"] = "BOTTOMElvUIParentBOTTOM-179157",
				["ElvUF_FocusTargetMover"] = "BOTTOMElvUIParentBOTTOM240460",
				["ElvUF_AssistMover"] = "TOPLEFTElvUIParentTOPLEFT50-450",
				["ElvAB_3"] = "BOTTOMElvUIParentBOTTOM091",
				["ElvAB_5"] = "BOTTOMLEFTElvUIParentBOTTOMLEFT49428",
				["ElvUF_Raid10Mover"] = "TOPLEFTElvUIParentTOPLEFT50-558",
				["AltPowerBarMover"] = "TOPElvUIParentTOP0-188",
				["BossButton"] = "TOPElvUIParentTOP0-121",
				["LootFrameMover"] = "TOPLEFTElvUIParentTOPLEFT60-195",
				["ElvUF_PartyMover"] = "BOTTOMElvUIParentBOTTOM058",
				["ElvUF_Raid25Mover"] = "BOTTOMLEFTElvUIParentBOTTOMLEFT50494",
				["TotemBarMover"] = "BOTTOMLEFTElvUIParentBOTTOMLEFT464130",
				["ElvUF_PlayerMover"] = "BOTTOMElvUIParentBOTTOM-177178",
				["LeftChatMover"] = "BOTTOMLEFTElvUIParentBOTTOMLEFT50133",
				["ElvAB_2"] = "BOTTOMRIGHTElvUIParentBOTTOMRIGHT-49428",
				["ElvAB_6"] = "BOTTOMElvUIParentBOTTOM-17797",
				["ElvUF_FocusMover"] = "BOTTOMElvUIParentBOTTOM240428",
				["ElvUF_TargetCastbarMover"] = "BOTTOMElvUIParentBOTTOM179157",
				["TooltipMover"] = "BOTTOMRIGHTElvUIParentBOTTOMRIGHT-60309",
				["ElvUF_TankMover"] = "TOPLEFTElvUIParentTOPLEFT50-410",
				["BossHeaderMover"] = "TOPRIGHTElvUIParentTOPRIGHT-60-516",
				["ElvUF_PetMover"] = "BOTTOMElvUIParentBOTTOM0213",
				["VehicleSeatMover"] = "TOPLEFTElvUIParentTOPLEFT60-45",
				["RightChatMover"] = "BOTTOMRIGHTElvUIParentBOTTOMRIGHT-50133",
				["AlertFrameMover"] = "TOPElvUIParentTOP0-16",
				["ElvUF_TargetMover"] = "BOTTOMElvUIParentBOTTOM177178",
				["ElvUF_TargetTargetMover"] = "BOTTOMElvUIParentBOTTOM0178",
			},
			["tooltip"] = {
				["anchor"] = "ANCHOR",
			},
			["hideTutorial"] = 1,
			["chat"] = {
				["tabFontOutline"] = "OUTLINE",
				["fontOutline"] = "OUTLINE",
				["panelHeight"] = 174,
				["tabFontSize"] = 14,
				["panelBackdrop"] = "HIDEBOTH",
			},
			["unitframe"] = {
				["fontSize"] = 12,
				["colors"] = {
					["auraBarBuff"] = {
						["r"] = 0.2196078431372549,
						["g"] = 0.2196078431372549,
						["b"] = 0.2196078431372549,
					},
					["power"] = {
						["MANA"] = {
							["r"] = 0.6,
							["g"] = 0.7411764705882353,
							["b"] = 1,
						},
						["RUNIC_POWER"] = {
							["g"] = 0.6078431372549019,
							["r"] = 0.592156862745098,
						},
						["RAGE"] = {
							["r"] = 1,
							["g"] = 0.4196078431372549,
							["b"] = 0.4666666666666667,
						},
						["FOCUS"] = {
							["r"] = 1,
							["g"] = 0.6862745098039216,
							["b"] = 0.5372549019607843,
						},
						["ENERGY"] = {
							["r"] = 0.4705882352941176,
							["g"] = 0.5568627450980392,
							["b"] = 0.592156862745098,
						},
					},
					["castColor"] = {
						["r"] = 0.196078431372549,
						["g"] = 0.196078431372549,
						["b"] = 0.196078431372549,
					},
					["colorhealthbyvalue"] = false,
					["customhealthbackdrop"] = true,
					["health_backdrop"] = {
						["r"] = 0.5294117647058824,
						["g"] = 0.5294117647058824,
						["b"] = 0.5294117647058824,
					},
					["reaction"] = {
						["BAD"] = {
							["r"] = 0.8,
							["g"] = 0.1019607843137255,
							["b"] = 0.1019607843137255,
						},
					},
					["health"] = {
						["r"] = 0.2352941176470588,
						["g"] = 0.2352941176470588,
						["b"] = 0.2352941176470588,
					},
					["tapped"] = {
						["r"] = 0.7098039215686275,
						["g"] = 0.3176470588235294,
						["b"] = 0.3411764705882353,
					},
				},
				["fontOutline"] = "OUTLINE",
				["font"] = "ElvUI Font",
				["statusbar"] = "ElvUI Norm",
				["units"] = {
					["tank"] = {
						["height"] = 26,
						["targetsGroup"] = {
							["height"] = 26,
						},
					},
					["raid10"] = {
						["height"] = 40,
						["name"] = {
							["position"] = "TOPLEFT",
						},
						["power"] = {
							["height"] = 8,
							["width"] = "spaced",
						},
					},
					["focustarget"] = {
						["enable"] = true,
						["height"] = 20,
						["width"] = 140,
					},
					["pet"] = {
						["height"] = 30,
						["width"] = 118,
					},
					["targettarget"] = {
						["height"] = 28,
						["debuffs"] = {
							["enable"] = false,
						},
						["width"] = 118,
						["power"] = {
							["height"] = 8,
						},
					},
					["player"] = {
						["debuffs"] = {
							["fontSize"] = 14,
						},
						["portrait"] = {
							["overlay"] = true,
							["camDistanceScale"] = 1.25,
							["width"] = 42,
						},
						["castbar"] = {
							["height"] = 14,
							["latency"] = false,
							["width"] = 228,
							["poweroverlay"] = false,
						},
						["healPrediction"] = false,
						["width"] = 228,
						["height"] = 28,
						["buffs"] = {
							["fontSize"] = 16,
						},
						["classbar"] = {
							["height"] = 8,
							["enable"] = false,
						},
						["power"] = {
							["height"] = 8,
							["text_format"] = "[healthcolor][power:current]",
						},
					},
					["boss"] = {
						["debuffs"] = {
							["numrows"] = 1,
							["sizeOverride"] = 20,
						},
						["portrait"] = {
							["overlay"] = true,
							["enable"] = true,
						},
						["power"] = {
							["height"] = 8,
							["text_format"] = "",
							["width"] = "spaced",
						},
						["growthDirection"] = "DOWN",
						["health"] = {
							["position"] = "TOPLEFT",
						},
						["width"] = 180,
						["height"] = 30,
						["buffs"] = {
							["sizeOverride"] = 20,
						},
						["name"] = {
							["position"] = "TOPRIGHT",
						},
						["castbar"] = {
							["height"] = 3.99990725517273,
							["icon"] = false,
							["width"] = 180,
						},
					},
					["target"] = {
						["combobar"] = {
							["enable"] = false,
						},
						["debuffs"] = {
							["enable"] = false,
							["fontSize"] = 14,
						},
						["portrait"] = {
							["overlay"] = true,
							["camDistanceScale"] = 1.25,
						},
						["power"] = {
							["height"] = 8,
							["text_format"] = "[healthcolor][power:current]",
						},
						["width"] = 228,
						["castbar"] = {
							["height"] = 14,
							["width"] = 228,
							["poweroverlay"] = false,
						},
						["height"] = 28,
						["buffs"] = {
							["fontSize"] = 14,
						},
						["smartAuraDisplay"] = "SHOW_BUFFS_ON_FRIENDLIES",
						["aurabar"] = {
							["attachTo"] = "BUFFS",
						},
					},
					["focus"] = {
						["name"] = {
							["position"] = "TOP",
						},
						["castbar"] = {
							["height"] = 4.000041961669922,
							["icon"] = false,
							["width"] = 68.00003814697266,
						},
						["height"] = 28,
						["power"] = {
							["height"] = 8,
							["width"] = "spaced",
						},
						["width"] = 140,
					},
					["assist"] = {
						["height"] = 26,
						["targetsGroup"] = {
							["height"] = 26,
						},
					},
					["arena"] = {
						["power"] = {
							["height"] = 8,
							["width"] = "spaced",
						},
						["castbar"] = {
							["height"] = 4.000041961669922,
							["icon"] = false,
							["width"] = 118.0000305175781,
						},
					},
					["party"] = {
						["roleIcon"] = {
							["position"] = "RIGHT",
						},
						["debuffs"] = {
							["anchorPoint"] = "BOTTOMLEFT",
							["sizeOverride"] = 28,
							["enable"] = false,
							["fontSize"] = 18,
							["perrow"] = 4,
						},
						["point"] = "LEFT",
						["power"] = {
							["text_format"] = "",
						},
						["xOffset"] = 3,
						["yOffset"] = 0,
						["health"] = {
							["text_format"] = "",
						},
						["columnSpacing"] = 4,
						["height"] = 28,
						["width"] = 114,
					},
					["raid25"] = {
						["health"] = {
							["orientation"] = "VERTICAL",
						},
						["height"] = 40,
					},
				},
			},
			["datatexts"] = {
				["fontSize"] = 13,
				["panels"] = {
					["RightChatDataPanel"] = {
						["right"] = "Skada",
					},
					["LeftChatDataPanel"] = {
						["left"] = "Attack Power",
						["right"] = "Crit Chance",
					},
				},
				["fontOutline"] = "OUTLINE",
			},
			["actionbar"] = {
				["bar3"] = {
					["buttons"] = 3,
					["buttonspacing"] = 4,
					["buttonsPerRow"] = 3,
					["backdrop"] = true,
					["buttonsize"] = 34,
				},
				["fontSize"] = 16,
				["bar2"] = {
					["enabled"] = true,
					["backdrop"] = true,
					["buttonspacing"] = 4,
					["buttonsPerRow"] = 4,
					["mouseover"] = true,
					["buttonsize"] = 28,
				},
				["hotkeytext"] = false,
				["bar5"] = {
					["backdrop"] = true,
					["buttons"] = 12,
					["buttonspacing"] = 4,
					["buttonsPerRow"] = 4,
					["mouseover"] = true,
					["buttonsize"] = 28,
				},
				["font"] = "ElvUI Font",
				["fontOutline"] = "OUTLINE",
				["bar1"] = {
					["buttonsize"] = 34,
					["backdrop"] = true,
					["visibility"] = "[vehicleui] show; [overridebar] show; [petbattle] hide; hide",
				},
				["stanceBar"] = {
					["enabled"] = false,
				},
				["bar6"] = {
					["buttonspacing"] = 4,
					["buttonsize"] = 28,
					["backdrop"] = true,
					["buttons"] = 7,
				},
				["bar4"] = {
					["buttonspacing"] = 4,
					["buttonsize"] = 28,
				},
			},
			["layoutSet"] = "dpsMelee",
			["auras"] = {
				["fontSize"] = 14,
				["visualtimer"] = {
					["threshold"] = {
						["buffs"] = true,
					},
				},
				["fontOutline"] = "OUTLINE",
				["consolidatedBuffs"] = {
					["font"] = "ElvUI Font",
					["fontSize"] = 16,
					["fontOutline"] = "OUTLINE",
				},
				["font"] = "ElvUI Font",
			},
		},
		["OPUI 2.1"] = {
			["nameplate"] = {
				["fontSize"] = 10,
				["auraFontOutline"] = "OUTLINE",
				["trackauras"] = false,
				["auraFontSize"] = 10,
				["fontOutline"] = "OUTLINE",
				["auraFont"] = "ElvUI Font",
				["font"] = "ElvUI Font",
				["bgMult"] = 0,
			},
			["currentTutorial"] = 11,
			["hideTutorial"] = 1,
			["auras"] = {
				["fontSize"] = 14,
				["visualtimer"] = {
					["threshold"] = {
						["buffs"] = true,
					},
				},
				["font"] = "ElvUI Font",
				["fontOutline"] = "OUTLINE",
				["consolidatedBuffs"] = {
					["fontSize"] = 16,
					["fontOutline"] = "OUTLINE",
					["font"] = "ElvUI Font",
				},
			},
			["layoutSet"] = "dpsMelee",
			["movers"] = {
				["ElvUF_Raid40Mover"] = "BOTTOMLEFTElvUIParentBOTTOMLEFT60484",
				["ElvUF_PlayerCastbarMover"] = "BOTTOMElvUIParentBOTTOM-179157",
				["ElvUF_FocusTargetMover"] = "BOTTOMElvUIParentBOTTOM240460",
				["ElvUF_TargetTargetMover"] = "BOTTOMElvUIParentBOTTOM0178",
				["ElvUF_TargetMover"] = "BOTTOMElvUIParentBOTTOM177178",
				["LootFrameMover"] = "TOPLEFTElvUIParentTOPLEFT60-195",
				["ElvUF_Raid10Mover"] = "TOPLEFTElvUIParentTOPLEFT50-558",
				["AltPowerBarMover"] = "TOPElvUIParentTOP0-188",
				["ElvAB_3"] = "BOTTOMElvUIParentBOTTOM091",
				["ElvAB_5"] = "BOTTOMLEFTElvUIParentBOTTOMLEFT49428",
				["RightChatMover"] = "BOTTOMRIGHTElvUIParentBOTTOMRIGHT-50133",
				["VehicleSeatMover"] = "TOPLEFTElvUIParentTOPLEFT60-45",
				["ElvUF_PetMover"] = "BOTTOMElvUIParentBOTTOM0213",
				["ElvUF_PlayerMover"] = "BOTTOMElvUIParentBOTTOM-177178",
				["LeftChatMover"] = "BOTTOMLEFTElvUIParentBOTTOMLEFT50133",
				["ElvAB_2"] = "BOTTOMRIGHTElvUIParentBOTTOMRIGHT-49428",
				["ElvUF_TargetCastbarMover"] = "BOTTOMElvUIParentBOTTOM179157",
				["ElvUF_FocusMover"] = "BOTTOMElvUIParentBOTTOM240428",
				["ElvAB_6"] = "BOTTOMElvUIParentBOTTOM-17797",
				["TooltipMover"] = "BOTTOMRIGHTElvUIParentBOTTOMRIGHT-60309",
				["ElvUF_TankMover"] = "TOPLEFTElvUIParentTOPLEFT50-410",
				["BossHeaderMover"] = "TOPRIGHTElvUIParentTOPRIGHT-60-516",
				["TotemBarMover"] = "BOTTOMLEFTElvUIParentBOTTOMLEFT464130",
				["ElvUF_Raid25Mover"] = "BOTTOMLEFTElvUIParentBOTTOMLEFT50494",
				["ElvUF_PartyMover"] = "BOTTOMElvUIParentBOTTOM058",
				["AlertFrameMover"] = "TOPElvUIParentTOP0-16",
				["BossButton"] = "TOPElvUIParentTOP0-121",
				["ElvUF_AssistMover"] = "TOPLEFTElvUIParentTOPLEFT50-450",
			},
			["tooltip"] = {
				["anchor"] = "ANCHOR",
			},
			["unitframe"] = {
				["fontSize"] = 12,
				["units"] = {
					["tank"] = {
						["height"] = 26,
						["targetsGroup"] = {
							["height"] = 26,
						},
					},
					["assist"] = {
						["height"] = 26,
						["targetsGroup"] = {
							["height"] = 26,
						},
					},
					["raid10"] = {
						["power"] = {
							["height"] = 8,
							["width"] = "spaced",
						},
						["name"] = {
							["position"] = "TOPLEFT",
						},
						["height"] = 40,
					},
					["focustarget"] = {
						["enable"] = true,
						["width"] = 140,
						["height"] = 20,
					},
					["pet"] = {
						["width"] = 118,
						["height"] = 30,
					},
					["raid25"] = {
						["health"] = {
							["orientation"] = "VERTICAL",
						},
						["height"] = 40,
					},
					["party"] = {
						["debuffs"] = {
							["sizeOverride"] = 28,
							["enable"] = false,
							["perrow"] = 4,
							["anchorPoint"] = "BOTTOMLEFT",
							["fontSize"] = 18,
						},
						["point"] = "LEFT",
						["xOffset"] = 3,
						["columnSpacing"] = 4,
						["roleIcon"] = {
							["position"] = "RIGHT",
						},
						["power"] = {
							["text_format"] = "",
						},
						["yOffset"] = 0,
						["width"] = 114,
						["health"] = {
							["text_format"] = "",
						},
						["height"] = 28,
					},
					["player"] = {
						["debuffs"] = {
							["fontSize"] = 14,
						},
						["portrait"] = {
							["overlay"] = true,
							["camDistanceScale"] = 1.25,
							["width"] = 42,
						},
						["classbar"] = {
							["enable"] = false,
							["height"] = 8,
						},
						["power"] = {
							["height"] = 8,
							["text_format"] = "[healthcolor][power:current]",
						},
						["healPrediction"] = false,
						["width"] = 228,
						["height"] = 28,
						["buffs"] = {
							["fontSize"] = 16,
						},
						["castbar"] = {
							["poweroverlay"] = false,
							["width"] = 228,
							["height"] = 14,
							["latency"] = false,
						},
					},
					["focus"] = {
						["power"] = {
							["height"] = 8,
							["width"] = "spaced",
						},
						["width"] = 140,
						["name"] = {
							["position"] = "TOP",
						},
						["height"] = 28,
						["castbar"] = {
							["height"] = 4.000041961669922,
							["icon"] = false,
							["width"] = 68.00003814697266,
						},
					},
					["target"] = {
						["combobar"] = {
							["enable"] = false,
						},
						["debuffs"] = {
							["fontSize"] = 14,
							["enable"] = false,
						},
						["portrait"] = {
							["overlay"] = true,
							["camDistanceScale"] = 1.25,
						},
						["castbar"] = {
							["poweroverlay"] = false,
							["height"] = 14,
							["width"] = 228,
						},
						["width"] = 228,
						["smartAuraDisplay"] = "SHOW_BUFFS_ON_FRIENDLIES",
						["height"] = 28,
						["buffs"] = {
							["fontSize"] = 14,
						},
						["power"] = {
							["height"] = 8,
							["text_format"] = "[healthcolor][power:current]",
						},
						["aurabar"] = {
							["attachTo"] = "BUFFS",
						},
					},
					["arena"] = {
						["castbar"] = {
							["height"] = 4.000041961669922,
							["icon"] = false,
							["width"] = 118.0000305175781,
						},
						["power"] = {
							["height"] = 8,
							["width"] = "spaced",
						},
					},
					["boss"] = {
						["debuffs"] = {
							["numrows"] = 1,
							["sizeOverride"] = 20,
						},
						["portrait"] = {
							["overlay"] = true,
							["enable"] = true,
						},
						["power"] = {
							["height"] = 8,
							["text_format"] = "",
							["width"] = "spaced",
						},
						["growthDirection"] = "DOWN",
						["width"] = 180,
						["health"] = {
							["position"] = "TOPLEFT",
						},
						["castbar"] = {
							["height"] = 3.99990725517273,
							["icon"] = false,
							["width"] = 180,
						},
						["height"] = 30,
						["buffs"] = {
							["sizeOverride"] = 20,
						},
						["name"] = {
							["position"] = "TOPRIGHT",
						},
					},
					["targettarget"] = {
						["debuffs"] = {
							["enable"] = false,
						},
						["power"] = {
							["height"] = 8,
						},
						["width"] = 118,
						["height"] = 28,
					},
				},
				["statusbar"] = "ElvUI Norm",
				["colors"] = {
					["auraBarBuff"] = {
						["b"] = 0.2196078431372549,
						["g"] = 0.2196078431372549,
						["r"] = 0.2196078431372549,
					},
					["colorhealthbyvalue"] = false,
					["customhealthbackdrop"] = true,
					["health_backdrop"] = {
						["b"] = 0.5294117647058824,
						["g"] = 0.5294117647058824,
						["r"] = 0.5294117647058824,
					},
					["power"] = {
						["MANA"] = {
							["b"] = 1,
							["g"] = 0.7411764705882353,
							["r"] = 0.6,
						},
						["RUNIC_POWER"] = {
							["g"] = 0.6078431372549019,
							["r"] = 0.592156862745098,
						},
						["ENERGY"] = {
							["b"] = 0.592156862745098,
							["g"] = 0.5568627450980392,
							["r"] = 0.4705882352941176,
						},
						["FOCUS"] = {
							["b"] = 0.5372549019607843,
							["g"] = 0.6862745098039216,
							["r"] = 1,
						},
						["RAGE"] = {
							["b"] = 0.4666666666666667,
							["g"] = 0.4196078431372549,
							["r"] = 1,
						},
					},
					["castColor"] = {
						["b"] = 0.196078431372549,
						["g"] = 0.196078431372549,
						["r"] = 0.196078431372549,
					},
					["tapped"] = {
						["b"] = 0.3411764705882353,
						["g"] = 0.3176470588235294,
						["r"] = 0.7098039215686275,
					},
					["health"] = {
						["b"] = 0.2352941176470588,
						["g"] = 0.2352941176470588,
						["r"] = 0.2352941176470588,
					},
					["reaction"] = {
						["BAD"] = {
							["b"] = 0.1019607843137255,
							["g"] = 0.1019607843137255,
							["r"] = 0.8,
						},
					},
				},
				["fontOutline"] = "OUTLINE",
				["font"] = "ElvUI Font",
			},
			["datatexts"] = {
				["fontSize"] = 13,
				["panels"] = {
					["RightChatDataPanel"] = {
						["right"] = "Skada",
					},
					["LeftChatDataPanel"] = {
						["right"] = "Crit Chance",
						["left"] = "Attack Power",
					},
				},
				["fontOutline"] = "OUTLINE",
			},
			["actionbar"] = {
				["bar3"] = {
					["buttons"] = 3,
					["buttonspacing"] = 4,
					["backdrop"] = true,
					["buttonsPerRow"] = 3,
					["buttonsize"] = 34,
				},
				["bar6"] = {
					["buttons"] = 7,
					["buttonspacing"] = 4,
					["backdrop"] = true,
					["buttonsize"] = 28,
				},
				["fontOutline"] = "OUTLINE",
				["hotkeytext"] = false,
				["bar2"] = {
					["enabled"] = true,
					["buttonspacing"] = 4,
					["mouseover"] = true,
					["buttonsPerRow"] = 4,
					["buttonsize"] = 28,
					["backdrop"] = true,
				},
				["bar1"] = {
					["backdrop"] = true,
					["visibility"] = "[vehicleui] show; [overridebar] show; [petbattle] hide; hide",
					["buttonsize"] = 34,
				},
				["bar5"] = {
					["buttons"] = 12,
					["buttonspacing"] = 4,
					["mouseover"] = true,
					["buttonsPerRow"] = 4,
					["buttonsize"] = 28,
					["backdrop"] = true,
				},
				["font"] = "ElvUI Font",
				["fontSize"] = 16,
				["stanceBar"] = {
					["enabled"] = false,
				},
				["bar4"] = {
					["buttonspacing"] = 4,
					["mouseover"] = true,
					["buttonsize"] = 28,
				},
			},
			["general"] = {
				["interruptAnnounce"] = "SAY",
				["backdropfadecolor"] = {
					["a"] = 1,
					["b"] = 0.1568627450980392,
					["g"] = 0.1568627450980392,
					["r"] = 0.1568627450980392,
				},
				["loginmessage"] = false,
				["topPanel"] = false,
				["bordercolor"] = {
					["b"] = 0.1568627450980392,
					["g"] = 0.1568627450980392,
					["r"] = 0.1568627450980392,
				},
				["disconnected"] = {
				},
				["tapped"] = {
				},
				["experience"] = {
					["height"] = 12,
					["textSize"] = 10,
				},
				["BUFFS"] = {
				},
				["RAGE"] = {
				},
				["fontSize"] = 14,
				["autoAcceptInvite"] = true,
				["FOCUS"] = {
				},
				["health_backdrop"] = {
				},
				["DEBUFFS"] = {
				},
				["ENERGY"] = {
				},
				["BAD"] = {
				},
				["backdropcolor"] = {
					["b"] = 0.2352941176470588,
					["g"] = 0.2352941176470588,
					["r"] = 0.2352941176470588,
				},
				["castColor"] = {
				},
				["autoRepair"] = "PLAYER",
				["health"] = {
				},
				["reputation"] = {
					["height"] = 12,
					["textSize"] = 10,
				},
				["bottomPanel"] = false,
				["RUNIC_POWER"] = {
				},
				["autoRoll"] = true,
				["MANA"] = {
				},
			},
			["chat"] = {
				["tabFontOutline"] = "OUTLINE",
				["fontOutline"] = "OUTLINE",
				["panelBackdrop"] = "HIDEBOTH",
				["tabFontSize"] = 14,
				["panelHeight"] = 174,
			},
		},
	},
}
ElvPrivateDB = {
	["profileKeys"] = {
		["Alterboi - Kel'Thuzad"] = "OPUI 2.0",
		["Opacus - Kel'Thuzad"] = "OPUI 2.1",
		["Nanathaict - Kel'Thuzad"] = "OPUI 2.0",
		["Uthalip - Kel'Thuzad"] = "OPUI 2.0",
		["Ladoroy - Kel'Thuzad"] = "OPUI 2.0",
		["Snô - Kel'Thuzad"] = "OPUI 1200",
		["Pubick - Kel'Thuzad"] = "OPUI 2.0",
		["Warredroes - Kel'Thuzad"] = "Warredroes - Kel'Thuzad",
		["Elylarina - Kel'Thuzad"] = "Elylarina - Kel'Thuzad",
		["Ponk - Kel'Thuzad"] = "OPUI",
	},
	["profiles"] = {
		["Alterboi - Kel'Thuzad"] = {
			["skins"] = {
				["addons"] = {
					["AlwaysTrue"] = true,
				},
			},
			["install_complete"] = "5.14",
		},
		["Ponk - Kel'Thuzad"] = {
			["skins"] = {
				["addons"] = {
					["AlwaysTrue"] = true,
				},
			},
			["install_complete"] = "5.03",
		},
		["Nanathaict - Kel'Thuzad"] = {
			["skins"] = {
				["addons"] = {
					["AlwaysTrue"] = true,
				},
			},
			["install_complete"] = "5.14",
		},
		["OPUI 2.1"] = {
			["general"] = {
				["pixelPerfect"] = false,
				["normTex"] = "ElvUI Norm",
				["dmgfont"] = "OPUI",
				["glossTex"] = "ElvUI Norm",
			},
			["auras"] = {
				["size"] = 26,
			},
			["skins"] = {
				["addons"] = {
					["ArkInventorySkin"] = false,
					["OmenSkin"] = false,
					["SkadaBackdrop"] = false,
					["DBMSkinHalf"] = true,
					["EmbedSkada"] = true,
					["SkadaSkin"] = false,
					["AlwaysTrue"] = true,
					["ZygorSkin"] = false,
				},
			},
			["theme"] = "default",
			["install_complete"] = "5.03",
		},
		["Opacus - Kel'Thuzad"] = {
			["skins"] = {
				["addons"] = {
					["ArkInventorySkin"] = false,
					["SkadaSkin"] = false,
					["OmenSkin"] = false,
					["AlwaysTrue"] = true,
					["EmbedSkada"] = true,
					["DBMSkinHalf"] = true,
				},
			},
			["general"] = {
				["pixelPerfect"] = false,
				["normTex"] = "Glamour4",
				["glossTex"] = "Glamour4",
			},
			["theme"] = "default",
			["install_complete"] = "5.00",
		},
		["Uthalip - Kel'Thuzad"] = {
			["skins"] = {
				["addons"] = {
					["AlwaysTrue"] = true,
				},
			},
			["install_complete"] = "5.14",
		},
		["OPUI 1200"] = {
			["skins"] = {
				["addons"] = {
					["AlwaysTrue"] = true,
					["EmbedSkada"] = true,
					["SkadaSkin"] = false,
					["DBMSkinHalf"] = true,
				},
			},
			["general"] = {
				["pixelPerfect"] = false,
			},
			["install_complete"] = "5.03",
		},
		["Elylarina - Kel'Thuzad"] = {
			["skins"] = {
				["addons"] = {
					["AlwaysTrue"] = true,
				},
			},
			["install_complete"] = "5.14",
		},
		["Ladoroy - Kel'Thuzad"] = {
			["skins"] = {
				["addons"] = {
					["AlwaysTrue"] = true,
				},
			},
			["install_complete"] = "5.14",
		},
		["OPUI 2.0"] = {
			["general"] = {
				["pixelPerfect"] = false,
				["normTex"] = "ElvUI Norm",
				["dmgfont"] = "ElvUI Font",
				["glossTex"] = "ElvUI Norm",
			},
			["skins"] = {
				["addons"] = {
					["ZygorSkin"] = false,
					["ArkInventorySkin"] = false,
					["SkadaBackdrop"] = false,
					["OmenSkin"] = false,
					["AlwaysTrue"] = true,
					["SkadaSkin"] = false,
					["EmbedSkada"] = true,
					["DBMSkinHalf"] = true,
				},
			},
			["install_complete"] = "5.14",
			["theme"] = "default",
			["auras"] = {
				["size"] = 26,
			},
		},
		["Snô - Kel'Thuzad"] = {
			["skins"] = {
				["addons"] = {
					["AlwaysTrue"] = true,
				},
			},
			["install_complete"] = "5.03",
		},
		["OPUI"] = {
			["general"] = {
				["pixelPerfect"] = false,
				["normTex"] = "ElvUI Norm",
				["glossTex"] = "ElvUI Norm",
				["dmgfont"] = "ElvUI Font",
			},
			["skins"] = {
				["addons"] = {
					["ZygorSkin"] = false,
					["ArkInventorySkin"] = false,
					["SkadaBackdrop"] = false,
					["OmenSkin"] = false,
					["AlwaysTrue"] = true,
					["SkadaSkin"] = false,
					["EmbedSkada"] = true,
					["DBMSkinHalf"] = true,
				},
			},
			["install_complete"] = "5.03",
			["theme"] = "default",
			["auras"] = {
				["size"] = 26,
			},
		},
		["Pubick - Kel'Thuzad"] = {
			["skins"] = {
				["addons"] = {
					["AlwaysTrue"] = true,
				},
			},
			["install_complete"] = "5.14",
		},
		["Warredroes - Kel'Thuzad"] = {
			["skins"] = {
				["addons"] = {
					["AlwaysTrue"] = true,
				},
			},
			["install_complete"] = "5.14",
		},
		["OPUI Opacus"] = {
			["general"] = {
				["pixelPerfect"] = false,
				["normTex"] = "ElvUI Norm",
				["glossTex"] = "ElvUI Norm",
				["dmgfont"] = "OPUI",
			},
			["skins"] = {
				["addons"] = {
					["ZygorSkin"] = false,
					["ArkInventorySkin"] = false,
					["SkadaBackdrop"] = false,
					["OmenSkin"] = false,
					["AlwaysTrue"] = true,
					["SkadaSkin"] = false,
					["EmbedSkada"] = true,
					["DBMSkinHalf"] = true,
				},
			},
			["install_complete"] = "5.03",
			["theme"] = "default",
			["auras"] = {
				["size"] = 26,
			},
		},
		["OPUI 1080"] = {
			["skins"] = {
				["addons"] = {
					["SkadaBackdrop"] = false,
					["AlwaysTrue"] = true,
				},
			},
			["general"] = {
				["pixelPerfect"] = false,
			},
			["install_complete"] = "5.03",
		},
	},
}
