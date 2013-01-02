vexrunes = {}
vexrunes.show = false
vexrunes.infight = false
vexrunes.maxwidth=0
vexrunes.runes = {1, 1, 1, 1, 1, 1}
vexrunes.AceConfigDialog = LibStub("AceConfigDialog-3.0", true)
vexrunes.AceConfig = LibStub("AceConfig-3.0", true)
vexrunes.AceConsole= LibStub("AceConsole-3.0", true)
vexrunes.LSM = LibStub("LibSharedMedia-3.0", true)
vexrunes.LSMWidgets = LibStub("AceGUI-3.0-SharedMediaWidgets", true)
vexrunes.started = false
vexrunes.inVehicle = false

SLASH_vexrunes1 = "/vexrunes"
SLASH_vexrunes2 = "/vexr"
function SlashCmdList.vexrunes(msg, editbox)
	if 	msg == "options" or msg == "option" or msg == "config" or msg == "configs" or msg == "" then
		InterfaceOptionsFrame_OpenToCategory(vexrunes.options.main)
	elseif 	msg == "print" then
		vexrunes_print_parameters()
	elseif 	msg == "test" then
	elseif 	msg == "defaults" then
		vexrunes_loaddefaults(true)
		print("|CFFFF7D0AVex Runes|r - defaults loaded")
	elseif msg == "enable" then 
		if vexrunes_parameters["enable"] then
			vexrunes_parameters["enable"] = false
			print("|CFFFF7D0AVex Runes|r - Addon disabled")
		else
			vexrunes_parameters["enable"] = true
			print("|CFFFF7D0AVex Runes|r - Addon enabled")
		end
	else print("|CFFFF7D0AVex Runes|r - cmd not found")
		print ("|CFFFF7D0AVex Runes|r cmd list - /vexrunes and /vexr can be used")
		print ("|CFFFF7D0A/vexrunes|r option/options/config/configs - opens the option frame")
		print ("|CFFFF7D0A/vexrunes|r defaults - resets the addon to defaults")
		print ("|CFFFF7D0A/vexrunes|r enable - enable/disable the addon")
	end
end

function vexrunes_onEvent(self, event, arg1, ...)
	if select(2, UnitClass("player")) == "DEATHKNIGHT" then
		if event == "PLAYER_LOGIN" then
			vexrunes_initialize(false)
			vexrunes.started=true		
		elseif	event == "PLAYER_REGEN_DISABLED" and vexrunes.started then
			vexrunes.infight=true
			vexrunes_showEnergybars()
		elseif	event == "PLAYER_REGEN_ENABLED" and vexrunes.started then
			vexrunes.infight = false
			vexrunes_showEnergybars()
		elseif	event == "RUNE_POWER_UPDATE" and vexrunes.started then
			vexrunes_changeRune(arg1)
		elseif	event == "RUNE_TYPE_UPDATE" and vexrunes.started then
			vexrunes_changeRuneType(arg1)
		elseif 	event == "UNIT_ENTERED_VEHICLE" or event == "UNIT_EXITED_VEHICLE" then
			vexrunes_setInVehicle(arg1, event == "UNIT_ENTERED_VEHICLE")
			if vexrunes.started then
				vexrunes_showEnergybars()
			end
		end
	end
end

function vexrunes_onUpdate()
	if select(2, UnitClass("player")) == "DEATHKNIGHT" then
		if vexrunes_parameters["layout"]["text"]["show"] then vexrunes_setDurationTexts() end
	end
end

function vexrunes_initialize(refresh)
	vexrunes_loaddefaults()
	if not(refresh) then
		-- print("|CFFFF7D0AVex Runes|r loaded")
		vexrunes_barRuneShadow = {}
		vexrunes_barRune = {}
		vexrunes_barRuneUsed = {}
		vexrunes_barRuneText = {}
		vexrunes_runeText = {}
		vexrunes_barRune_aniGrp_shrink = {}
		vexrunes_barRune_aniGrp_grow = {}
		vexrunes_barRune_ani_shrink = {}
		vexrunes_barRune_ani_grow = {}
		vexrunes_barRuneUsed_aniGrp = {}
		vexrunes_barRuneUsed_ani = {}
		for i=1,6 do
			vexrunes_barRuneShadow[i] = CreateFrame("Frame", nil, vexrunes_bar_main)
			vexrunes_barRuneUsed[i] = CreateFrame("Frame", nil, vexrunes_barRuneShadow[i])
			vexrunes_barRune[i] = CreateFrame("Frame", nil, vexrunes_barRuneShadow[i])
			vexrunes_barRuneText[i] = CreateFrame("Frame", nil, vexrunes_barRuneShadow[i])
			vexrunes_runeText[i] = vexrunes_barRuneText[i]:CreateFontString(nil, "OVERLAY", "GameFontNormal")
		end
	end	
	
	vexrunes_setMaxWidth()
	vexrunes_setBarMain()
	vexrunes_setBarRunes()
	vexrunes_setBarRuneBGs()
	vexrunes_showEnergybars()
	
	if not(refresh) then
		vexrunes.options = {}

		vexrunes.options.main = vexrunes.AceConfigDialog:AddToBlizOptions("Vex Runes", "Vex Runes")
		vexrunes.options.general = vexrunes.AceConfigDialog:AddToBlizOptions("VexR General", "VexR General", "Vex Runes")
		vexrunes.options.positions = vexrunes.AceConfigDialog:AddToBlizOptions("VexR Rune Positions", "VexR Rune Positions", "Vex Runes")
		vexrunes.options.layout = vexrunes.AceConfigDialog:AddToBlizOptions("VexR Colors", "VexR Colors", "Vex Runes")
		vexrunes.options.cds = vexrunes.AceConfigDialog:AddToBlizOptions("VexR CD Text", "VexR CD Text", "Vex Runes")
		vexrunes.options.show = vexrunes.AceConfigDialog:AddToBlizOptions("VexR Show/Enable", "VexR Show/Enable", "Vex Runes")
		
		vexrunes.AceConfig:RegisterOptionsTable("Vex Runes", vexrunes.panel_main(), {})
		vexrunes.AceConfig:RegisterOptionsTable("VexR General", vexrunes.panel_general(), {})
		vexrunes.AceConfig:RegisterOptionsTable("VexR Rune Positions", vexrunes.panel_positions(), {})
		vexrunes.AceConfig:RegisterOptionsTable("VexR Colors", vexrunes.panel_colors(), {})
		vexrunes.AceConfig:RegisterOptionsTable("VexR CD Text", vexrunes.panel_cds(), {})
		vexrunes.AceConfig:RegisterOptionsTable("VexR Show/Enable", vexrunes.panel_show(), {})
	end
	vexrunes_setBlizzRuneFrame()
end

function vexrunes_setInVehicle(player, entered)
	if player == "player" then
		if entered then
			vexrunes.inVehicle = true
		else
			vexrunes.inVehicle = false
		end
	end
end

function vexrunes_setBlizzRuneFrame()
	if vexrunes_parameters["layout"]["runes"]["hideblizz"] then
		RuneFrame.Show = function () end
		RuneFrame:Hide()
		RuneFrame:UnregisterAllEvents()
	end
end

function vexrunes_setDurationTexts()
	for i=1,6 do
		if vexrunes.runes[i] == 0 then vexrunes_setDurationText(i) end
	end
end

function vexrunes_setDurationText(runeslot)
	local starttime, spellduration, runeReady = GetRuneCooldown(runeslot)
	local number = vexrunes_getRuneNumberFromSlot(runeslot)
	if runeReady then
		vexrunes_runeText[number]:SetText("")
	else
		local currenttime = GetTime()
		local durationleft = starttime+spellduration-currenttime
		local durationleft_f = ""
		if durationleft > 0 then	durationleft_f = string.sub(durationleft, 1,3) end
		vexrunes_runeText[number]:SetText(durationleft_f)
	end
end

function vexrunes_setMaxWidth()
vexrunes.maxwidth = vexrunes_parameters["layout"]["runes"]["size"]["width"]-(vexrunes_parameters["layout"]["runes"]["border"]["size"]*2)
end

function vexrunes_getRuneNumberFromSlot(runeslot)
	local runeNumber = 1
	for key,val in pairs(vexrunes_parameters["layout"]["runes"]["order"]) do
		if val == runeslot then runeNumber = tonumber(key) end
	end
	return runeNumber
end

function vexrunes_changeRuneType(runeslot)
	local number = vexrunes_getRuneNumberFromSlot(runeslot)
	vexrunes_setBarRuneBG(number)
	vexrunes_setBarRuneShadow(number)
end

function vexrunes_changeRune(runeslot)
	local activate = GetRuneCount(runeslot)
	local number = vexrunes_getRuneNumberFromSlot(runeslot)
	local reloadtime = select(2, GetRuneCooldown(runeslot))
	local shrinktime = 0.3

	if vexrunes.runes[runeslot] ~= activate then
		vexrunes.runes[runeslot] = activate		
		if activate == 1 then	vexrunes_setRuneOnRdy(number, runeslot, shrinktime, reloadtime)
		else					vexrunes_setRuneOnNotRdy(number, runeslot, shrinktime, reloadtime) end
	end
end

function vexrunes_setRuneOnRdy(number, runeslot, shrinktime, reloadtime)
	if vexrunes_barRune_aniGrp_shrink[number]:IsPlaying() then vexrunes_barRune_aniGrp_shrink[number]:Stop() end
	if vexrunes_barRune_aniGrp_grow[number]:IsPlaying() then vexrunes_barRune_aniGrp_grow[number]:Stop() end
	
	
	vexrunes_barRune[number]:SetPoint("TOPLEFT", vexrunes_barRuneShadow[number], "TOPLEFT",
										vexrunes_parameters["layout"]["runes"]["border"]["size"],
										-vexrunes_parameters["layout"]["runes"]["border"]["size"])	
	
	vexrunes_barRune[number]:SetWidth(vexrunes.maxwidth)
	vexrunes_barRune[number]:SetHeight(vexrunes_parameters["layout"]["runes"]["size"]["height"]-(vexrunes_parameters["layout"]["runes"]["border"]["size"]*2))
	vexrunes_playRuneRdyBlink(number)
	vexrunes_runeText[number]:SetText("")
	
	--check if partner gets on cd now
	local partner_runeslot = vexrunes_getRunePartner(runeslot)
	local partner_number = vexrunes_getRuneNumberFromSlot(partner_runeslot)
	if vexrunes.runes[partner_runeslot] == 0 then
		vexrunes_barRune_ani_grow[partner_number]:SetDuration(reloadtime+0.2)
		vexrunes_barRune_aniGrp_grow[partner_number]:Play()
	end
end

function vexrunes_setRuneOnNotRdy(number, runeslot, shrinktime, reloadtime)
	vexrunes_barRune_aniGrp_shrink[number]:SetScript("OnFinished", function ()
								if vexrunes_parameters["layout"]["runes"]["verticalfill"] then vexrunes_barRune[number]:SetHeight(1)
								else vexrunes_barRune[number]:SetWidth(1) end
								if not(vexrunes_checkReloadDelay(runeslot)) then vexrunes_barRune_aniGrp_grow[number]:Play() end
								
								if vexrunes_parameters["layout"]["runes"]["fillbottom"] then
									if vexrunes_parameters["layout"]["runes"]["verticalfill"] then
										vexrunes_barRune[number]:SetPoint("TOPLEFT", vexrunes_barRuneShadow[number], "BOTTOMLEFT",
												vexrunes_parameters["layout"]["runes"]["border"]["size"],
												2*vexrunes_parameters["layout"]["runes"]["border"]["size"])
									else
										vexrunes_barRune[number]:SetPoint("TOPLEFT", vexrunes_barRuneShadow[number], "TOPRIGHT",
												vexrunes_parameters["layout"]["runes"]["border"]["size"],
												-vexrunes_parameters["layout"]["runes"]["border"]["size"])
									end
								end end)
	vexrunes_barRune_ani_shrink[number]:SetDuration(shrinktime)
	vexrunes_barRune_ani_grow[number]:SetDuration(reloadtime-shrinktime+0.2)
	vexrunes_barRune_aniGrp_shrink[number]:Play()
	
	vexrunes_barRuneUsed_aniGrp[number]:Play()
end

function vexrunes_playRuneRdyBlink(number)
	vexrunes_barRuneUsed[number]:SetBackdropColor(1,1,1,1)
	vexrunes_barRuneUsed_aniGrp[number]:SetScript("OnFinished", function () vexrunes_playRuneRdyBlinkDefaults(number) end)
	vexrunes_barRuneUsed_aniGrp[number]:Play()
end

function vexrunes_playRuneRdyBlinkDefaults(number)
	vexrunes_barRuneUsed[number]:SetBackdropColor(	vexrunes_parameters["layout"]["runes"]["bg"]["used"]["r"],
												vexrunes_parameters["layout"]["runes"]["bg"]["used"]["g"],
												vexrunes_parameters["layout"]["runes"]["bg"]["used"]["b"],
												vexrunes_parameters["layout"]["runes"]["bg"]["used"]["a"])
	vexrunes_barRuneUsed[number]:Hide()
end

function vexrunes_checkReloadDelay(runeslot)
	vexdebugs.print(reloadtime,"reloadtime")
	if reloadtime < 11 then
		return false
	else
		return true
	end
end

function vexrunes_checkReloadDelay(runeslot)
	local starttime, spellduration, runeReady = GetRuneCooldown(runeslot)
	
	local currenttime = GetTime()
	local durationleft = starttime+spellduration-currenttime
	local durationleft_f = ""
	if durationleft > 11 then
		return true
	else
		return false
	end
end

-- function vexrunes_checkReloadDelay(runeslot)
	-- local delay = false
	-- vexdebugs.print(runeslot,"runeslot")
	-- vexdebugs.print(vexrunes.runes,"vexrunes.runes")
	-- if 		runeslot == 1 and vexrunes.runes[2] == 0 then delay = true 
	-- elseif 	runeslot == 2 and vexrunes.runes[1] == 0 then delay = true
	-- elseif 	runeslot == 3 and vexrunes.runes[4] == 0 then delay = true
	-- elseif 	runeslot == 4 and vexrunes.runes[3] == 0 then delay = true
	-- elseif 	runeslot == 5 and vexrunes.runes[6] == 0 then delay = true
	-- elseif 	runeslot == 6 and vexrunes.runes[5] == 0 then delay = true end 
	-- return delay
-- end

function vexrunes_getRunePartner(runeslot)
	local partner = 0
	if 		runeslot == 1	then partner = 2
	elseif 	runeslot == 2	then partner = 1
	elseif 	runeslot == 3	then partner = 4
	elseif 	runeslot == 4	then partner = 3
	elseif 	runeslot == 5	then partner = 6
	elseif 	runeslot == 6	then partner = 5 end
	return partner
end

function vexrunes_setBarMain()
	vexrunes_bar_main:SetBackdrop({bgFile="Interface\\Buttons\\WHITE8X8", edgeFile="", tile=false, edgeSize=1})
	vexrunes_bar_main:SetBackdropColor(1, 1, 1, 0)
	vexrunes_bar_main:SetBackdropBorderColor(1, 1, 1, 0)
	vexrunes_bar_main:SetWidth(100)
	vexrunes_bar_main:SetHeight(100)
	
	local parent = UIParent
	if vexrunes_parameters["layout"]["runes"]["position"]["claptovexp"] and vexpower_energybarbg ~=nil then 
		parent = vexpower_energybarbg
	end
	vexrunes_bar_main:SetPoint("CENTER", parent, "CENTER",
		vexrunes_parameters["layout"]["runes"]["position"]["main"]["x"],
		vexrunes_parameters["layout"]["runes"]["position"]["main"]["y"])
end



function vexrunes_setBarRunes(rank)
	if rank == "shadow" then
		for i=1,6 do
			vexrunes_setBarRuneShadow(i)
		end
	elseif rank == "used" then
		for i=1,6 do
			vexrunes_setBarRuneUsed(i)
		end
	elseif rank == "rune" then
		for i=1,6 do
			vexrunes_setBarRuneRune(i)
		end
	elseif rank == "text" then
		for i=1,6 do
			vexrunes_setBarRuneText(i)
			vexrunes_setRuneText(i)
		end
	else
		for i=1,6 do
			vexrunes_setBarRuneShadow(i)
			vexrunes_setBarRuneUsed(i)
			vexrunes_setBarRuneRune(i)
			vexrunes_setBarRuneText(i)
			vexrunes_setRuneText(i)
		end
	end
end

function vexrunes_setBarRuneShadow(number)
	number_string = tostring(number)
	vexrunes_barRuneShadow[number]:SetBackdrop({bgFile=vexrunes.LSM:Fetch("background", vexrunes_parameters["layout"]["runes"]["bg"]["texture"]),
						edgeFile="Interface\\Buttons\\WHITE8X8", tile=false,
						edgeSize=vexrunes_parameters["layout"]["runes"]["border"]["size"]})
	vexrunes_barRuneShadow[number]:SetBackdropColor(vexrunes_parameters["layout"]["runes"]["bg"]["shadow"]["r"],
													vexrunes_parameters["layout"]["runes"]["bg"]["shadow"]["g"],
													vexrunes_parameters["layout"]["runes"]["bg"]["shadow"]["b"],
													vexrunes_parameters["layout"]["runes"]["bg"]["shadow"]["a"])
													
	if vexrunes_parameters["layout"]["runes"]["border"]["likebg"] then
		local runetype = vexrunes_getRuneType(number)
		vexrunes_barRuneShadow[number]:SetBackdropBorderColor(vexrunes_parameters["layout"]["runes"]["bg"][runetype]["r"],
												vexrunes_parameters["layout"]["runes"]["bg"][runetype]["g"],
												vexrunes_parameters["layout"]["runes"]["bg"][runetype]["b"],
												vexrunes_parameters["layout"]["runes"]["border"]["color"]["a"])
	else
		vexrunes_barRuneShadow[number]:SetBackdropBorderColor(vexrunes_parameters["layout"]["runes"]["border"]["color"]["r"],
												vexrunes_parameters["layout"]["runes"]["border"]["color"]["g"],
												vexrunes_parameters["layout"]["runes"]["border"]["color"]["b"],
												vexrunes_parameters["layout"]["runes"]["border"]["color"]["a"])
		
	end
	vexrunes_barRuneShadow[number]:SetWidth(vexrunes_parameters["layout"]["runes"]["size"]["width"])
	vexrunes_barRuneShadow[number]:SetHeight(vexrunes_parameters["layout"]["runes"]["size"]["height"])
	vexrunes_barRuneShadow[number]:SetPoint("CENTER", vexrunes_bar_main, "CENTER",
						vexrunes_parameters["layout"]["runes"]["position"][number_string]["x"],
						vexrunes_parameters["layout"]["runes"]["position"][number_string]["y"])	
end

function vexrunes_setBarRuneRune(number)
	number_string = tostring(number)
	vexrunes_barRune[number]:SetBackdrop({bgFile=vexrunes.LSM:Fetch("background", vexrunes_parameters["layout"]["runes"]["bg"]["texture"]),
						edgeFile="Interface\\Buttons\\WHITE8X8", tile=false,
						edgeSize=vexrunes_parameters["layout"]["runes"]["border"]["size"]})
	vexrunes_barRune[number]:SetBackdropColor(1, 1, 1, 1)
	vexrunes_barRune[number]:SetBackdropBorderColor(0, 0, 0, 0)
	vexrunes_barRune[number]:SetWidth(vexrunes.maxwidth)
	vexrunes_barRune[number]:SetHeight(vexrunes_parameters["layout"]["runes"]["size"]["height"]-(vexrunes_parameters["layout"]["runes"]["border"]["size"]*2))
	vexrunes_barRune[number]:SetPoint("TOPLEFT", vexrunes_barRuneShadow[number], "TOPLEFT",
										vexrunes_parameters["layout"]["runes"]["border"]["size"],
										-vexrunes_parameters["layout"]["runes"]["border"]["size"])	
	
	vexrunes_barRune_aniGrp_shrink[number] = vexrunes_barRune[number]:CreateAnimationGroup("vexrunes_barRune_aniGrp_shrink["..number.."]")
	vexrunes_barRune_aniGrp_shrink[number]:SetLooping("NONE")
	

	
	vexrunes_barRune_ani_shrink[number] = vexrunes_barRune_aniGrp_shrink[number]:CreateAnimation("Scale")
	vexrunes_barRune_ani_shrink[number]:SetDuration(1)
	vexrunes_barRune_ani_shrink[number]:SetOrder(1)
	if vexrunes_parameters["layout"]["runes"]["verticalfill"] then
		vexrunes_barRune_ani_shrink[number]:SetScale(1,(1/vexrunes_parameters["layout"]["runes"]["size"]["height"]-(vexrunes_parameters["layout"]["runes"]["border"]["size"]*2)))
	else
		vexrunes_barRune_ani_shrink[number]:SetScale((1/vexrunes_parameters["layout"]["runes"]["size"]["width"]),1)
	end
	
	if vexrunes_parameters["layout"]["runes"]["fillbottom"] then vexrunes_barRune_ani_shrink[number]:SetOrigin("BOTTOMRIGHT",0,0)
	else 														 vexrunes_barRune_ani_shrink[number]:SetOrigin("TOPLEFT",0,0) end
	
	
	vexrunes_barRune_aniGrp_grow[number] = vexrunes_barRune[number]:CreateAnimationGroup("vexrunes_barRune_aniGrp_grow["..number.."]")
	vexrunes_barRune_aniGrp_grow[number]:SetLooping("NONE")
	vexrunes_barRune_aniGrp_grow[number]:SetScript("OnFinished", function ()  end)
	vexrunes_barRune_ani_grow[number] = vexrunes_barRune_aniGrp_grow[number]:CreateAnimation("Scale")
	vexrunes_barRune_ani_grow[number]:SetDuration(1)
	vexrunes_barRune_ani_grow[number]:SetOrder(1)
	if vexrunes_parameters["layout"]["runes"]["verticalfill"] then
		vexrunes_barRune_ani_grow[number]:SetScale(1,vexrunes_parameters["layout"]["runes"]["size"]["height"]-(vexrunes_parameters["layout"]["runes"]["border"]["size"]*2))
	else
		vexrunes_barRune_ani_grow[number]:SetScale(vexrunes_parameters["layout"]["runes"]["size"]["width"],1)
	end
		
	if vexrunes_parameters["layout"]["runes"]["fillbottom"] then vexrunes_barRune_ani_grow[number]:SetOrigin("BOTTOMRIGHT",0,0)
	else 														 vexrunes_barRune_ani_grow[number]:SetOrigin("TOPLEFT",0,0) end
end

function vexrunes_setBarRuneUsed(number)
	number_string = tostring(number)
	vexrunes_barRuneUsed[number]:SetBackdrop({bgFile=vexrunes.LSM:Fetch("background", vexrunes_parameters["layout"]["runes"]["bg"]["texture"]),
						edgeFile="Interface\\Buttons\\WHITE8X8", tile=false,
						edgeSize=vexrunes_parameters["layout"]["runes"]["border"]["size"]})
	vexrunes_barRuneUsed[number]:SetBackdropColor(	vexrunes_parameters["layout"]["runes"]["bg"]["used"]["r"],
												vexrunes_parameters["layout"]["runes"]["bg"]["used"]["g"],
												vexrunes_parameters["layout"]["runes"]["bg"]["used"]["b"],
												vexrunes_parameters["layout"]["runes"]["bg"]["used"]["a"])
	vexrunes_barRuneUsed[number]:SetBackdropBorderColor(1,1,1,0)
	vexrunes_barRuneUsed[number]:SetWidth(vexrunes.maxwidth)
	vexrunes_barRuneUsed[number]:SetHeight(vexrunes_parameters["layout"]["runes"]["size"]["height"]-(vexrunes_parameters["layout"]["runes"]["border"]["size"]*2))
	vexrunes_barRuneUsed[number]:SetPoint("TOPLEFT", vexrunes_barRuneShadow[number], "TOPLEFT",
										vexrunes_parameters["layout"]["runes"]["border"]["size"],
										-vexrunes_parameters["layout"]["runes"]["border"]["size"])
	vexrunes_barRuneUsed[number]:Hide()
		
	local animationduration_used = 0.3
	vexrunes_barRuneUsed_aniGrp[number] = vexrunes_barRuneUsed[number]:CreateAnimationGroup("vexrunes_barRuneUsed_aniGrp["..number.."]")
	vexrunes_barRuneUsed_aniGrp[number]:SetLooping("NONE")
	vexrunes_barRuneUsed_aniGrp[number]:SetScript("OnPlay", function () vexrunes_barRuneUsed[number]:Show() end)
	vexrunes_barRuneUsed_aniGrp[number]:SetScript("OnFinished", function () vexrunes_barRuneUsed[number]:Hide() end)
	vexrunes_barRuneUsed_ani[number] = vexrunes_barRuneUsed_aniGrp[number]:CreateAnimation("Alpha")
	vexrunes_barRuneUsed_ani[number]:SetDuration(animationduration_used)
	vexrunes_barRuneUsed_ani[number]:SetOrder(1)
	vexrunes_barRuneUsed_ani[number]:SetChange(-1)
end

function vexrunes_setBarRuneText(number)
	number_string = tostring(number)
	vexrunes_barRuneText[number]:SetBackdrop({bgFile=vexrunes.LSM:Fetch("background", vexrunes_parameters["layout"]["runes"]["bg"]["texture"]),
						edgeFile="Interface\\Buttons\\WHITE8X8", tile=false,
						edgeSize=vexrunes_parameters["layout"]["runes"]["border"]["size"]})
	vexrunes_barRuneText[number]:SetBackdropColor(0,0,0,0)
	vexrunes_barRuneText[number]:SetBackdropBorderColor(1,1,1,0)
	vexrunes_barRuneText[number]:SetWidth(vexrunes.maxwidth)
	vexrunes_barRuneText[number]:SetHeight(vexrunes_parameters["layout"]["runes"]["size"]["height"]-(vexrunes_parameters["layout"]["runes"]["border"]["size"]*2))
	vexrunes_barRuneText[number]:SetPoint("TOPLEFT", vexrunes_barRuneShadow[number], "TOPLEFT",
										vexrunes_parameters["layout"]["runes"]["border"]["size"],
										-vexrunes_parameters["layout"]["runes"]["border"]["size"])
end

function vexrunes_setRuneText(number)
	vexrunes_runeText[number]:SetPoint("CENTER", vexrunes_barRuneShadow[number], "CENTER" , vexrunes_parameters["layout"]["text"]["x"], 0)
	vexrunes_runeText[number]:SetTextColor(vexrunes_parameters["layout"]["text"]["color"]["r"],
											vexrunes_parameters["layout"]["text"]["color"]["g"],
											vexrunes_parameters["layout"]["text"]["color"]["b"],
											vexrunes_parameters["layout"]["text"]["color"]["a"])
	vexrunes_runeText[number]:SetText("")
	vexrunes_runeText[number]:SetFont(vexrunes.LSM:Fetch("font", vexrunes_parameters["layout"]["text"]["font"]), vexrunes_parameters["layout"]["text"]["size"], vexrunes_parameters["layout"]["text"]["effect"])	
	vexrunes_runeText[number]:SetWidth(vexrunes.maxwidth)	
	vexrunes_runeText[number]:SetJustifyH(vexrunes_parameters["layout"]["text"]["align"])
end

function vexrunes_setBarRuneBGs()
	for i=1,6 do
		vexrunes_setBarRuneBG(i)
	end
end

function vexrunes_getRuneType(number)
	local runetype = ""
	local rune = GetRuneType(vexrunes_parameters["layout"]["runes"]["order"][tostring(number)])
	
	if 		rune == 1			then runetype = "blood"
	elseif 	rune == 3 			then runetype = "frost"
	elseif 	rune == 2 			then runetype = "unholy"
	else 							 runetype = "death" end
	
	return runetype
end

function vexrunes_setBarRuneBG(number)
	local runetype = vexrunes_getRuneType(number)
	vexrunes_barRune[number]:SetBackdropColor(	vexrunes_parameters["layout"]["runes"]["bg"][runetype]["r"],
												vexrunes_parameters["layout"]["runes"]["bg"][runetype]["g"],
												vexrunes_parameters["layout"]["runes"]["bg"][runetype]["b"],
												vexrunes_parameters["layout"]["runes"]["bg"][runetype]["a"])
end

function vexrunes_showEnergybars()
	local show = true
	--check for enabled addon
	if vexrunes_parameters["enable"] and not(vexrunes.inVehicle and vexrunes_parameters["vehiclehide"]) then
		--check for infight
		if vexrunes_parameters["infightshow"] and vexrunes.infight	then show = true
		elseif not(vexrunes_parameters["infightshow"])				then show = true
		else 															 show = false end	
	else show = false end
	
	
	--react to 'show'
	if vexrunes.show ~= show then
		if show then 	UIFrameFadeOut(vexrunes_bar_main, 0.1, 0, 1) 
		else			UIFrameFadeOut(vexrunes_bar_main, 1, 1, 0)  end
	else
		if show then 	vexrunes_bar_main:Show() 
		else			vexrunes_bar_main:Hide() end
	end
	vexrunes.show = show
end