local E, L, V, P, G, _ = unpack(ElvUI)
local UF = E:GetModule('UnitFrames')

local OpUI = CreateFrame("Frame")
OpUI:RegisterEvent("PLAYER_LOGIN")
OpUI:SetScript("OnEvent", function(self)
	-- Player UF Changes
    ElvUF_Player.Power:SetReverseFill(true)
    ElvUF_Player.Health:SetReverseFill(true)
    ElvUF_Player.Castbar:SetReverseFill(true)
    
	-- TargetTarget UF Changes
    ElvUF_TargetTarget.Health:SetOrientation("VERTICAL")
    ElvUF_TargetTarget.Power:SetOrientation("VERTICAL")
end)

ElvUF_Player.Castbar:SetScript("OnUpdate", function(self, elapsed)
	if(self.casting) then
		local duration = self.duration + elapsed
		if(duration >= self.max) then
			self.casting = nil
			self:Hide()

			if(self.PostCastStop) then self:PostCastStop(self.__owner.unit) end
			return
		end

		if(self.Time) then
			if(self.delay ~= 0) then
				if(self.CustomDelayText) then
					self:CustomDelayText(duration)
				else
					self.Time:SetFormattedText("%.1f|cffff0000-%.1f|r", duration, self.delay)
				end
			else
				if(self.CustomTimeText) then
					self:CustomTimeText(duration)
				else
					self.Time:SetFormattedText("%.1f", duration)
				end
			end
		end

		self.duration = duration
		self:SetValue(duration)

		if(self.Spark) then
			self.Spark:SetPoint("CENTER", self, "RIGHT", -(duration / self.max) * self:GetWidth(), 0)
		end
	elseif(self.channeling) then
		local duration = self.duration - elapsed

		if(duration <= 0) then
			self.channeling = nil
			self:Hide()

			if(self.PostChannelStop) then self:PostChannelStop(self.__owner.unit) end
			return
		end

		if(self.Time) then
			if(self.delay ~= 0) then
				if(self.CustomDelayText) then
					self:CustomDelayText(duration)
				else
					self.Time:SetFormattedText("%.1f|cffff0000-%.1f|r", duration, self.delay)
				end
			else
				if(self.CustomTimeText) then
					self:CustomTimeText(duration)
				else
					self.Time:SetFormattedText("%.1f", duration)
				end
			end
		end

		self.duration = duration
		self:SetValue(duration)
		if(self.Spark) then
			self.Spark:SetPoint("CENTER", self, "RIGHT", -(duration / self.max) * self:GetWidth(), 0)
		end
	else
		self.unitName = nil
		self.casting = nil
		self.castid = nil
		self.channeling = nil

		self:SetValue(1)
		self:Hide()
	end
end)

hooksecurefunc(UF, "Update_PlayerFrame", function(self)
	if E.db.unitframe.units.player.portrait.overlay then
		print("true")
		ElvUF_Player.Health.bg:ClearAllPoints()
		ElvUF_Player.Health.bg:Point('BOTTOMRIGHT', ElvUF_Player.Health:GetStatusBarTexture(), 'BOTTOMLEFT')
		ElvUF_Player.Health.bg:Point('TOPLEFT', ElvUF_Player.Health)		
		ElvUF_Player.Health.bg:SetParent(ElvUF_Player.Portrait.overlay)
	end
end)