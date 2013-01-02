-------------------------------------------------------------------------------
-- ElvUI Chat Tweaks By Lockslap (US, Bleeding Hollow)
-- <Borderline Amazing>, http://ba-guild.com
-- Based on functionality provided by Prat and/or Chatter
-------------------------------------------------------------------------------
local Module = ElvUI_ChatTweaks:NewModule("Chat Fading", "AceConsole-3.0")
local L = ElvUI_ChatTweaks.L
Module.name = L["Chat Fading"]
Module.namespace = string.gsub(Module.name, " ", "")

function Module:OnEnable()
	for i = 1, NUM_CHAT_WINDOWS do
		local cf = _G["ChatFrame" .. i]
		cf:SetFading(nil)
	end
	for index,name in ipairs(self.TempChatFrames) do
		local cf = _G[name]
		if cf then
			cf:SetFading(nil)
		end
	end
end

function Module:OnDisable()
	for i = 1, NUM_CHAT_WINDOWS do
		local cf = _G["ChatFrame" .. i]
		cf:SetFading(true)
	end
	for index,name in ipairs(self.TempChatFrames) do
		local cf = _G[name]
		if cf then
			cf:SetFading(true)
		end
	end
end

function Module:OnInitialize()
	self.debug = ElvUI_ChatTweaks.db.profile.debugging
end

function Module:Info()
	return L["This will disable the ChatFrames annoying habit of having the chat text fade away after a certain amount of time."]
end