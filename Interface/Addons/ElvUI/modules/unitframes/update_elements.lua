local E, L, V, P, G, _ = unpack(select(2, ...)); --Inport: Engine, Locales, PrivateDB, ProfileDB, GlobalDB, Localize Underscore
local UF = E:GetModule('UnitFrames');
local A = E:GetModule('Auras')
local LSM = LibStub("LibSharedMedia-3.0");
local LSR = LibStub("LibSpecRoster-1.0")

-- Localized LUA
local abs = math.abs
local random = math.random
local ceil = math.ceil
local format = string.format
local sub = string.sub
local floor = math.floor

local _, ns = ...
local ElvUF = ns.oUF
assert(ElvUF, "ElvUI was unable to locate oUF.")

local unitframeFont

local function CheckFilter(filterType, isFriend)
	local FRIENDLY_CHECK, ENEMY_CHECK = false, false
	if type(filterType) == 'string' then
		error('Database conversion failed! Report to Elv.')
	elseif type(filterType) == 'boolean' then
		FRIENDLY_CHECK = filterType
		ENEMY_CHECK = filterType
	elseif filterType then
		FRIENDLY_CHECK = filterType.friendly
		ENEMY_CHECK = filterType.enemy
	end
	
	if (FRIENDLY_CHECK and isFriend) or (ENEMY_CHECK and not isFriend) then
		return true
	end
	
	return false
end

function UF:PostUpdateHealth(unit, min, max)
	local parent = self:GetParent()
	if parent.isForced then
		min = random(1, max)
		self:SetValue(min)
	end

	if parent.ResurrectIcon then
		parent.ResurrectIcon:SetAlpha(min == 0 and 1 or 0)
	end
	
	local r, g, b = self:GetStatusBarColor()
	local unitframeColors = E.db['unitframe']['colors']
	if (unitframeColors.healthclass == true and unitframeColors.colorhealthbyvalue == true) or (unitframeColors.colorhealthbyvalue and parent.isForced) and not (UnitIsTapped(unit) and not UnitIsTappedByPlayer(unit)) then
		local newr, newg, newb = ElvUF.ColorGradient(min, max, 1, 0, 0, 1, 1, 0, r, g, b)

		self:SetStatusBarColor(newr, newg, newb)
		if self.bg and self.bg.multiplier then
			local mu = self.bg.multiplier
			self.bg:SetVertexColor(newr * mu, newg * mu, newb * mu)
		end
	end

	if unitframeColors.classbackdrop then
		local reaction = UnitReaction(unit, 'player')
		local t
		if UnitIsPlayer(unit) then
			local _, class = UnitClass(unit)
			t = parent.colors.class[class]
		elseif reaction then
			t = parent.colors.reaction[reaction]
		end

		if t then
			self.bg:SetVertexColor(t[1], t[2], t[3])
		end
	end
	
	--Backdrop
	if unitframeColors.customhealthbackdrop then
		local backdrop = unitframeColors.health_backdrop
		self.bg:SetVertexColor(backdrop.r, backdrop.g, backdrop.b)		
	end	
end

function UF:PostNamePosition(frame, unit)
	if not frame.Power.value:IsShown() then return end

	if UnitIsPlayer(unit) then
		local db = frame.db
		
		local position = db.name.position
		local x, y = self:GetPositionOffset(position)
		frame.Power.value:SetAlpha(1)
		
		frame.Name:ClearAllPoints()
		frame.Name:Point(position, frame.Health, position, x, y)	
	else
		frame.Power.value:SetAlpha(0)
		
		frame.Name:ClearAllPoints()
		frame.Name:SetPoint(frame.Power.value:GetPoint())
	end
end

local powerTypes = { [0] = "MANA", "RAGE", "FOCUS", "ENERGY", "RUNIC_POWER" }
function UF:PostUpdatePower(unit, min, max)
	local pType = UnitPowerType(unit)
	local parent = self:GetParent()
	
	if parent.isForced then
		min = random(1, max)
		pType = random(0, 4)
		self:SetValue(min)
		
		if not self.colorClass then
			local color = ElvUF['colors'].power[powerTypes[pType]]
			self:SetStatusBarColor(color[1], color[2], color[3])
			local mu = self.bg.multiplier or 1
			self.bg:SetVertexColor(color[1] * mu, color[2] * mu, color[3] * mu)
		end
	end	
	
	local db = parent.db
	if self.LowManaText and db then
		if pType == 0 then
			local perc = max == 0 and 0 or floor(min / max * 100)		
			if perc <= db.lowmana and not UnitIsDeadOrGhost(unit) then
				self.LowManaText:SetFormattedText("%s %s", LOW, MANA)
				E:Flash(self.LowManaText, 0.6)
			else
				self.LowManaText:SetText()
				E:StopFlash(self.LowManaText)
			end
		else
			self.LowManaText:SetText()
			E:StopFlash(self.LowManaText)
		end
	end
	
	if db and db['power'] and db['power'].hideonnpc then
		UF:PostNamePosition(parent, unit)
	end	
end

function UF:PortraitUpdate(unit)
	local db = self:GetParent().db
	
	if not db then return end
	
	if db['portrait'].enable and db['portrait'].overlay then
		self:SetAlpha(0)
		self:SetAlpha(0.35)
	else
		self:SetAlpha(1)
	end
	
	if self:GetObjectType() ~= 'Texture' then
		local portraitModel = self:GetModel()
		if portraitModel and portraitModel.find and portraitModel:find("worgenmale") then
			self:SetCamera(1)
		end	

		self:SetCamDistanceScale(db['portrait'].camDistanceScale - 0.01 >= 0.01 and db['portrait'].camDistanceScale - 0.01 or 0.01) --Blizzard bug fix
		self:SetCamDistanceScale(db['portrait'].camDistanceScale)
	end
end

function UF:UpdateAuraTimer(elapsed)	
	self.expiration = self.expiration - elapsed
	if self.nextupdate > 0 then
		self.nextupdate = self.nextupdate - elapsed
		return
	end
	
	if(self.expiration <= 0) then
		self:SetScript('OnUpdate', nil)
		self.text:SetText('')
		return
	end

	local timervalue, formatid
	timervalue, formatid, self.nextupdate = A:AuraTimeGetInfo(self.expiration, E.db.auras.fadeThreshold)
	self.text:SetFormattedText(("%s%s|r"):format(A.TimeColors[formatid], A.TimeFormats[formatid][2]), timervalue)
end

function UF:PostUpdateAura(unit, button, index, offset, filter, isDebuff, duration, timeLeft)
	local name, _, _, _, dtype, duration, expiration, _, isStealable = UnitAura(unit, index, button.filter)
	local db = self:GetParent().db
	
	if db and db[self.type] then
		unitframeFont = unitframeFont or LSM:Fetch("font", E.db['unitframe'].font)
	
		button.text:FontTemplate(unitframeFont, db[self.type].fontSize, 'OUTLINE')
		button.count:FontTemplate(unitframeFont, db[self.type].fontSize, 'OUTLINE')
		
		if db[self.type].clickThrough and button:IsMouseEnabled() then
			button:EnableMouse(false)
		elseif not db[self.type].clickThrough and not button:IsMouseEnabled() then
			button:EnableMouse(true)
		end
	end
	
	local isFriend = UnitIsFriend('player', unit) == 1 and true or false
	if button.isDebuff then
		if(not isFriend and button.owner ~= "player" and button.owner ~= "vehicle") --[[and (not E.isDebuffWhiteList[name])]] then
			button:SetBackdropBorderColor(0.9, 0.1, 0.1)
			button.icon:SetDesaturated((unit and not unit:find('arena%d')) and true or false)
		else
			local color = DebuffTypeColor[dtype] or DebuffTypeColor.none
			if (name == "Unstable Affliction" or name == "Vampiric Touch") and E.myclass ~= "WARLOCK" then
				button:SetBackdropBorderColor(0.05, 0.85, 0.94)
			else
				button:SetBackdropBorderColor(color.r * 0.6, color.g * 0.6, color.b * 0.6)
			end
			button.icon:SetDesaturated(false)
		end
	else
		if (isStealable) and not isFriend then
			button:SetBackdropBorderColor(237/255, 234/255, 142/255)
		else
			button:SetBackdropBorderColor(unpack(E["media"].bordercolor))		
		end	
	end

	local size = button:GetParent().size
	if size then
		button:Size(size)
	end
	
	button.spell = name
	button.isStealable = isStealable
	if duration ~= 0 then
		if not button:GetScript('OnUpdate') then
			button.expirationTime = expiration
			button.expiration = expiration - GetTime()
			button.nextupdate = 0.05
			button:SetScript('OnUpdate', UF.UpdateAuraTimer)
		end
		if button.expirationTime ~= expiration  then
			button.expirationTime = expiration
			button.expiration = expiration - GetTime()
			button.nextupdate = 0.05
		end
	end	
	if duration == 0 or expiration == 0 then
		button:SetScript('OnUpdate', nil)
		button.text:SetText('')
	end
end

function UF:CustomCastDelayText(duration)
	local db = self:GetParent().db
	if not db then return end
	
	if self.channeling then
		if db.castbar.format == 'CURRENT' then
			self.Time:SetText(("%.1f |cffaf5050%.1f|r"):format(abs(duration - self.max), self.delay))
		elseif db.castbar.format == 'CURRENTMAX' then
			self.Time:SetText(("%.1f / %.1f |cffaf5050%.1f|r"):format(duration, self.max, self.delay))
		elseif db.castbar.format == 'REMAINING' then
			self.Time:SetText(("%.1f |cffaf5050%.1f|r"):format(duration, self.delay))
		end			
	else
		if db.castbar.format == 'CURRENT' then
			self.Time:SetText(("%.1f |cffaf5050%s %.1f|r"):format(duration, "+", self.delay))
		elseif db.castbar.format == 'CURRENTMAX' then
			self.Time:SetText(("%.1f / %.1f |cffaf5050%s %.1f|r"):format(duration, self.max, "+", self.delay))
		elseif db.castbar.format == 'REMAINING' then
			self.Time:SetText(("%.1f |cffaf5050%s %.1f|r"):format(abs(duration - self.max), "+", self.delay))
		end		
	end
end

function UF:CustomTimeText(duration)
	local db = self:GetParent().db
	if not db then return end
	
	if self.channeling then
		if db.castbar.format == 'CURRENT' then
			self.Time:SetText(("%.1f"):format(abs(duration - self.max)))
		elseif db.castbar.format == 'CURRENTMAX' then
			self.Time:SetText(("%.1f / %.1f"):format(duration, self.max))
			self.Time:SetText(("%.1f / %.1f"):format(abs(duration - self.max), self.max))
		elseif db.castbar.format == 'REMAINING' then
			self.Time:SetText(("%.1f"):format(duration))
		end				
	else
		if db.castbar.format == 'CURRENT' then
			self.Time:SetText(("%.1f"):format(duration))
		elseif db.castbar.format == 'CURRENTMAX' then
			self.Time:SetText(("%.1f / %.1f"):format(duration, self.max))
		elseif db.castbar.format == 'REMAINING' then
			self.Time:SetText(("%.1f"):format(abs(duration - self.max)))
		end		
	end
end

local ticks = {}
function UF:HideTicks()
	for i = 1, #ticks do
		ticks[i]:Hide()
	end		
end

function UF:SetCastTicks(frame, numTicks, extraTickRatio)
	extraTickRatio = extraTickRatio or 0
	UF:HideTicks()
	if numTicks and numTicks > 0 then
		local d = frame:GetWidth() / (numTicks + extraTickRatio)
		for i = 1, numTicks do
			if not ticks[i] then
				ticks[i] = frame:CreateTexture(nil, 'OVERLAY')
				ticks[i]:SetTexture(E["media"].normTex)
				ticks[i]:SetVertexColor(0, 0, 0)
				ticks[i]:SetWidth(1)
				ticks[i]:SetHeight(frame:GetHeight())
			end
			ticks[i]:ClearAllPoints()
			ticks[i]:SetPoint("CENTER", frame, "LEFT", d * i, 0)
			ticks[i]:Show()
		end
	end
end

function UF:PostCastStart(unit, name, rank, castid)
	if unit == "vehicle" then unit = "player" end
	local db = self:GetParent().db
	if not db then return end
	
	if db.castbar.displayTarget and self.curTarget then
		self.Text:SetText(sub(format("%s -> %s", name, self.curTarget), 0, floor((((32/245) * self:GetWidth()) / E.db['unitframe'].fontSize) * 12)))
	else
		self.Text:SetText(sub(name, 0, floor((((32/245) * self:GetWidth()) / E.db['unitframe'].fontSize) * 12)))
	end

	self.Spark:Height(self:GetHeight() * 2)
		
	self.unit = unit

	if db.castbar.ticks and unit == "player" then
		local baseTicks = E.global.unitframe.ChannelTicks[name]
		
        -- Detect channeling spell and if it's the same as the previously channeled one
        if baseTicks and name == prevSpellCast then
            self.chainChannel = true
        elseif baseTicks then
            self.chainChannel = nil
            self.prevSpellCast = name
        end
		
		if baseTicks and E.global.unitframe.ChannelTicksSize[name] and E.global.unitframe.HastedChannelTicks[name] then
			local tickIncRate = 1 / baseTicks
			local curHaste = UnitSpellHaste("player") * 0.01
			local firstTickInc = tickIncRate / 2
			local bonusTicks = 0
			if curHaste >= firstTickInc then
				bonusTicks = bonusTicks + 1
			end
			
			local x = tonumber(E:Round(firstTickInc + tickIncRate, 2))
			while curHaste >= x do
				x = tonumber(E:Round(firstTickInc + (tickIncRate * bonusTicks), 2))
				if curHaste >= x then
					bonusTicks = bonusTicks + 1
				end
			end

            local baseTickSize = E.global.unitframe.ChannelTicksSize[name]
            local hastedTickSize = baseTickSize / (1 + curHaste)
            local extraTick = self.max - hastedTickSize * (baseTicks + bonusTicks)
            local extraTickRatio = extraTick / hastedTickSize

			UF:SetCastTicks(self, baseTicks + bonusTicks, extraTickRatio)
		elseif baseTicks and E.global.unitframe.ChannelTicksSize[name] then
			local curHaste = UnitSpellHaste("player") * 0.01
            local baseTickSize = E.global.unitframe.ChannelTicksSize[name]
            local hastedTickSize = baseTickSize / (1 +  curHaste)
            local extraTick = self.max - hastedTickSize * (baseTicks)
            local extraTickRatio = extraTick / hastedTickSize

			UF:SetCastTicks(self, baseTicks, extraTickRatio)
		elseif baseTicks then
			UF:SetCastTicks(self, baseTicks)
		else
			UF:HideTicks()
		end
	elseif unit == 'player' then
		UF:HideTicks()			
	end	
	
	local colors = ElvUF.colors
	if self.interrupt and unit ~= "player" then
		if UnitCanAttack("player", unit) then
			self:SetStatusBarColor(colors.castNoInterrupt[1], colors.castNoInterrupt[2], colors.castNoInterrupt[3])
		else
			self:SetStatusBarColor(colors.castColor[1], colors.castColor[2], colors.castColor[3])
		end
	else
		self:SetStatusBarColor(colors.castColor[1], colors.castColor[2], colors.castColor[3])
	end
end

function UF:PostCastStop(unit, name, castid)
	self.chainChannel = nil
	self.prevSpellCast = nil
end

function UF:PostChannelUpdate(unit, name)
	local db = self:GetParent().db
	if not db then return; end

	if not (unit == "vehicle" or unit == "player") then return end
    
	if db.castbar.ticks then
		local baseTicks = E.global.unitframe.ChannelTicks[name]

		if baseTicks and E.global.unitframe.ChannelTicksSize[name] and E.global.unitframe.HastedChannelTicks[name] then
			local tickIncRate = 1 / baseTicks
			local curHaste = UnitSpellHaste("player") * 0.01
			local firstTickInc = tickIncRate / 2
			local bonusTicks = 0
			if curHaste >= firstTickInc then
				bonusTicks = bonusTicks + 1
			end

			local x = tonumber(E:Round(firstTickInc + tickIncRate, 2))
			while curHaste >= x do
				x = tonumber(E:Round(firstTickInc + (tickIncRate * bonusTicks), 2))
				if curHaste >= x then
					bonusTicks = bonusTicks + 1
				end
			end

			local baseTickSize = E.global.unitframe.ChannelTicksSize[name]
			local hastedTickSize = baseTickSize / (1 + curHaste)
			local extraTick = self.max - hastedTickSize * (baseTicks + bonusTicks)
			if self.chainChannel then
				self.extraTickRatio = extraTick / hastedTickSize
				self.chainChannel = nil
			end

			UF:SetCastTicks(self, baseTicks + bonusTicks, self.extraTickRatio)
		elseif baseTicks and E.global.unitframe.ChannelTicksSize[name] then
			local curHaste = UnitSpellHaste("player") * 0.01
			local baseTickSize = E.global.unitframe.ChannelTicksSize[name]
			local hastedTickSize = baseTickSize / (1 + curHaste)
			local extraTick = self.max - hastedTickSize * (baseTicks)
			if self.chainChannel then
				self.extraTickRatio = extraTick / hastedTickSize
				self.chainChannel = nil
			end

			UF:SetCastTicks(self, baseTicks, self.extraTickRatio)
		elseif baseTicks then
			UF:SetCastTicks(self, baseTicks)
		else
			UF:HideTicks()
		end
	else
		UF:HideTicks()			
	end	
end

function UF:PostCastInterruptible(unit)
	if unit == "vehicle" or unit == "player" then return end
	
	local colors = ElvUF.colors
	if UnitCanAttack("player", unit) then
		self:SetStatusBarColor(colors.castNoInterrupt[1], colors.castNoInterrupt[2], colors.castNoInterrupt[3])	
	else
		self:SetStatusBarColor(colors.castColor[1], colors.castColor[2], colors.castColor[3])
	end
end

function UF:PostCastNotInterruptible(unit)
	local colors = ElvUF.colors.castNoInterrupt
	self:SetStatusBarColor(colors[1], colors[2], colors[3])
end

function UF:UpdateHoly(event, unit, powerType)
	if (self.unit ~= unit or (powerType and powerType ~= 'HOLY_POWER')) then return end

	local db = self.db
	if not db then return end

	local BORDER = E.Border
	local numHolyPower = UnitPower('player', SPELL_POWER_HOLY_POWER);
	local maxHolyPower = UnitPowerMax('player', SPELL_POWER_HOLY_POWER);	
	local MAX_HOLY_POWER = UF['classMaxResourceBar'][E.myclass]
	local USE_MINI_CLASSBAR = db.classbar.fill == "spaced" and db.classbar.enable
	local USE_PORTRAIT = db.portrait.enable
	local USE_PORTRAIT_OVERLAY = db.portrait.overlay and USE_PORTRAIT
	local PORTRAIT_WIDTH = db.portrait.width
	local USE_POWERBAR_OFFSET = db.power.offset ~= 0 and db.power.enable
	
	if USE_PORTRAIT_OVERLAY or not USE_PORTRAIT then
		PORTRAIT_WIDTH = 0		
	end	
	
	local CLASSBAR_WIDTH = db.width - (E.Border * 2)
	if USE_PORTRAIT then
		CLASSBAR_WIDTH = ceil((db.width - (BORDER*2)) - PORTRAIT_WIDTH)
	end
	
	if USE_POWERBAR_OFFSET then
		CLASSBAR_WIDTH = CLASSBAR_WIDTH - db.power.offset
	end
		
	if USE_MINI_CLASSBAR then
		CLASSBAR_WIDTH = CLASSBAR_WIDTH * (maxHolyPower - 1) / maxHolyPower
	end
	
	self.HolyPower:Width(CLASSBAR_WIDTH)
	
	for i = 1, MAX_HOLY_POWER do
		if(i <= numHolyPower) then
			self.HolyPower[i]:SetAlpha(1)
		else
			self.HolyPower[i]:SetAlpha(.2)
		end
		
		self.HolyPower[i]:SetWidth(E:Scale(self.HolyPower:GetWidth() - (E.PixelMode and 4 or 2))/maxHolyPower)	
		self.HolyPower[i]:ClearAllPoints()
		if i == 1 then
			self.HolyPower[i]:SetPoint("LEFT", self.HolyPower)
		else
			if USE_MINI_CLASSBAR then
				self.HolyPower[i]:Point("LEFT", self.HolyPower[i-1], "RIGHT", maxHolyPower == 5 and 7 or 13, 0)
			else
				self.HolyPower[i]:Point("LEFT", self.HolyPower[i-1], "RIGHT", 1, 0)
			end
		end

		if i > maxHolyPower then
			self.HolyPower[i]:Hide()
			self.HolyPower[i].backdrop:SetAlpha(0)
		else
			self.HolyPower[i]:Show()
			self.HolyPower[i].backdrop:SetAlpha(1)
		end		
	end

end	

function UF:UpdateShadowOrbs(event, unit, powerType)
	local frame = self:GetParent()
	local db = frame.db
		
	local point, _, anchorPoint, x, y = frame.Health:GetPoint()
	if self:IsShown() and point then
		if db.classbar.fill == 'spaced' then
			frame.Health:SetPoint(point, frame, anchorPoint, x, -7)
		else
			frame.Health:SetPoint(point, frame, anchorPoint, x, -13)
		end
	elseif point then
		frame.Health:SetPoint(point, frame, anchorPoint, x, -2)
	end
	
	UF:UpdatePlayerFrameAnchors(frame, self:IsShown())
end	

function UF:UpdateArcaneCharges(event, unit, arcaneCharges, maxCharges)
	local frame = self:GetParent()
	local db = frame.db
		
	local point, _, anchorPoint, x, y = frame.Health:GetPoint()
	if self:IsShown() and point then
		if db.classbar.fill == 'spaced' then
			frame.Health:SetPoint(point, frame, anchorPoint, x, -7)
		else
			frame.Health:SetPoint(point, frame, anchorPoint, x, -13)
		end
	elseif point then
		frame.Health:SetPoint(point, frame, anchorPoint, x, -2)
	end
	
	UF:UpdatePlayerFrameAnchors(frame, self:IsShown())
end	

function UF:UpdateHarmony()
	local frame = self:GetParent()

	local db = frame.db
	if not db then return end

	local maxBars = self.numPoints

	local UNIT_WIDTH = db.width
	local BORDER = E.Border
	local CLASSBAR_WIDTH = db.width - (BORDER*2)
	local USE_PORTRAIT = db.portrait.enable
	local USE_PORTRAIT_OVERLAY = db.portrait.overlay and USE_PORTRAIT
	local PORTRAIT_WIDTH = db.portrait.width
	local POWERBAR_OFFSET = db.power.offset
	local USE_POWERBAR = db.power.enable
	local USE_MINI_POWERBAR = db.power.width ~= 'fill' and USE_POWERBAR
	local USE_POWERBAR_OFFSET = db.power.offset ~= 0 and USE_POWERBAR
	local USE_MINI_CLASSBAR = db.classbar.fill == "spaced" and db.classbar.enable
	
	if USE_PORTRAIT_OVERLAY or not USE_PORTRAIT then
		PORTRAIT_WIDTH = 0	
	end
	
	if USE_PORTRAIT then
		CLASSBAR_WIDTH = ceil((CLASSBAR_WIDTH) - PORTRAIT_WIDTH)
	end
	
	if USE_POWERBAR_OFFSET then
		CLASSBAR_WIDTH = CLASSBAR_WIDTH - POWERBAR_OFFSET
	end	
	
	if db.classbar.fill == 'spaced' then	
		CLASSBAR_WIDTH = CLASSBAR_WIDTH * (maxBars - 1) / maxBars
	end
	
	for i=1, UF['classMaxResourceBar'][E.myclass] do
		if self[i]:IsShown() and db.classbar.fill == 'spaced' then
			self[i].backdrop:Show()
		else
			self[i].backdrop:Hide()
		end
	end
	
	self:SetWidth(CLASSBAR_WIDTH)
	
	local colors = ElvUF.colors.harmony
	for i = 1, maxBars do		
		self[i]:SetHeight(self:GetHeight())	
		self[i]:SetWidth((self:GetWidth() - (maxBars - 1)) / maxBars)	
		self[i]:ClearAllPoints()
		
		if i == 1 then
			self[i]:SetPoint("LEFT", self)
		else
			if USE_MINI_CLASSBAR then
				self[i]:Point("LEFT", self[i-1], "RIGHT", E.PixelMode and (maxBars == 5 and 4 or 7) or (maxBars == 5 and 6 or 9), 0)
			else
				self[i]:Point("LEFT", self[i-1], "RIGHT", 1, 0)
			end
		end	
				
		self[i]:SetStatusBarColor(colors[i][1], colors[i][2], colors[i][3])
	end	
end

function UF:UpdateShardBar(spec)
	local frame = self:GetParent()

	local db = frame.db
	if not db then return end

	local maxBars = self.number
	
	for i=1, UF['classMaxResourceBar'][E.myclass] do
		if self[i]:IsShown() and db.classbar.fill == 'spaced' then
			self[i].backdrop:Show()
		else
			self[i].backdrop:Hide()
		end
	end

	if db.classbar.fill == 'spaced' and maxBars == 1 then
		self:ClearAllPoints()
		self:Point("LEFT", frame.Health.backdrop, "TOPLEFT", 8, 0)
	elseif db.classbar.fill == 'spaced' then
		self:ClearAllPoints()
		self:Point("CENTER", frame.Health.backdrop, "TOP", -12, -2)
	end
	
	local SPACING = 1
	if db.classbar.fill == 'spaced' then
		SPACING = 11
	end
	
	for i = 1, maxBars do
		self[i]:SetHeight(self:GetHeight())	
		self[i]:SetWidth((self:GetWidth() - (maxBars - 1)) / maxBars)
		self[i]:ClearAllPoints()
		if i == 1 then
			self[i]:SetPoint("LEFT", self)
		else
			self[i]:Point("LEFT", self[i-1], "RIGHT", SPACING, 0)
		end		
	end
	
	UF:UpdatePlayerFrameAnchors(frame, self:IsShown())
end

local eclipsedirection = {
  ["sun"] = function (frame, change)
  	frame.Text:SetText(change and "#>" or ">")
  	frame.Text:SetTextColor(.6, .6, 1, 1) 
  end,
  ["moon"] = function (frame, change)
  	frame.Text:SetText(change and "<#" or "<") 
  	frame.Text:SetTextColor(1, 1, .4, 1) 
  end,
  ["none"] = function (frame, change)
  	frame.Text:SetText("") 
  end,
}

function UF:PredictEclipse(self, energy, direction, virtual_energy, virtual_direction, virtual_eclipse)
	if self and self:IsShown() then
		eclipsedirection[virtual_direction](self, direction ~= virtual_direction)
	end
end

function UF:EclipseDirection()
	energy, direction, virtual_energy, virtual_direction, virtual_eclipse = LibBalancePowerTracker:GetEclipseEnergyInfo()
	eclipsedirection[virtual_direction](self, direction ~= virtual_direction)
end

function UF:DruidResourceBarVisibilityUpdate(unit)
	local eclipseBar = self:GetParent().EclipseBar
	local druidAltMana = self:GetParent().DruidAltMana
	
	UF:UpdatePlayerFrameAnchors(self:GetParent(), eclipseBar:IsShown() or druidAltMana:IsShown())
end

function UF:DruidPostUpdateAltPower(unit, min, max)
	local powerText = self:GetParent().Power.value
	
	if min ~= max then
		self.Text:SetText()
		return	
	end
	
	local color = ElvUF['colors'].power['MANA']
	color = E:RGBToHex(color[1], color[2], color[3])
	
	self.Text:ClearAllPoints()
	if powerText:GetText() then
		if select(4, powerText:GetPoint()) < 0 then
			self.Text:SetPoint("RIGHT", powerText, "LEFT", 3, 0)
			self.Text:SetFormattedText("%s%d%%|r |cffD7BEA5- |r", color, floor(min / max * 100))			
		else
			self.Text:SetPoint("LEFT", powerText, "RIGHT", -3, 0)
			self.Text:SetFormattedText("|cffD7BEA5-|r%s %d%%|r", color, floor(min / max * 100))
		end
	else
		self.Text:SetPoint(powerText:GetPoint())
		self.Text:SetFormattedText("%s%d%%|r", color, floor(min / max * 100))
	end	
end

function UF:UpdateThreat(event, unit)
	if not unit or (self.unit ~= unit) or not E.initialized then return end
	local status = UnitThreatSituation(unit)
	
	if status and status > 1 then
		local r, g, b = GetThreatStatusColor(status)
		if self.Threat and self.Threat:GetBackdrop() then
			self.Threat:Show()
			self.Threat:SetBackdropBorderColor(r, g, b)
		elseif self.Health.backdrop then
			self.Health.backdrop:SetBackdropBorderColor(r, g, b)
			
			if self.Power and self.Power.backdrop then
				self.Power.backdrop:SetBackdropBorderColor(r, g, b)
			end
		end
	else
		if self.Threat and self.Threat:GetBackdrop() then
			self.Threat:Hide()
		elseif self.Health.backdrop then
			self.Health.backdrop:SetTemplate("Default")		
			if self.Power and self.Power.backdrop then
				self.Power.backdrop:SetTemplate("Default")
			end
		end	
	end
end

function UF:UpdateTargetGlow(event)
	if not self.unit then return end

	local unit = self.unit
	if UnitIsUnit(unit, 'target') then
		self.TargetGlow:Show()
		local reaction = UnitReaction(unit, 'player')
		
		if UnitIsPlayer(unit) then
			local _, class = UnitClass(unit)
			if class then
				local color = RAID_CLASS_COLORS[class]
				self.TargetGlow:SetBackdropBorderColor(color.r, color.g, color.b)
			else
				self.TargetGlow:SetBackdropBorderColor(1, 1, 1)
			end
		elseif reaction then
			local color = FACTION_BAR_COLORS[reaction]
			self.TargetGlow:SetBackdropBorderColor(color.r, color.g, color.b)
		else
			self.TargetGlow:SetBackdropBorderColor(1, 1, 1)
		end
	else
		self.TargetGlow:Hide()
	end
end

function UF:AltPowerBarPostUpdate(min, cur, max)
	local perc = floor((cur/max)*100)
	
	if perc < 35 then
		self:SetStatusBarColor(0, 1, 0)
	elseif perc < 70 then
		self:SetStatusBarColor(1, 1, 0)
	else
		self:SetStatusBarColor(1, 0, 0)
	end
	
	local unit = self:GetParent().unit
	
	if unit == "player" and self.text then 
		local type = select(10, UnitAlternatePowerInfo(unit))
				
		if perc > 0 then
			self.text:SetFormattedText("%s: %d%%", type, perc)
		else
			self.text:SetFormattedText("%s: 0%", type)
		end
	elseif unit and unit:find("boss%d") and self.text then
		self.text:SetTextColor(self:GetStatusBarColor())
		if not self:GetParent().Power.value:GetText() or self:GetParent().Power.value:GetText() == "" then
			self.text:Point("BOTTOMRIGHT", self:GetParent().Health, "BOTTOMRIGHT")
		else
			self.text:Point("RIGHT", self:GetParent().Power.value.value, "LEFT", 2, E.mult)	
		end
		if perc > 0 then
			self.text:SetFormattedText("|cffD7BEA5[|r%d%%|cffD7BEA5]|r", perc)
		else
			self.text:SetText(nil)
		end
	end
end

function UF:UpdateComboDisplay(event, unit)
	if (unit == 'pet') then return end
	local db = UF.player.db
	local cpoints = self.CPoints
	local cp = (UnitHasVehicleUI("player") or UnitHasVehicleUI("vehicle")) and GetComboPoints('vehicle', 'target') or GetComboPoints('player', 'target')

	for i=1, MAX_COMBO_POINTS do
		if (i <= cp) then
			cpoints[i]:SetAlpha(1)
		else 
			cpoints[i]:SetAlpha(.15)			
		end
		if cp == MAX_COMBO_POINTS and db.classbar.fill == 'spaced' then
			cpoints[i].backdrop.shadow:Show()
			cpoints[i]:SetScript('OnUpdate', function(self)
				E:Flash(self.backdrop.shadow, 0.6)
			end)
		else
			cpoints[i].backdrop.shadow:Hide()
			cpoints[i]:SetScript('OnUpdate', nil)
		end
	end
	
	local BORDER = E.Border;
	local SPACING = E.Spacing;
	local db = E.db['unitframe']['units'].target
	local USE_COMBOBAR = db.combobar.enable
	local USE_MINI_COMBOBAR = db.combobar.fill == "spaced" and USE_COMBOBAR
	local COMBOBAR_HEIGHT = db.combobar.height
	local USE_PORTRAIT = db.portrait.enable
	local USE_PORTRAIT_OVERLAY = db.portrait.overlay and USE_PORTRAIT
	local PORTRAIT_WIDTH = db.portrait.width
	

	if USE_PORTRAIT_OVERLAY or not USE_PORTRAIT then
		PORTRAIT_WIDTH = 0
	end
	
	if cpoints[1]:GetAlpha() == 1 then
		cpoints:Show()
		if USE_MINI_COMBOBAR then
			self.Portrait.backdrop:SetPoint("TOPRIGHT", self, "TOPRIGHT", 0, -((COMBOBAR_HEIGHT/2) + SPACING - BORDER))
			self.Health:Point("TOPRIGHT", self, "TOPRIGHT", -(BORDER+PORTRAIT_WIDTH), -(SPACING + (COMBOBAR_HEIGHT/2)))
		else
			self.Portrait.backdrop:SetPoint("TOPRIGHT", self, "TOPRIGHT")
			self.Health:Point("TOPRIGHT", self, "TOPRIGHT", -(BORDER+PORTRAIT_WIDTH), -(BORDER + SPACING + COMBOBAR_HEIGHT))
		end		

	else
		cpoints:Hide()
		self.Portrait.backdrop:SetPoint("TOPRIGHT", self, "TOPRIGHT")
		self.Health:Point("TOPRIGHT", self, "TOPRIGHT", -(BORDER+PORTRAIT_WIDTH), -BORDER)
	end
end

function UF:AuraFilter(unit, icon, name, rank, texture, count, dtype, duration, timeLeft, caster, isStealable, shouldConsolidate, spellID, canApplyAura, isBossDebuff)	
	if E.global.unitframe.InvalidSpells[spellID] then
		return false
	end

	local db = self:GetParent().db
	if not db or not db[self.type] then return true end
	
	db = db[self.type]

	local returnValue = true;
	local returnValueChanged = false;
	local isPlayer = caster == 'player' or caster == 'vehicle'
	local isFriend = UnitIsFriend('player', unit) == 1 and true or false
	
	icon.isPlayer = isPlayer
	icon.owner = caster
	icon.name = name
	
	--This should be sorted as least priority checked first
	--most priority last
	
	if CheckFilter(db.playerOnly, isFriend) then
		if isPlayer then
			returnValue = true;
		elseif not returnValueChanged then
			returnValue = false;
		end
		returnValueChanged = true;
	end
	
	if CheckFilter(db.onlyDispellable, isFriend) then
		if (self.type == 'buffs' and isStealable) or (self.type == 'debuffs' and dtype and E:IsDispellableByMe(dtype)) then
			returnValue = true;
		elseif not returnValueChanged then
			returnValue = false;
		end
		returnValueChanged = true;
	end
	
	if CheckFilter(db.noConsolidated, isFriend) then
		if shouldConsolidate == 1 then
			returnValue = false;
		elseif not returnValueChanged then
			returnValue = true;
		end
		
		returnValueChanged = true;
	end
	
	if CheckFilter(db.noDuration, isFriend) then
		if (duration == 0 or not duration) then
			returnValue = false;
		elseif not returnValueChanged then
			returnValue = true;
		end
		
		returnValueChanged = true;
	end
	
	if CheckFilter(db.useBlacklist, isFriend) then
		local blackList = E.global['unitframe']['aurafilters']['Blacklist'].spells[name]
		if blackList and blackList.enable then
			returnValue = false;
		elseif not returnValueChanged then
			returnValue = true;
		end
		
		returnValueChanged = true;
	end
	
	if CheckFilter(db.useWhitelist, isFriend) then
		local whiteList = E.global['unitframe']['aurafilters']['Whitelist'].spells[name]
		if whiteList and whiteList.enable then
			returnValue = true;
		elseif not returnValueChanged then
			returnValue = false;
		end
		
		returnValueChanged = true;
	end	

	local useFilter = E.global['unitframe']['aurafilters'][db.useFilter]
	if db.useFilter and useFilter then
		local type = useFilter.type
		local spellList = useFilter.spells

		if type == 'Whitelist' then
			if spellList[name] and spellList[name].enable then
				returnValue = true	
			elseif not returnValueChanged then
				returnValue = false
			end
		elseif type == 'Blacklist' and spellList[name] and spellList[name].enable then
			returnValue = false				
		end
	end		

	return returnValue	
end

local counterOffsets = {
	['TOPLEFT'] = {6, 1},
	['TOPRIGHT'] = {-6, 1},
	['BOTTOMLEFT'] = {6, 1},
	['BOTTOMRIGHT'] = {-6, 1},
	['LEFT'] = {6, 1},
	['RIGHT'] = {-6, 1},
	['TOP'] = {0, 0},
	['BOTTOM'] = {0, 0},
}

local iconconfiguration = {
	["coloredIcon"] = function (icon, buff)
		icon.icon:SetTexture(E["media"].blankTex);
		
		if (buff["color"]) then
			icon.icon:SetVertexColor(buff["color"].r, buff["color"].g, buff["color"].b)
		else
			icon.icon:SetVertexColor(0.8, 0.8, 0.8)
		end		
		icon.text:Hide()
		icon.border:Show()
	end,
	["texturedIcon"] = function (icon, buff)
		icon.icon:SetVertexColor(1, 1, 1)
		icon.icon:SetTexCoord(.18, .82, .18, .82);
		icon.icon:SetTexture(icon.image);
		icon.text:Hide()
		icon.border:Show();	
	end,
	["text"] = function (icon, buff)
		icon.icon:SetTexture(nil)
		icon.text:Show()
		icon.text:SetTextColor(buff["color"].r, buff["color"].g, buff["color"].b)
		icon.border:Hide()
	end,
}

function UF:UpdateAuraWatch(frame)
	local buffs = {};
	local auras = frame.AuraWatch;
	local db = frame.db.buffIndicator;

	if not db.enable then
		auras:Hide()
		return
	else
		auras:Show()
	end
	
	if frame.unit == 'pet' then
		local buffWatchPET = E.global['unitframe'].buffwatch.PET or {}
		for i = 1, #buffWatchPET do
			buffs[#buffs + 1] = buffWatchPET[i]
		end	
	else
		local buffWatchClass =  E.global['unitframe'].buffwatch[E.myclass] or {}
		for i = 1, #buffWatchClass do
			buffs[#buffs + 1] = buffWatchClass[i]
		end	
	end
	
	--CLEAR CACHE
	if auras.icons then
		for spell in pairs(auras.icons) do
			local matchFound = false
			for i = 1, #buffs do
				if buffs[i] and buffs[i].id == spell then
					matchFound = true
					break
				end
			end
			
			if not matchFound then
				auras.icons[spell]:Hide()
				auras.icons[spell] = nil;
			end
		end
	end
	
	unitframeFont = unitframeFont or LSM:Fetch("font", E.db['unitframe'].font)
	
	for i = 1, #buffs do
		local buff = buffs[i]
		if buff["id"] then
			local name, _, image = GetSpellInfo(buff["id"]);
			if name then
				local icon = auras.icons[buff.id] or CreateFrame("Frame", nil, auras)
				icon.name = name
				icon.image = image
				icon.spellID = buff["id"]
				icon.anyUnit = buff["anyUnit"]
				icon.style = buff['style']
				icon.onlyShowMissing = buff["onlyShowMissing"]
				icon.presentAlpha = icon.onlyShowMissing and 0 or 1
				icon.missingAlpha = icon.onlyShowMissing and 1 or 0				
				icon:Width(db.size);
				icon:Height(db.size);
				icon:ClearAllPoints()
				icon:SetPoint(buff["point"], frame.Health, buff['point'], E.PixelMode and 0, E.PixelMode and 0);

				if not icon.icon then
					icon.icon = icon:CreateTexture(nil, "BORDER");
					icon.icon:SetAllPoints(icon);
				end
				
				if not icon.text then
					icon.text = icon:CreateFontString(nil, 'BORDER');
				end
				
				if not icon.border then
					icon.border = icon:CreateTexture(nil, "BACKGROUND");
					icon.border:Point("TOPLEFT", -E.mult, E.mult);
					icon.border:Point("BOTTOMRIGHT", E.mult, -E.mult);
					icon.border:SetTexture(E["media"].blankTex);
					icon.border:SetVertexColor(0, 0, 0);
				end
				
				iconconfiguration[icon.style](icon, buff)
				
				if not icon.cd then
					icon.cd = CreateFrame("Cooldown", nil, icon)
					icon.cd:SetAllPoints(icon)
					icon.cd:SetReverse(true)
					icon.cd:SetFrameLevel(icon:GetFrameLevel())
				end
								
				if not icon.count then
					icon.count = icon:CreateFontString(nil, "OVERLAY")
					icon.count:SetPoint("CENTER", counterOffsets[buff["point"]][0], counterOffsets[buff["point"]][1])
				end
							
				icon.count:FontTemplate(unitframeFont, db.fontSize, 'OUTLINE');
				icon.text:FontTemplate(unitframeFont, db.fontSize, 'OUTLINE');
				icon.text:ClearAllPoints()
				icon.text:SetPoint(buff["point"])
				
				if buff["enabled"] then
					auras.icons[buff.id] = icon;
					if auras.watched then
						auras.watched[buff.id] = icon;
					end
				else	
					auras.icons[buff.id] = nil;
					if auras.watched then
						auras.watched[buff.id] = nil;
					end
					icon:Hide();
					icon = nil;
				end
			end
		end
	end
	
	if frame.AuraWatch.Update then
		frame.AuraWatch.Update(frame)
	end
		
	buffs = nil;
end

-- local role texture buffer
local roleIconTextures = { 
	TANK = [[Interface\AddOns\ElvUI\media\textures\tank.tga]],
	HEALER = [[Interface\AddOns\ElvUI\media\textures\healer.tga]],
	DAMAGER = [[Interface\AddOns\ElvUI\media\textures\dps.tga]]
}

function UF:UpdateRoleIconInterval(elapsed)
	if not self then return end
	
	self.elapsed = (self.elapsed or 0) + elapsed
	if (self.elapsed < 2) then return end

	UF.UpdateRoleIcon(self)
end

function UF:UpdateRoleIcon()
	local lfdrole = self.LFDRole
	local db = self.db.roleIcon;
	
	self.elapsed = 0
	
	if not (db or db.enable) then 
		lfdrole:Hide()
		return 
	end
	
	local role = UnitGroupRolesAssigned(self.unit)
	if role == 'NONE' then
		if self.isForced then
			local rnd = random(1, 3)
			role = rnd == 1 and "TANK" or (rnd == 2 and "HEALER" or (rnd == 3 and "DAMAGER"))
		else
			_, role = LSR:getRole(UnitGUID(self.unit))
		end
	end
	
	if role and role ~= 'NONE' and (self.isForced or UnitIsConnected(self.unit)) then
		lfdrole:SetTexture(roleIconTextures[role])
		lfdrole:Show()	
		self:SetScript('OnUpdate', nil)
	else
		lfdrole:Hide()
		self:SetScript('OnUpdate', UF.UpdateRoleIconInterval)
	end	
end

function UF:RaidRoleUpdate()
	local anchor = self:GetParent()
	local leader = anchor:GetParent().Leader
	local masterLooter = anchor:GetParent().MasterLooter

	if not leader or not masterLooter then return; end

	local unit = anchor:GetParent().unit
	local db = anchor:GetParent().db
	local isLeader = leader:IsShown()
	local isMasterLooter = masterLooter:IsShown()
	
	leader:ClearAllPoints()
	masterLooter:ClearAllPoints()
	
	if db and db.raidRoleIcons then
		if isLeader and db.raidRoleIcons.position == 'TOPLEFT' then
			leader:Point('LEFT', anchor, 'LEFT')
			masterLooter:Point('RIGHT', anchor, 'RIGHT')
		elseif isLeader and db.raidRoleIcons.position == 'TOPRIGHT' then
			leader:Point('RIGHT', anchor, 'RIGHT')
			masterLooter:Point('LEFT', anchor, 'LEFT')	
		elseif isMasterLooter and db.raidRoleIcons.position == 'TOPLEFT' then
			masterLooter:Point('LEFT', anchor, 'LEFT')	
		else
			masterLooter:Point('RIGHT', anchor, 'RIGHT')
		end
	end
end

local function CheckFilterArguement(option, optionArgs)
	if option ~= true then
		return true
	end

	return optionArgs
end

function UF:AuraBarFilter(unit, name, rank, icon, count, debuffType, duration, expirationTime, unitCaster, isStealable, shouldConsolidate, spellID)
	if not self.db then return; end
	local db = self.db.aurabar

	local returnValue = true;
	local returnValueChanged = false
	local isPlayer = unitCaster == 'player' or unitCaster == 'vehicle'
	local isFriend = UnitIsFriend('player', unit) == 1 and true or false
	local auraType = isFriend and db.friendlyAuraType or db.enemyAuraType	
	--print(name..': '..spellID, E.global.unitframe.InvalidSpells[spellID])
	if E.global.unitframe.InvalidSpells[spellID] then
		return false;
	end
	
	--This should be sorted as least priority checked first
	--most priority last

	if CheckFilter(db.playerOnly, isFriend) then
		if isPlayer then
			returnValue = true;
		elseif not returnValueChanged then
			returnValue = false;
		end
		returnValueChanged = true;
	end
	
	if CheckFilter(db.onlyDispellable, isFriend) then
		if (auraType == 'HELPFUL' and isStealable) or (auraType == 'HARMFUL' and debuffType and E:IsDispellableByMe(debuffType)) then
			returnValue = true;
		elseif not returnValueChanged then
			returnValue = false;
		end
		returnValueChanged = true;
	end	
	
	if CheckFilter(db.noConsolidated, isFriend) then
		if shouldConsolidate == 1 then
			returnValue = false;
		elseif not returnValueChanged then
			returnValue = true;
		end
		
		returnValueChanged = true;
	end
	
	if CheckFilter(db.noDuration, isFriend) then
		if (duration == 0 or not duration) then
			returnValue = false;
		elseif not returnValueChanged then
			returnValue = true;
		end
		
		returnValueChanged = true;
	end
	
	if CheckFilter(db.useBlacklist, isFriend) then
		local blackList = E.global['unitframe']['aurafilters']['Blacklist'].spells[name]
		if blackList and blackList.enable then
			returnValue = false;
		elseif not returnValueChanged then
			returnValue = true;
		end
		
		returnValueChanged = true;
	end
	
	if CheckFilter(db.useWhitelist, isFriend) then
		local whiteList = E.global['unitframe']['aurafilters']['Whitelist'].spells[name]
		if whiteList and whiteList.enable then
			returnValue = true;
		elseif not returnValueChanged then
			returnValue = false;
		end
		
		returnValueChanged = true;
	end	

	local useFilter = E.global['unitframe']['aurafilters'][db.useFilter]
	if db.useFilter and useFilter then
		local type = useFilter.type
		local spellList = useFilter.spells

		if type == 'Whitelist' then
			if spellList[name] and spellList[name].enable then
				returnValue = true	
			elseif not returnValueChanged then
				returnValue = false
			end

		elseif type == 'Blacklist' and spellList[name] and spellList[name].enable then
			returnValue = false				
		end
	end		

	return returnValue	
end

function UF:ColorizeAuraBars(event, unit)
	local bars = self.bars
	for index = 1, #bars do
		local frame = bars[index]
		if not frame:IsVisible() then	break end
		
		local bar = frame.statusBar
		local colors = E.global.unitframe.AuraBarColors[bar.aura.name]
		if colors then
			bar:SetStatusBarColor(colors.r, colors.g, colors.b)
		end
	end
end

function UF:SmartAuraDisplay()
	local db = self.db
	local unit = self.unit
	if not db or not db.smartAuraDisplay or db.smartAuraDisplay == 'DISABLED' or not UnitExists(unit) then return; end

	local buffs = self.Buffs
	local debuffs = self.Debuffs
	local auraBars = self.AuraBars
	local isFriend = UnitIsFriend('player', unit) == 1 and true or false
	
	if isFriend then
		if db.smartAuraDisplay == 'SHOW_DEBUFFS_ON_FRIENDLIES' then
			buffs:Hide()
			debuffs:Show()
		else
			buffs:Show()
			debuffs:Hide()		
		end
	else
		if db.smartAuraDisplay == 'SHOW_DEBUFFS_ON_FRIENDLIES' then
			buffs:Show()
			debuffs:Hide()
		else
			buffs:Hide()
			debuffs:Show()		
		end
	end
	
	local yOffset = E.PixelMode and (db.aurabar.anchorPoint == 'BELOW' and 1 or -1) or 0;
	
	if buffs:IsShown() then
		local x, y = E:GetXYOffset(db.buffs.anchorPoint)
		
		buffs:ClearAllPoints()
		buffs:Point(E.InversePoints[db.buffs.anchorPoint], self, db.buffs.anchorPoint, x + db.buffs.xOffset, y + db.buffs.yOffset)
		
		local anchorPoint, anchorTo = 'BOTTOM', 'TOP'
		if db.aurabar.anchorPoint == 'BELOW' then
			anchorPoint, anchorTo = 'TOP', 'BOTTOM'
		end		
		auraBars:ClearAllPoints()
		auraBars:SetPoint(format("%sLEFT", anchorPoint), buffs, format("%sLEFT", anchorTo), 0, yOffset)
		auraBars:SetPoint(format("%sRIGHT", anchorPoint), buffs, format("%sRIGHT", anchorTo), 0, yOffset)
	end
	
	if debuffs:IsShown() then
		local x, y = E:GetXYOffset(db.debuffs.anchorPoint)
		
		debuffs:ClearAllPoints()
		debuffs:Point(E.InversePoints[db.debuffs.anchorPoint], self, db.debuffs.anchorPoint, x + db.debuffs.xOffset, y + db.debuffs.yOffset)	

		local anchorPoint, anchorTo = 'BOTTOM', 'TOP'
		if db.aurabar.anchorPoint == 'BELOW' then
			anchorPoint, anchorTo = 'TOP', 'BOTTOM'
		end		
		auraBars:ClearAllPoints()
		auraBars:SetPoint(format("%sLEFT", anchorPoint), buffs, format("%sLEFT", anchorTo), 0, yOffset)
		auraBars:SetPoint(format("%sRIGHT", anchorPoint), buffs, format("%sRIGHT", anchorTo), 0, yOffset)
	end
end