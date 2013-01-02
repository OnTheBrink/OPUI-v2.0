--ForteXorcist v1.980.3 by Xus 29-08-2012 for 5.0

if FW.CLASS == "SHAMAN" then
	local FW = FW;
	local FWL = FW.L;
	local SH = FW:ClassModule("Shaman");
		
	local ST = FW:Module("Timer");
	local CA = FW:Module("Casting");
	local CD = FW:Module("Cooldown");
	
	-- Register ID renames first!

	
	if ST then
		local F = ST.F;
		ST:SetDefaultHasted(1)

		:AddChannel(61882, 0, 1) -- Earthquake		
		
		-- Elemental Spells
		:AddSpell( 8050,  21,"Default",	F.TICKS):SetSpellModGlph(55447,9) -- Flame Shock
		:AddSpell( 8056,   8,"Default"):SetSpellModGlph(55443,2) -- Frost Shock

		-- Enhancement Spells
		:AddSpell(51533,  30,"Pet",		F.SUMMON) -- Feral Spirit
		:AddSpell(17364,  12,"Default") -- Stormstrike
		-- Restoration Spells
		:AddSpell(16177,  15,"Buff",	F.BUFF) -- Ancestral Fortitude
		:AddSpell(  974, 600,"Buff",	F.BUFF+F.UNIQUE) -- Earth Shield
		:AddSpell(51945,  12,"Heal",	F.HOT) -- Earthliving
		:AddSpell(29206,  15,"Buff",	F.BUFF) -- Healing Way
		:AddSpell(61295,  12,"Heal",	F.HOT) -- Riptide
			
		:AddCooldown(51505,  8) -- Lava Burst
		:AddCooldown(51490, 45) -- Thunderstorm
		:AddCooldown(  421,  6):SetCooldownModTlnt(51483,{-0.75,-1.50,-2.50}) -- Chain Lightning
		
		:SetTickSpeed(2,8190) -- Magma Totem
		--:SetTickSpeed(2,25858) -- Stoneclaw Totem
		--:SetTickSpeed(3, 3814) -- Tremor Totem

		-- Buffs

		-- Elemental
		:AddBuff(30160) -- Elemental Devastation (might not work)
		:AddBuff(324) -- Lightning Shield
		:AddBuff(16166) -- Elemental Mastery
		:AddBuff(16246) -- Clearcasting

		-- Enhancement
		:AddBuff(53817) -- Maelstrom Weapon
		:AddBuff(30824) -- Shamanistic Rage
		:AddBuff(30802) -- Unleashed Rage

		-- Restoration
		:AddBuff(53390) -- Tidal Waves
		:AddBuff(52128) -- Water Shield
		
		-- Relics
		:AddBuff(71220) -- Energized Item - Shaman T10 Restoration Relic (Riptide)
		
		:AddCasterBuffs()
		:AddMeleeBuffs()
		
		do
			-- Code to track totems
			local select = select;
			local strfind = strfind;
			local index_to_group = {"TotemFire","TotemEarth","TotemWater","TotemAir"};
			local function SH_TotemUpdate(event,index)
				if not index then return; end 
				-- Fire = 1 Earth = 2 Water = 3 Air = 4
				local _, name, startTime, duration, icon = GetTotemInfo(index);
				local group = index_to_group[index];
				local i = ST.ST:find(group,21);
				if i then
					if name ~= "" then
						ST.ST:remove(i);
					else
						ST:Fade(i,(ST.ST[i][1]-GetTime()<0.75) and 2 or 3);
					end
				end
				if name ~= "" then
					ST:AddManualSpellOfType(name,ST.DEFAULT);
					ST.ST:insert(startTime+duration,0,duration,name,0,ST.DEFAULT,icon,name,0,0,"none",0,ST.PRIOR_NONE,0,1,0,0,00000,0,startTime+duration,group,1.0,0,0,0,1,"",0);
				end
			end
			FW:RegisterToEvent("PLAYER_TOTEM_UPDATE", SH_TotemUpdate);
			
			FW:RegisterDelayedLoadEvent(function(self)
				for i=1,4,1 do
					SH_TotemUpdate(self,i);
				end
			end);
		end
				
		FW:SetMainCategory(FWL.SPELL_TIMER):SetSubCategory(FWL.MY_SPELLS)
			:AddOption("CO2",FWL.TOTEM_FIRE,	"",	"TotemFire",99):SetFunc(ST.FilterChange)
			:AddOption("CO2",FWL.TOTEM_EARTH,	"",	"TotemEarth",99):SetFunc(ST.FilterChange)
			:AddOption("CO2",FWL.TOTEM_WATER,	"",	"TotemWater",99):SetFunc(ST.FilterChange)
			:AddOption("CO2",FWL.TOTEM_AIR,		"",	"TotemAir",99):SetFunc(ST.FilterChange)
		
		FW.InstanceDefault.Timer.TotemFire = 	{[0]=true,1.00,0.37,0.00};
		FW.InstanceDefault.Timer.TotemEarth = 	{[0]=true,1.00,0.56,0.00};
		FW.InstanceDefault.Timer.TotemWater = 	{[0]=true,0.00,1.00,0.67};
		FW.InstanceDefault.Timer.TotemAir = 	{[0]=true,0.00,1.00,1.00};
	end

	if CD then
		CD:AddCasterPowerupCooldowns();
		CD:AddMeleePowerupCooldowns();
	end
end