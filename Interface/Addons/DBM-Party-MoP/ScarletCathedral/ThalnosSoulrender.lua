local mod	= DBM:NewMod(688, "DBM-Party-MoP", 9, 316)
local L		= mod:GetLocalizedStrings()

mod:SetRevision(("$Revision: 7834 $"):sub(12, -3))
mod:SetCreatureID(59789)
mod:SetModelID(27705)
mod:SetZone()

mod:RegisterCombat("combat")

mod:RegisterEventsInCombat(
	"SPELL_AURA_APPLIED",
	"SPELL_AURA_REMOVED",
	"SPELL_CAST_SUCCESS",
	"SPELL_SUMMON"
)


local warnEvictSoul				= mod:NewTargetAnnounce(115297, 3)
local warnRaiseCrusade			= mod:NewSpellAnnounce(115139, 3)
local warnSummonSpirits			= mod:NewSpellAnnounce(115147, 4)
local warnEmpowerZombie			= mod:NewSpellAnnounce(115250, 4)

local specWarnFallenCrusader	= mod:NewSpecialWarningSwitch("ej5863", not mod:IsHealer())--Need more data, nots sure if they are meaningful enough to kill or ignore.
local specWarnEmpoweredSpirit	= mod:NewSpecialWarningSwitch("ej5869", not mod:IsHealer())--These need to die before they become zombies. Cannot see a way in combat log to detect target, i'll have to watch for target scanning next time to warn that player to run away from dead crusaders.

local timerEvictSoul			= mod:NewTargetTimer(6, 115297)
local timerEvictSoulCD			= mod:NewCDTimer(40, 115297)
local timerRaiseCrusadeCD		= mod:NewNextTimer(60, 115139)
local timerSummonSpiritsCD		= mod:NewNextTimer(60, 115147)

function mod:OnCombatStart(delay)
	timerRaiseCrusadeCD:Start(6-delay)
	timerEvictSoulCD:Start(15.5-delay)
end

function mod:SPELL_AURA_APPLIED(args)
	if args:IsSpellID(115297, 116648) then
		warnEvictSoul:Show(args.destName)
		timerEvictSoul:Start(args.destName)
	end
end

function mod:SPELL_AURA_REMOVED(args)
	if args:IsSpellID(115297, 116648) then
		timerEvictSoul:Cancel(args.destName)
	end
end

function mod:SPELL_CAST_SUCCESS(args)
	if args:IsSpellID(115297) then--Trigger CD off success, since we can resist it. do NOT add ID 115548, it's a similcast to 115297
		timerEvictSoulCD:Start()
	elseif args:IsSpellID(115147) then--Summon Empowering Spirits
		warnSummonSpirits:Show()
		specWarnEmpoweredSpirit:Show()
		timerRaiseCrusadeCD:Start(20)--Because they are both 60 second near precise timers, we alternate the timers to reduce needing to have both up at once.
	elseif args:IsSpellID(115139) then--Raise Fallen Crusade
		warnRaiseCrusade:Show()
		specWarnFallenCrusader:Show()
		timerSummonSpiritsCD:Start(40)
	end
end

function mod:SPELL_SUMMON(args)
	if args:IsSpellID(115250) then--Empower Zombie (used by empowering Spirits on fallen Crusaders to make them hulking hard hitting zombies)
		warnEmpowerZombie:Show()
	end
end
