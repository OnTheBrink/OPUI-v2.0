
KuiNameplatesSaved = {
	["cast"] = {
		["casttime"] = {
			["rl"] = true,
			["d"] = "Show current and maximum cast time and the total delayed time caused by attacks",
			["v"] = true,
			["f"] = nil --[[ skipped inline function ]],
		},
		["usenames"] = {
			["d"] = "Use names to show cast warnings. This will increase memory usage and may cause warnings to be displayed on incorrect nameplates, but warnings will be shown for all visible units rather than only those which have been targeted",
			["v"] = false,
			["f"] = nil --[[ skipped inline function ]],
		},
		["barcolour"] = {
			["i"] = "Must be 3 or 4 numbers between 0 and 1 representing red, green, blue [and alpha]. E.g. .25 .5 0 1",
			["d"] = "Colour of the cast bar when the spell is interruptible",
			["v"] = {
				0.43, -- [1]
				0.47, -- [2]
				0.55, -- [3]
			},
			["f"] = nil --[[ skipped inline function ]],
		},
		["warnings"] = {
			["rl"] = true,
			["l"] = nil --[[ skipped inline function ]],
			["d"] = "Show cast warnings and incoming healing",
			["v"] = false,
			["f"] = nil --[[ skipped inline function ]],
		},
		["spellname"] = {
			["rl"] = true,
			["d"] = "Show the spell's name under the cast bar",
			["v"] = true,
			["f"] = nil --[[ skipped inline function ]],
		},
		["spellicon"] = {
			["rl"] = true,
			["d"] = "Show the spell's icon next to the health bar",
			["v"] = true,
			["f"] = nil --[[ skipped inline function ]],
		},
		["gd"] = "Cast bar",
		["toggle"] = {
			["rl"] = true,
			["l"] = nil --[[ skipped inline function ]],
			["d"] = "Enable the cast bar",
			["v"] = true,
			["f"] = nil --[[ skipped inline function ]],
		},
	},
	["gen"] = {
		["combat"] = {
			["l"] = nil --[[ skipped inline function ]],
			["d"] = "Automatically show/hide enemy nameplates upon entering/exiting combat",
			["v"] = false,
			["f"] = nil --[[ skipped inline function ]],
		},
		["gd"] = "General display",
		["fade"] = {
			["d"] = "Smoothly fade frames when they appear or when you change targets",
			["v"] = true,
			["f"] = nil --[[ skipped inline function ]],
		},
		["fadedalpha"] = {
			["numU"] = 1,
			["numL"] = 0,
			["i"] = "Must be a number between 0 and 1.",
			["d"] = "The alpha value to which untargeted frames fade",
			["v"] = 0.3,
			["f"] = nil --[[ skipped inline function ]],
		},
		["fadeall"] = {
			["d"] = "Always fade all nameplates except the target's",
			["v"] = false,
			["f"] = nil --[[ skipped inline function ]],
		},
		["highlight"] = {
			["rl"] = true,
			["d"] = "Highlight frames when you hover the mouse over them",
			["v"] = true,
			["f"] = nil --[[ skipped inline function ]],
		},
		["fademouse"] = {
			["d"] = "Fade in nameplates when you hover the mouse over them",
			["v"] = false,
			["f"] = nil --[[ skipped inline function ]],
		},
		["fadespeed"] = {
			["numU"] = 5,
			["numL"] = 0.1,
			["i"] = "Must be a number between 0.1 and 5.",
			["d"] = "Frame fade speed multiplier",
			["v"] = 0.5,
			["f"] = nil --[[ skipped inline function ]],
		},
		["combopoints"] = {
			["rl"] = true,
			["l"] = nil --[[ skipped inline function ]],
			["d"] = "Show combo points next to frames",
			["v"] = true,
			["f"] = nil --[[ skipped inline function ]],
		},
	},
	["kcversion"] = 3,
	["tank"] = {
		["toggle"] = {
			["d"] = "Recolour health bars when you have threat",
			["v"] = false,
			["f"] = nil --[[ skipped inline function ]],
		},
		["glowcolour"] = {
			["i"] = "Must be 3 or 4 numbers between 0 and 1 representing red, green, blue [and alpha]. E.g. .25 .5 0 1",
			["d"] = "The colour of the nameplate glow when you have threat",
			["v"] = {
				1, -- [1]
				0, -- [2]
				0, -- [3]
			},
			["f"] = nil --[[ skipped inline function ]],
		},
		["gd"] = "Tank mode",
		["barcolour"] = {
			["i"] = "Must be 3 or 4 numbers between 0 and 1 representing red, green, blue [and alpha]. E.g. .25 .5 0 1",
			["d"] = "The colour of the health bar when you have threat",
			["v"] = {
				0.2, -- [1]
				0.9, -- [2]
				0.1, -- [3]
			},
			["f"] = nil --[[ skipped inline function ]],
		},
	},
	["hp"] = {
		["mouseover"] = {
			["d"] = "Hide health until you hover the mouse over or target the nameplate",
			["v"] = false,
			["f"] = nil --[[ skipped inline function ]],
		},
		["deficit"] = {
			["d"] = "Show deficit health when lower than 100%",
			["v"] = true,
			["f"] = nil --[[ skipped inline function ]],
		},
		["precise"] = {
			["d"] = "Only show precise numeric values for friendly units",
			["v"] = true,
			["f"] = nil --[[ skipped inline function ]],
		},
		["showalt"] = {
			["rl"] = true,
			["d"] = "Show small alternate health text values",
			["v"] = true,
			["f"] = nil --[[ skipped inline function ]],
		},
		["max"] = {
			["d"] = "Show maximum health when at 100%",
			["v"] = true,
			["f"] = nil --[[ skipped inline function ]],
		},
		["current"] = {
			["d"] = "Show current health when lower than 100%",
			["v"] = false,
			["f"] = nil --[[ skipped inline function ]],
		},
		["percent"] = {
			["d"] = "Show health percent when lower than 100% and if precise values cannot be shown",
			["v"] = true,
			["f"] = nil --[[ skipped inline function ]],
		},
		["gd"] = "Health display",
	},
	["reset"] = {
		["d"] = "Reset configuration to defaults. This will reload the UI",
		["f"] = nil --[[ skipped inline function ]],
	},
}
