local GetTime = GetTime;
local FormatTime = AzCastBar.FormatTime;

-- Extra Options
local extraOptions = {
	{
		[0] = "Options",
		{ type = "Check", var = "showInstants", default = true, label = "Show For Instant Casts", y = 16 },
		{ type = "Color", var = "colNormal", default = { 0.4, 0.6, 0.8 }, label = "Global Cooldown Bar Color" },
	},
};

-- Plugin
local plugin = AzCastBar.CreateMainBar("Frame","GlobalCooldown",extraOptions);

--------------------------------------------------------------------------------------------------------
--                                            Frame Scripts                                           --
--------------------------------------------------------------------------------------------------------

-- OnUpdate
local function OnUpdate(self,elapsed)
	-- Update
	if (not self.fadeTime) then
		self.timeLeft = max(0,self.endTime - GetTime());
		self.status:SetValue(self.duration - self.timeLeft);
		self:SetTimeText(self.timeLeft);
		if (self.timeLeft == 0) then
			self.fadeTime = self.cfg.fadeTime;
		end
	-- Fadeout
	elseif (self.fadeElapsed <= self.fadeTime) then
		self.fadeElapsed = (self.fadeElapsed + elapsed);
		self:SetAlpha(self.cfg.alpha - self.fadeElapsed / self.fadeTime * self.cfg.alpha);
	else
		self:Hide();
	end
end

-- OnEvents
local function OnEvent(self,event,unit,spell,rank,id)
	-- End if Wrong Unit
	if (unit ~= "player") then
		return;
	-- Start GCD -- START events are for casts, SUCCEEDED are for instants
	-- NOTE: If a spell is cast right after /stopcasting, GetSpellCooldown() returns zero (must be a bug)
	elseif (event == "UNIT_SPELLCAST_START" or event == "UNIT_SPELLCAST_SUCCEEDED") then
		local startTime, duration = GetSpellCooldown(spell);
		if (duration) and (duration > 0) and (duration <= 1.5) then
			self.duration = duration;
			self.endTime = (startTime + duration);
			self.status:SetMinMaxValues(0,self.duration);
			self.icon:SetTexture(GetSpellTexture(spell) or "Interface\\Icons\\INV_Misc_PocketWatch_02");
			self.totalTimeText = (self.cfg.showTotalTime and " / "..FormatTime(self.duration,1) or nil);
			self.fadeTime = nil;
			self.fadeElapsed = 0;
			self:SetAlpha(self.cfg.alpha);
			self:Show();
		end
	-- Abort GCD
	elseif (event == "UNIT_SPELLCAST_STOP") then
		self.fadeTime = self.cfg.fadeTime;
	end
end

-- Config Changed
function plugin:OnConfigChanged(cfg)
	self:UnregisterAllEvents();
	if (cfg.enabled) then
		self:RegisterEvent("UNIT_SPELLCAST_START");
		if (cfg.showInstants) then
			self:RegisterEvent("UNIT_SPELLCAST_SUCCEEDED");
		end
		self:RegisterEvent("UNIT_SPELLCAST_STOP");
		self.status:SetStatusBarColor(unpack(cfg.colNormal));
	end
end

--------------------------------------------------------------------------------------------------------
--                                          Initialise Plugin                                         --
--------------------------------------------------------------------------------------------------------

plugin.name:SetText(GetSpellInfo(61304));
plugin:SetScript("OnEvent",OnEvent);
plugin:SetScript("OnUpdate",OnUpdate);