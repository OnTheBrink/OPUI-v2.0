-------------------------------------------------------------------------------
-- ElvUI Chat Tweaks By Lockslap (US, Bleeding Hollow)
-- <Borderline Amazing>, http://ba-guild.com
-- Based on functionality provided by Prat and/or Chatter
-------------------------------------------------------------------------------
local Module = ElvUI_ChatTweaks:NewModule("GKick Command", "AceConsole-3.0")
local L = ElvUI_ChatTweaks.L
Module.name = L["GKick Command"]
Module.namespace = string.gsub(Module.name, " ", "")

function Module:OnEnable()
	if CanGuildRemove() then
		self:RegisterChatCommand("gkick", function(args)
			local whoToKick = self:GetArgs(args)
			
			-- debugging
			if Module.debug then Module:Print((L["GKick Target: |cffffff00%s|r"]):format(whoToKick)) end
			
			if not whoToKick then
				print(L["|cffffff00Usage: /gkick <name>|r"])
			elseif UnitIsInMyGuild(whoToKick) then
				GuildUninvite(whoToKick)
			end
		end)
	end
end

function Module:OnDisable()
	self:UnregisterChatCommand("gkick")
end

function Module:OnInitialize()
	self.debug = ElvUI_ChatTweaks.db.profile.debugging
end

function Module:Info()
	return L["Provides a |cff00ff00/gkick|r command, as it should be."]
end