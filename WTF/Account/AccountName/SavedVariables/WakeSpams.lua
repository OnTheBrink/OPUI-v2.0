
WakeSpamsDB = {
	["profileKeys"] = {
		["Opacus - Kel'Thuzad"] = "Default",
		["Ponk - Kel'Thuzad"] = "Default",
	},
	["profiles"] = {
		["Default"] = {
			["version"] = 5100,
			["EventDB"] = {
				["SPELL_INTERRUPT"] = {
					["configname"] = "Interrupts             (Event: SPELL_INTERRUPT)",
					["txt"] = "spell:link Interrupted: spell:target spell:extra:link",
				},
				["SPELL_DISPEL_FAILED"] = {
					["configname"] = "Dispel Resists         (Event: SPELL_DISPEL_FAILED)",
					["txt"] = "spell:link Dispel Failed: spell:extra:link from spell:target",
				},
			},
		},
	},
}
