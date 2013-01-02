--ForteXorcist v1.980.3 by Xus 29-08-2012 for 5.0
-- Paladin module for ForteXorcist started by Arono of Skywall

if FW.CLASS == "PALADIN" then

	local FW = FW;
	local FWL = FW.L;
	local PA = FW:ClassModule("Paladin");
	
	local ST = FW:Module("Timer");
	local CA = FW:Module("Casting");
	local CD = FW:Module("Cooldown");

	-- Tier 7
	--FW:RegisterSet("Redemption Plate",39638, 39639, 39640, 39641, 39642, 40579, 40580, 40581, 40583, 40584);
	                                               
	if ST then
		local F = ST.F;
		ST:SetDefaultHasted(1)

		-- Holy Spells
		:AddSpell(53563,  60, "Buff",	F.BUFF):SetSpellModGlph(63865,30) -- Beacon of Light
		:AddSpell(26573,  10, "Default",F.AOE_DMG):SetTickSpeed(1):SetSpellModGlph(54928,2) -- Consecration
		--:AddSpell(31842,15, "Default",F.NOTARGET) -- Divine Illumination
		:AddSpell( 2812,   3, "Crowd",	F.AOE) -- Holy Wrath (stun)
		:AddSpell(  633,  15, "Default"):SetSpellModTlnt(20234, {[0]=-15}) -- Improved Lay on Hands
		:AddSpell(10326,  20, "Default") -- Turn Evil
		:AddSpell(  879, 000, "Default",F.TICKS):SetTickSpeed(2):SetHasted(0) -- Exorcism
		:AddSpell(82327,  10, "Heal",	F.AOE_DMG):SetTickSpeed(1) -- Holy Radiance
		:AddSpell(76669,   8, "Buff",	F.BUFF) -- Illuminated Healing (Shield)
		
		-- Protection Spells
		:AddSpell(31935,   3, "Default") -- Avenger's Shield (silence)
		:AddSpell(114153, 60, "Default") -- Divine Intervention	MOP
		:AddSpell(64205,  10, "Default",F.NOTARGET) -- Divine Sacrifice
		:AddSpell(  853,   6, "Default") -- Hammer of Justice (stun)
		:AddSpell( 1044,   6, "Buff",	F.BUFF):SetSpellModTlnt(20174,{2,4}) -- Hand of Freedom
		:AddSpell( 1022,  10, "Buff",	F.BUFF) -- Hand of Protection
		:AddSpell(62124,   3, "Default") -- Hand of Reckoning
		:AddSpell( 6940,  12, "Buff",	F.BUFF) -- Hand of Sacrifice
		:AddSpell( 1038,  10, "Buff",	F.BUFF) -- Hand of Salvation
		:AddSpell(26017, 000, "Default") -- Vindication
		:AddSpell(68055, 000, "Default") -- Judgements of the Just
		:AddSpell(31803,  15, "Default",F.TICKS) -- Censure
		:AddSpell(88063,   6, "Buff",	F.BUFF) -- Guarded by the Light (Shield)
		
		-- Retribution Spells
		:AddSpell(20066,  60, "Crowd",	F.UNIQUE) -- Repentance (stun)

		-- Holy Buffs
		:AddBuff(31821) -- Aura Mastery	
		:AddBuff(31842) -- Divine Favor
		:AddBuff(43837) -- Enlightenment (T5 4-Set)
		:AddBuff(64891) -- Holy Mending (T8 2-Set)
		:AddBuff(53672):SetStacks(0) -- Infusion of Light (set to non-stacking)
		:AddBuff(54428) -- Divine Plea
		:AddBuff(53655) -- Judgement of the Pure
		:AddBuff(85497) -- Speed of Light
		:AddBuff(90311) -- Radiant (T11 4-Set)
		:AddBuff(88819) -- Daybreak
		:AddBuff(85509) -- Denounce
		:AddBuff(20050) -- Conviction
		
		-- Protection Buffs
		:AddBuff(64883) -- Aegis (T8 4-Set)
		:AddBuff(37193) -- Infused Shield (T5 4-Set)
		:AddBuff(642) -- Divine Shield
		:AddBuff(20925) -- Holy Shield
		:AddBuff(86659) -- Guardian of Ancient Kings

		:AddBuff(31850) -- Ardent Defender
		:AddBuff(70940) -- Divine Guardian
		:AddBuff(  498) -- Divine Protection
		
		:AddBuff(85416) -- Grand Crusader
		:AddBuff(85433) -- Sacred Duty
		:AddBuff(25780) -- Righteous Fury
		:AddBuff(84839) -- Vengeance
		
		-- Retribution Buffs
		:AddBuff(59578):SetStacks(0) -- The Art of War
		:AddBuff(57669) -- Replenishment
		:AddBuff(20050) -- Vengeance
		:AddBuff(85696) -- Zealotry
		:AddBuff(90174) -- Hand of Light
		:AddBuff(31884) -- Avenging Wrath
		:AddBuff(84963) -- Inquisition
		:AddBuff(85803) -- Selfless Healer
		:AddBuff(87173) -- Long Arm of the Law
		:AddBuff(86700) -- Ancient Power
		
		:AddCooldown(35395, 4.5) -- Crusader Strike
		:AddCooldown(85285,  10) -- Rebuke
		:AddCooldown(20473,   6) -- Holy Shock
		
		:AddDebuff(25771) -- Forbearance
		
		:AddCasterBuffs()
		:AddMeleeBuffs()
	end
	if CD then
		-- Holy Buffs
		CD:AddCooldownBuff(20165); -- Seal of Insight

		-- Protection Buffs
		CD:AddCooldownBuff(20217); -- Blessing of Kings
		CD:AddCooldownBuff(25780); -- Righteous Fury
		CD:AddCooldownBuff(20164); -- Seal of Justice
		CD:AddCooldownBuff(20154); -- Seal of Righteousness

		-- Retribution Buffs
		CD:AddCooldownBuff(19740); -- Blessing of Might
		CD:AddCooldownBuff(31801); -- Seal of Truth
		
		CD:AddCasterPowerupCooldowns();
		CD:AddMeleePowerupCooldowns();
	end
	
	if CA then -- added by 'fakeh'
	
		local am = FW:SpellName(31821);
		local salv = FW:SpellName(1038);
		local sac = FW:SpellName(6940);
		local free = FW:SpellName(1044);
		local bop = FW:SpellName(1022);
		local dp = FW:SpellName(498);
		local gotak = FW:SpellName(86150);
		local dg = FW:SpellName(70940);
		local ad = FW:SpellName(31850);

		CA:RegisterOnSelfCastSuccess(
			function(s, t)
				if s == am then CA:CastShow('AMStart');
				elseif s == salv then CA:CastShow('SalvStart', t);
				elseif s == sac then CA:CastShow('SacStart', t);
				elseif s == free then CA:CastShow('FreeStart', t);
				elseif s == bop then CA:CastShow('BOPStart', t);
				elseif s == dp then CA:CastShow('DPStart');
				elseif s == gotak and GetPrimaryTalentTree() == 2 then CA:CastShow('GOTAKStart');
				elseif s == dg then CA:CastShow('DGStart');
				elseif s == ad then CA:CastShow('ADStart'); end
			end
		);
		
		FW:SetMainCategory(FWL.RAID_MESSAGES);

			FW:SetSubCategory("Raid Damage Reduction",FW.ICON.SPECIFIC,2);
				FW:AddOption("MS2",am,	 "",	"AMStart"); 
				FW.Default.AMStart = {[0]=1,"+++ Aura Mastery (6sec) +++"};
				FW:AddOption("MS2",dg,	"",	"DGStart"); 
				FW.Default.DGStart = {[0]=1,"+++ Divine Guardian (6sec) +++"};

			FW:SetSubCategory("Hands",FW.ICON.SPECIFIC,3);
				FW:AddOption("MS2",salv,	 "",	"SalvStart"); 
				FW.Default.SalvStart = {[0]=1,"+++ Salvation on %s (10sec) +++"};
				FW:AddOption("MS2",sac,	 "",	"SacStart"); 
				FW.Default.SacStart = {[0]=1,"+++ Sacrifice on %s (12sec) +++"};
				FW:AddOption("MS2",free,	 "",	"FreeStart"); 
				FW.Default.FreeStart = {[0]=1,"+++ Freedom on %s (6sec) +++"};
				FW:AddOption("MS2",bop,	 "",	"BOPStart"); 
				FW.Default.BOPStart = {[0]=1,"+++ Hand of Protection on %s (12sec) +++"};

			FW:SetSubCategory("Self Damage Reduction",FW.ICON.SPECIFIC,4);
				FW:AddOption("MS2",dp,	 "",	"DPStart"); 
				FW.Default.DPStart = {[0]=1,"+++ Divine Protection (10sec) +++"};
				FW:AddOption("MS2",gotak,	"",	"GOTAKStart"); 
				FW.Default.GOTAKStart = {[0]=1,"+++ Guardian of Ancient Kings (12sec) +++"};
				FW:AddOption("MS2",ad,	"",	"ADStart"); 
				FW.Default.ADStart = {[0]=1,"+++ Ardent Defender (10sec) +++"};
	end
end

