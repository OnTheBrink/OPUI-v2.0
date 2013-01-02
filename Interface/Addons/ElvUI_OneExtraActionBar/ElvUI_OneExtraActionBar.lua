local E, L, V, P, G, _ = unpack(ElvUI); --Import: Engine, Locales, PrivateDB, ProfileDB, GlobalDB
local OEAB = E:NewModule('OneExtraActionBar')
local AB = E:GetModule('ActionBars');
local ABpage
local enteredWorld = false

function OEAB:RoleCheck()
	-- Check players role, then set ActionBar page accordingly.
	E:CheckRole()
	if E.myclass == "DRUID" and E.role == "Caster" then
		ABpage = 8
	else
		ABpage = 10
	end

	return ABpage
end

-- Function we can call or hook to AB:UpdateButtonSettings() so bar6 is updated
function OEAB:UpdateButtonSettings()
	AB["barDefaults"]["bar6"]['page'] = OEAB:RoleCheck()
	AB:PositionAndSizeBar('bar6')
end

-- Create dummy frame from which we create bar6 and hook our update function
local OEABFrame = CreateFrame('Frame', 'OEAB')
OEABFrame:RegisterEvent("PLAYER_ENTERING_WORLD")
OEABFrame:RegisterEvent("ACTIVE_TALENT_GROUP_CHANGED")
OEABFrame:RegisterEvent("PLAYER_SPECIALIZATION_CHANGED")
OEABFrame:SetScript("OnEvent",function(self, event, arg1)
    if event == "PLAYER_ENTERING_WORLD" then

		-- Set defaults this late to make sure RoleCheck returns the right role
		AB["barDefaults"]["bar6"] = {
			['page'] = OEAB:RoleCheck(),
			['bindButtons'] = "BOGUSBAR6BUTTON",
			['conditions'] = "",
			['position'] = "BOTTOM,ElvUI_Bar1,TOP,0,40",
		}

		AB:CreateBar(6)
		for b, _ in pairs(AB["handledbuttons"]) do
			AB:RegisterButton(b, true);
		end
		AB:UpdateButtonSettings()
		AB:UpdateCooldownSettings()
		AB:ReassignBindings()

		-- Set variable we can use to check if we've entered the world
		enteredWorld = true

		hooksecurefunc(AB, "UpdateButtonSettings", OEAB.UpdateButtonSettings)
		self:UnregisterEvent("PLAYER_ENTERING_WORLD")
		
	elseif event == "ACTIVE_TALENT_GROUP_CHANGED" then
		-- "ACTIVE_TALENT_GROUP_CHANGED" event appear to fire once before we have even entered the world. Prevent a lua error here.
		if enteredWorld == true then
			-- We changed talentspec with dual spec, update the bar
			OEAB:UpdateButtonSettings()
		end

	elseif event == "PLAYER_SPECIALIZATION_CHANGED" then
		if arg1 == "player" then
			-- We learned a specialization, update the bar
			OEAB:UpdateButtonSettings()
		end
	end
end)

E:RegisterModule(OEAB:GetName())