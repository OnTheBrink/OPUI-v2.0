-------------------------------------------------------------------------------
-- ElvUI Chat Tweaks By Lockslap (US, Bleeding Hollow)
-- <Borderline Amazing>, http://ba-guild.com
-- Based on functionality provided by Prat and/or Chatter
-------------------------------------------------------------------------------
local Module = ElvUI_ChatTweaks:NewModule("In Command", "AceConsole-3.0", "AceTimer-3.0")
local L = ElvUI_ChatTweaks.L
Module.name = L["In Command"]
Module.namespace = string.gsub(Module.name, " ", "")

local format = string.format

local EditBox = CreateFrame("EditBox", "InCommandEditBox")
EditBox:SetAutoFocus(false)
EditBox:ClearFocus()

function Module:RunCommand(command)
	EditBox:SetText(command)
	ChatEdit_SendText(EditBox)
	EditBox:Show()
end

function Module:OnEnable()
	self:RegisterChatCommand("in", function(args)
		local delay, command = args:match("^([^%s]+)%s+(.*)$")
		delay = tonumber(delay)
		if not delay or not command or #command == 0 then
			print(L["|cffffff00Usage: /in <delay> <command>|r"])
		elseif IsSecureCmd(command) then
			print(format(L["|cffffff00Unable to execute secure command.|r |cffffffff%s|r"], command))
		else
			self:ScheduleTimer("RunCommand", delay, command)
		end
	end)
end

function Module:OnDisable()
	self:UnregisterChatCommand("in")
end

function Module:OnInitialize()
	self.debug = ElvUI_ChatTweaks.db.profile.debugging
end

function Module:Info()
	return L["Provides a /in command to delay the execution of code in macros and other settings."]
end