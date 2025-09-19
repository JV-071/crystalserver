local mType = Game.createMonsterType("Headcaptor")
local monster = {}

monster.description = "a headcaptor"
monster.experience = 8200
monster.outfit = {
lookType = 279,
lookHead = 94,
lookBody = 98,
lookLegs = 94,
lookFeet = 112,
lookAddons = 3,
lookMount = 0
}

monster.health = 15000
monster.maxHealth = 15000
monster.race = "undead"
monster.corpse = 3042
monster.speed = 320
monster.manaCost = 0

monster.changeTarget = {
interval = 4000,
chance = 10
}

monster.strategiesTarget = {
nearest = 70,
health = 10,
damage = 10,
random = 10
}

monster.flags = {
summonable = false,
attackable = true,
hostile = true,
convinceable = false,
pushable = false,
rewardBoss = false,
illusionable = false,
canPushItems = true,
canPushCreatures = true,
staticAttackChance = 95,
targetDistance = 1,
runHealth = 0,
healthHidden = false,
isBlockable = false,
canWalkOnEnergy = false,
canWalkOnFire = true,
canWalkOnPoison = true,
canWalkOnIce = false
}

monster.voices = {
interval = 5000,
chance = 10,
{text = "Face your destiny!", yell = true},
{text = "I will collect your head!", yell = false}
}

monster.loot = {
{id = 2148, chance = 95000, maxCount = 100}, -- gold coin
{id = 2391, chance = 3500}, -- magic sulphur
{id = 2412, chance = 7500}, -- some rare loot example
{id = 2152, chance = 4000}, -- platinum coin
{id = 2160, chance = 1800}, -- magic sword
}

monster.attacks = {
{name = "melee", interval = 2000, chance = 100, minDamage = -120, maxDamage = -240},
{name = "combat", interval = 3000, chance = 15, type = COMBAT_DEATHDAMAGE, minDamage = -250, maxDamage = -400, range = 7, shootEffect = CONST_ANI_DEATH, target = true},
{name = "combat", interval = 4000, chance = 20, type = COMBAT_EARTHDAMAGE, minDamage = -150, maxDamage = -300, range = 5, shootEffect = CONST_ANI_EARTH, target = false}
}

monster.defenses = {
defense = 50,
armor = 40,
{name = "combat", interval = 3000, chance = 20, type = COMBAT_HEALING, minDamage = 100, maxDamage = 300, effect = CONST_ME_MAGIC_BLUE, target = false}
}

monster.elements = {
{type = COMBAT_PHYSICALDAMAGE, percent = 0},
{type = COMBAT_ENERGYDAMAGE, percent = 20},
{type = COMBAT_FIREDAMAGE, percent = 10},
{type = COMBAT_EARTHDAMAGE, percent = -10},
{type = COMBAT_ICESAMAGE, percent = 0},
{type = COMBAT_DEATHDAMAGE, percent = 15}
}

monster.immunities = {
{type = "paralyze", condition = true},
{type = "outfit", condition = false},
{type = "invisible", condition = true},
{type = "drunk", condition = true}
}

mType:register(monster)