local mType = Game.createMonsterType("Mirror East")
local monster = {}

monster.description = "a mirror east"
monster.experience = 1000 -- ajuste conforme o XML original
monster.outfit = {
    lookType = 75, -- exemplo, ajustar conforme XML
    lookHead = 0,
    lookBody = 0,
    lookLegs = 0,
    lookFeet = 0,
    lookAddons = 0,
    lookMount = 0
}

monster.health = 1500 -- ajustar conforme o XML
monster.maxHealth = 1500
monster.race = "undead" -- exemplo, ajustar conforme XML
monster.corpse = 3056 -- ajustar conforme XML
monster.speed = 250 -- ajustar conforme XML
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
    runHealth = 250,
    healthHidden = false,
    isBlockable = false,
    canWalkOnEnergy = true,
    canWalkOnFire = false,
    canWalkOnPoison = true
}

monster.voices = {
    interval = 5000,
    chance = 10,
    {text = "Mirror mirror on the wall!", yell = true},
    {text = "I see everything!", yell = false}
}

monster.loot = {
    {id = 2148, chance = 80000, maxCount = 100}, -- gold coin
    {id = 2666, chance = 5000}, -- mirror shard (exemplo)
    -- outros itens derivados do XML
}

monster.attacks = {
    {name = "melee", interval = 2000, chance = 100, minDamage = -40, maxDamage = -80},
    {name = "combat", interval = 3000, chance = 20, type = COMBAT_ENERGYDAMAGE, minDamage = -50, maxDamage = -100, range = 7, shootEffect = CONST_ANI_ENERGY, target = true},
    -- outros ataques conforme o XML
}

monster.defenses = {
    defense = 30,
    armor = 25,
    {name = "combat", interval = 3000, chance = 20, type = COMBAT_HEALING, minDamage = 30, maxDamage = 70, effect = CONST_ME_MAGIC_BLUE, target = false}
}

monster.elements = {
    {type = COMBAT_PHYSICALDAMAGE, percent = 0},
    {type = COMBAT_ENERGYDAMAGE, percent = 20},
    {type = COMBAT_FIREDAMAGE, percent = -10},
    {type = COMBAT_EARTHDAMAGE, percent = 10},
    {type = COMBAT_ICESAMAGE, percent = 0},
    {type = COMBAT_DEATHDAMAGE, percent = 15}
}

monster.immunities = {
    {type = "paralyze", condition = true},
    {type = "invisible", condition = true},
    {type = "drunk", condition = false},
    {type = "bleed", condition = false}
}

mType:register(monster)