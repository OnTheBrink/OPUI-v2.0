local E, L, V, P, G, _ = unpack(ElvUI); --Import: Engine, Locales, PrivateDB, ProfileDB, GlobalDB, Localize Underscore

P["auras"]["visualtimer"] = {
	["enable"] = true,
	["noduration"] = true,
	["tenable"] = true,
	["threshold"] = {
		["buffs"] = false,
		["buffsvalue"] = 5,
		["debuffs"] = true,
		["debuffsvalue"] = 5,
		["tempenchants"] = false,
		["tempenchantsvalue"] = 60,
	},
}

E.Options.args.auras.args.visualtimer = {
	type = 'group',
	name = L['Visual Timers'],
	order = 100,
	guiInline = true,
	get = function(info) return E.db.auras.visualtimer[ info[#info] ] end,
	set = function(info, value) E.db.auras.visualtimer[ info[#info] ] = value end,
	args = {
		enable = {
			type = 'toggle',
			order = 1,
			name = L['Enable'],
			desc = L['Show timers as bars instead of text.'],
		},
		noduration = {
			type = 'toggle',
			order = 2,
			name = L['No Duration'],
			desc = L['Show bars for auras without a duration.'],
			disabled = function() return not E.db.auras.visualtimer.enable end,
		},
		tenable = {
			type = 'toggle',
			order = 3,
			name = L['Text Threshold'],
			desc = L["Switch to text based timers when duration goes below threshold"],
			disabled = function() return not E.db.auras.visualtimer.enable end,
		},
		threshold = {
			type = 'group',
			name = L['Text Threshold'],
			order = 4,
			guiInline = true,
			get = function(info) return E.db.auras.visualtimer.threshold[ info[#info] ] end,
			set = function(info, value) E.db.auras.visualtimer.threshold[ info[#info] ] = value end,
			disabled = function() return not E.db.auras.visualtimer.tenable end,
			hidden = function() return not E.db.auras.visualtimer.tenable or not E.db.auras.visualtimer.enable end,
			args = {
				buffs = {
					type = 'toggle',
					order = 1,
					name = L["Buffs"],
					desc = L["If enabled, the timers on your buffs will switch to text when duration goes below set threshold."],
					disabled = function() return not E.db.auras.visualtimer.tenable end,
					hidden = function() return not E.db.auras.visualtimer.tenable end,
				},
				debuffs = {
					type = 'toggle',
					order = 2,
					name = L["Debuffs"],
					desc = L["If enabled, the timers on your debuffs will switch to text when duration goes below set threshold."],
					disabled = function() return not E.db.auras.visualtimer.tenable end,
					hidden = function() return not E.db.auras.visualtimer.tenable end,
				},
				tempenchants = {
					type = 'toggle',
					order = 3,
					name = L["Temporary Enchants"],
					desc = L["If enabled, the timers on your temporary enchant(s) will switch to text when duration goes below set threshold."],
					disabled = function() return not E.db.auras.visualtimer.tenable end,
					hidden = function() return not E.db.auras.visualtimer.tenable end,
				},
				buffsvalue = {
					type = 'range',
					name = L["Buffs Threshold"],
					order = 4,
					desc = L['Threshold in seconds before status bar based timers turn to text.'],
					disabled = function() return not E.db.auras.visualtimer.threshold.buffs end,
					hidden = function() return not E.db.auras.visualtimer.tenable end,
					min = 0, max = 180, step = 1,
				},
				debuffsvalue = {
					type = 'range',
					name = L["Debuffs Threshold"],
					order = 5,
					desc = L['Threshold in seconds before status bar based timers turn to text.'],
					disabled = function() return not E.db.auras.visualtimer.threshold.debuffs end,
					hidden = function() return not E.db.auras.visualtimer.tenable end,
					min = 0, max = 60, step = 1,
				},
				tempenchantsvalue = {
					type = 'range',
					name = L["Temp. Threshold"],
					order = 6,
					desc = L['Threshold in seconds before status bar based timers turn to text.'],
					disabled = function() return not E.db.auras.visualtimer.threshold.tempenchants end,
					hidden = function() return not E.db.auras.visualtimer.tenable end,
					min = 0, max = 300, step = 1,
				},
			},
		},
	},
}