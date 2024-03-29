-------------------------------------------------------------------------------
-- ElvUI Chat Tweaks By Lockslap (US, Bleeding Hollow)
-- <Borderline Amazing>, http://ba-guild.com
-- Based on functionality provided by Prat and/or Chatter
-------------------------------------------------------------------------------
local Module = ElvUI_ChatTweaks:NewModule("Release Command", "AceConsole-3.0")
local L = ElvUI_ChatTweaks.L
Module.name = L["Release Command"]

function Module:OnEnable()
	self:RegisterChatCommand("release", function() RepopMe() end)
end

function Module:OnDisable()
	self:UnregisterChatCommand("release")
end

function Module:OnInitialize()
	Module.debug = ElvUI_ChatTweaks.db.profile.debugging
end

function Module:Info()
	return L["A simple module to add the |cff00ff96/release|r command to release your spirit if your popup window disappears."]
end