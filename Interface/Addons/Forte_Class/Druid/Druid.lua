--ForteXorcist v1.980.3 by Xus 29-08-2012 for 5.0
-- Module started by Lurosara and some additions by 'Joseph Toth'

-- TODO:
-- Forte_Timer:
--   Feral: Feral Charge Effect (Possibly too painful to implement in a reasonable manner.)

if FW.CLASS == "DRUID" then
	local FW = FW;
	local FWL = FW.L;
	local DR = FW:ClassModule("Druid");
		
	local ST = FW:Module("Timer");
	local CA = FW:Module("Casting");
	local CD = FW:Module("Cooldown");
	--
	-- Spell Timer
	--
	-- Note that the Cyclone timer is always going to be inaccurate past the first cast
	
	-- Register ID renames first!
	FW:SetCustomName(50334,FWL.BERSERK_FERAL);
	FW:SetCustomName(16979,FWL.FERAL_CHARGE_BEAR);
	FW:SetCustomName(49376,FWL.FERAL_CHARGE_CAT);
	
	FW:SetCustomName(33878,FWL.MANGLE_BEAR);
	FW:SetCustomName(33876,FWL.MANGLE_CAT);
	
	FW:SetCustomName(80964,FWL.SKULL_BASH_BEAR);
	FW:SetCustomName(80965,FWL.SKULL_BASH_CAT);
	
	FW:SetCustomName(779,FWL.SWIPE_BEAR);
	FW:SetCustomName(62078,FWL.SWIPE_CAT);
	
	FW:RegisterSet("Thunderheart Regalia",31043,31035,31040,31046,31049,34572,34446,34555);
	FW:RegisterSet("Nordrassil Raiment",30216,30217,30219,30220,30220);	
	
	if ST then
		local F = ST.F;
		ST:AddSpellRename(16857,770); -- Faerie Fire (Feral) -> Faerie Fire
				
		-- id/name, hastarget, tickspeed
		ST:AddChannel(16914, 0, 1); -- Hurricane
		
		-- Balance Spells
		ST:SetDefaultHasted(1)
		:AddSpell(33786, 000,"Crowd",	F.UNIQUE) -- Cyclone
		:AddSpell(19975,  27,"Crowd",	F.UNIQUE):SetDurationPVP(12) -- Entangling Roots
		:AddSpell( 2637,  40,"Crowd",	F.UNIQUE):SetDurationPVP(12) -- Hibernate
		:AddSpell(  770, 300,"Default"):SetStacks(3) -- Faerie Fire
		:AddSpell(33831,  30,"Pet",		F.SUMMON) -- Force of Nature
		:AddSpell( 5570,  12,"Default",	F.TICKS):SetTickSpeed(2):SetSpellModTlnt(57810,{2}) -- Insect Swarm
		:AddSpell( 8921,  12,"Default",	F.TICKS):SetTickSpeed(2):SetSpellModTlnt(57810,{3}):SetSpellModSetB("Thunderheart Regalia",2,3) -- Moonfire
		:AddSpell(93402,  12,"Default",	F.TICKS):SetTickSpeed(2) -- Sunfire
		
		-- Resto Spells
		:AddSpell(29166,  10,"Buff",	F.BUFF) -- Innervate
		:AddSpell(33763,   7,"Heal",	F.HOT):SetTickSpeed(1):SetStacks(3) -- Lifebloom
		:AddSpell( 8936,   6,"Heal",	F.HOT):SetTickSpeed(2):SetSpellModSetB("Nordrassil Raiment",2,6) -- Regrowth
		:AddSpell(  774,  12,"Heal",	F.HOT) -- Rejuvenation
		:AddSpell(48496,  15,"Heal",	F.HOT) -- Living Seed
		:AddSpell(48438,   7,"Heal",	F.HOT):SetTickSpeed(1) -- Wild Growth

		-- Feral Spells
		:SetDefaultHasted(0)
		:AddSpell( 5211,   4,"Crowd",	F.UNIQUE):SetSpellModTlnt(16940,{0.5,1.0}) -- Bash
		:AddSpell(   99,  30,"Crowd",	F.UNIQUE) -- Demoralizing Roar
		:AddSpell( 5209,   6,"Crowd",	F.UNIQUE) -- Challenging Roar
		:AddSpell( 6795,   3,"Crowd",	F.UNIQUE) -- Growl
		:AddSpell(33878,  60,"Default") -- Mangle Bear
		:AddSpell(33876,  60,"Default") -- Mangle Cat
		:AddSpell( 9005,   3,"Default"):SetSpellModTlnt(16940,{0.5,1.0})
		:AddExtraSpell(9007) -- Pounce
		:AddSpell( 9007,  18,"Default",	F.TICKS) -- Pounce Bleed
		:AddSpell( 1822,   9,"Default",	F.TICKS) -- Rake
		:AddSpell( 1079,  12,"Default",	F.TICKS):SetTickSpeed(2) -- Rip
		:AddSpell(22570,   1,"Default",	F.UNIQUE):SetSpellModComb({1,2,3,4,5}) -- Maim
		:AddSpell(58179,  12,"Default") -- Infected Wounds
		:AddSpell(33745,  15,"Default",	F.TICKS):SetStacks(3) -- Lacerate
		:AddSpell(  467,  20,"Buff",	F.BUFF) -- Thorns		
		
		:AddBuff(48517) -- eclipse (solar)
		:AddBuff(48518) -- eclipse (lunar)
		:AddBuff(52610) -- savage roar

		-- Balance Buffs
		:AddBuff(22812) -- Barkskin
		:AddBuff(16689) -- Nature's Grasp
		:AddBuff(16880) -- Nature's Grace
		:AddBuff(48505) -- Starfall
		:AddBuff(77495) -- Harmony

		-- Feral Buffs
		:AddBuff(61684) -- Dash
		:AddBuff(59828) -- Enrage
		:AddBuff(22845) -- Frenzied Regeneration
		:AddBuff(5217) -- Tiger's Fury
		:AddBuff(37316) -- Nurture 2 piece Feral T5
		:AddBuff(50334) -- Berserk
		:AddBuff(61336) -- Survival Instincts

		-- Resto Buffs
		:AddBuff(16870) -- Clearcasting
		:AddBuff(45283) -- Natural Perfection

		-- Feral Procs/Trinkets
		:AddBuff(43738) -- Primal Instinct, Idol of Terror
		:AddBuff(67354) -- Evasion, Idol of Mutilation
		:AddBuff(67355) -- Agile, Idol of Mutilation
		:AddBuff(67360) -- Blessing of the Moon Goddess, Idol of Lunar Fury
		:AddBuff(67358) -- Rejuvenating, Idol of Flaring Growth
		:AddBuff(60569) -- Relentless Survival, Relentless Gladiator's Idol of Steadfastness
		:AddBuff(60553) -- Relentless Aggression, Relentless Gladiator's Idol of Resolve
		:AddBuff(71177) -- Vicious, Idol of the Lunar Eclipse
		:AddBuff(71175) -- Agile, Idol of the Crying Moon
		:AddBuff(71184) -- Soothing, Idol of the Black Willow
		
		:AddBuff(69369):SetStacks(0) -- Predator's Swiftness
		:AddBuff(80313) -- Pulverize
		:AddBuff(90164) -- Astral Alignment Balance 4P T11 bonus
		:AddBuff(90166) -- Strength of the Panther Feral 4P T11 bonus
		
		:AddCooldown(5217,030):SetCooldownModGlph(94390,-3)
		
		:AddCasterBuffs()
		:AddMeleeBuffs()
		
		--[[local clearcasting = FW:SpellName(12536);
		ST:RegisterOnBuffGain(function(buff)
			if buff == clearcasting then
				FW:PlaySound("TimerClearcastingSound");
			end
		end);]]

	end
	--
	-- Cooldown Timer
	--
	if CD then
		-- Note: One day, this will correctly track Clearcasting/Nature's Gasp/Nature's Grace.
		
		-- Balance buffs
		--CD:AddCooldownBuff(22812); -- barkskin
		--CD:AddCooldownBuff(53307); -- thorns

		-- Resto buffs
		CD:AddCooldownBuff(1126); -- Mark of the Wild
		CD:AddCooldownBuff(16864); -- Omen of Clarity
		
		CD:AddHiddenCooldown(nil,48517,30); -- Eclipse (Solar)
		CD:AddHiddenCooldown(nil,48518,30); -- Eclipse (Lunar)
		
		CD:AddHiddenCooldown(nil,61346,60); -- Nature's Grace 
		
		-- Powerups
		CD:AddCasterPowerupCooldowns();
		CD:AddMeleePowerupCooldowns();
	end
	if ST then
	--[[FW:SetMainCategory(FWL.SOUND);
		FW:SetSubCategory(FWL.SPELL_TIMER,FW.ICON.DEFAULT,2);
			FW:AddOption("SND",FWL.CLEARCASTING,"","TimerClearcastingSound");]]
	end
	if CA then
	
		local bs = FW:SpellName(22812);
		local si = FW:SpellName(61336);
		local fr = FW:SpellName(22842);
		
		local rebirth = FW:SpellName(20484);
		local innervate = FW:SpellName(29166);
		local tranquility = FW:SpellName(740);
		
		CA:RegisterOnSelfCastSuccess(
			function(s, t)
				if s == bs then
					CA:CastShow("BSStart");
				elseif s == si then
					CA:CastShow("SIStart");
				elseif s == fr then
					CA:CastShow("FRStart");
				elseif s == rebirth then
					CA:CastShow("RebirthStart",t);
				elseif s == innervate then
					CA:CastShow("InnervateStart",t);
				elseif s == tranquility then
					CA:CastShow("TranquilityStart");
				end
			end
		);

		FW:SetMainCategory(FWL.RAID_MESSAGES);

			FW:SetSubCategory("Self Damage Reduction",FW.ICON.SPECIFIC,2);
				FW:AddOption("MS2",bs,	 "",	"BSStart"); 
				FW.Default.BSStart = {[0]=1,"+++ Barkskin (10 sec) +++"};

				FW:AddOption("MS2",si,	"",	"SIStart"); 
				FW.Default.SIStart = {[0]=1,"+++ Survival Instincts (12 sec) +++"};

				FW:AddOption("MS2",fr,	"",	"FRStart"); 
				FW.Default.FRStart = {[0]=1,"+++ Frenzied Regeneration (20 sec) +++"};
				
			FW:SetSubCategory("Other",FW.ICON.SPECIFIC,2);
				FW:AddOption("MS2",rebirth,	"",	"RebirthStart"); 
				FW.Default.RebirthStart = {[0]=1,">>> Rebirth on %s <<<"};

				FW:AddOption("MS2",innervate,	"",	"InnervateStart"); 
				FW.Default.InnervateStart = {[0]=1,">>> Innervate on %s <<<"};

				FW:AddOption("MS2",tranquility,	 "",	"TranquilityStart"); 
				FW.Default.TranquilityStart = {[0]=1,">>> Tranquility up <<<"};

	end
end
