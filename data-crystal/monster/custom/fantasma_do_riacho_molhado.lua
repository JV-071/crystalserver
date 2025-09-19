-- Conversão do monstro "Fantasma Do Riacho Molhado" para Canary RevScript
-- Convertido do formato XML OTX/TFS para Lua moderno

local mType = Game.createMonsterType("Fantasma Do Riacho Molhado")
local monster = {}

monster.description = "a fantasma do riacho molhado"
monster.experience = 35000
monster.outfit = {
    lookType = 48,
    lookHead = 20,
    lookBody = 30,
    lookLegs = 40,
    lookFeet = 50,
    lookAddons = 0,
    lookMount = 0
}

monster.raceId = 0
monster.Bestiary = {
    class = "Extra Dimensional",
    race = RACE_FIRE,
    toKill = 2500,
    firstUnlock = 100,
    secondUnlock = 1000,
    charmsPoints = 50,
    stars = 4,
    occurrence = 0,
    locations = "Custom locations."
}

monster.health = 100000
monster.maxHealth = 100000
monster.race = "fire"
monster.corpse = 5993
monster.speed = 380
monster.manaCost = 0

monster.changeTarget = {
    interval = 5000,
    chance = 20
}

monster.strategiesTarget = {
    nearest = 65,
    health = 10,
    damage = 20,
    random = 5,
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
    staticAttackChance = 90,
    targetDistance = 1,
    runHealth = 0,
    healthHidden = false,
    isBlockable = false,
    canWalkOnEnergy = false,
    canWalkOnFire = true,
    canWalkOnPoison = true,
    canWalkOnIce = false,
}

monster.light = {
    level = 0,
    color = 0
}

monster.voices = {
    interval = 5000,
    chance = 10,
    {text = "BOW TO THE POWER OF THE RUTHLESS SEVEN!", yell = true},
    {text = "DESTRUCTION!", yell = true},
    {text = "CHAOS!", yell = true},
    {text = "DEATH TO ALL!", yell = true}
}

monster.loot = {
    -- Moedas (múltiplas chances de gold coins)
    {id = 2148, chance = 99900, maxCount = 100}, -- gold coin
    {id = 2148, chance = 88800, maxCount = 100}, -- gold coin
    {id = 2148, chance = 77700, maxCount = 100}, -- gold coin
    {id = 2148, chance = 66600, maxCount = 100}, -- gold coin
    
    -- Moedas especiais
    {id = 2150, chance = 13500, maxCount = 20}, -- small emerald
    {id = 2149, chance = 15500, maxCount = 10}, -- small sapphire
    {id = 2146, chance = 13500, maxCount = 10}, -- small diamond
    {id = 2145, chance = 9500, maxCount = 5},   -- small ruby
    {id = 2144, chance = 15000, maxCount = 15}, -- black pearl
    {id = 2143, chance = 12500, maxCount = 15}, -- white pearl
    {id = 2151, chance = 14000, maxCount = 7},  -- talon
    
    -- Armas e equipamentos raros
    {id = 2142, chance = 3500},  -- obsidian knife
    {id = 2158, chance = 1500},  -- blue gem
    {id = 2177, chance = 1000},  -- life crystal
    {id = 2155, chance = 1500},  -- green gem
    {id = 2125, chance = 1500},  -- blessed shield
    {id = 2174, chance = 2500},  -- strange helmet
    {id = 2176, chance = 12000}, -- orb
    {id = 2178, chance = 4000},  -- wand of vortex
    {id = 2182, chance = 3500},  -- snakebite rod
    {id = 2185, chance = 3500},  -- ankh
    {id = 2186, chance = 3500},  -- moonlight rod
    {id = 2188, chance = 2500},  -- wand of cosmic energy
    
    -- Armaduras e proteções
    {id = 2231, chance = 9000},  -- beholder helmet
    {id = 2195, chance = 4000},  -- boots of haste
    {id = 2192, chance = 2500},  -- crystal ring
    {id = 2124, chance = 5500},  -- crystal ring
    {id = 2162, chance = 11500}, -- magic light wand
    {id = 2164, chance = 5000},  -- might ring
    {id = 2165, chance = 9500},  -- stealth ring
    {id = 2167, chance = 13500}, -- energy ring
    {id = 2170, chance = 13000}, -- time ring
    {id = 2171, chance = 4500},  -- ring of healing
    {id = 2179, chance = 8000},  -- gold ring
    {id = 2197, chance = 4000},  -- stone skin amulet
    {id = 2200, chance = 4500},  -- protection amulet
    
    -- Armas corpo a corpo
    {id = 2387, chance = 20000}, -- double axe
    {id = 2377, chance = 20000}, -- two handed sword
    {id = 2393, chance = 12500}, -- giant sword
    {id = 2396, chance = 7500},  -- ice rapier
    {id = 2402, chance = 15500}, -- silver dagger
    {id = 2418, chance = 4500},  -- golden sickle
    {id = 2421, chance = 13500}, -- thunder hammer
    {id = 2432, chance = 17000}, -- fire axe
    {id = 2434, chance = 4500},  -- dragon hammer
    {id = 2436, chance = 5000},  -- skull staff
    {id = 2462, chance = 11000}, -- devil helmet
    {id = 2470, chance = 5000},  -- golden legs
    {id = 2472, chance = 3000},  -- magic plate armor
    {id = 2514, chance = 7500},  -- mastermind shield
    {id = 2520, chance = 15500}, -- demon shield
    
    -- Itens especiais
    {id = 2033, chance = 7500},  -- spell book
    {id = 2112, chance = 14500}, -- teddy bear
    {id = 2123, chance = 3500},  -- talon
    {id = 2214, chance = 13000}, -- ring of healing
    {id = 1982, chance = 2600},  -- purple tome
    {id = 3955, chance = 100},   -- demon horn (muito raro)
}

monster.attacks = {
    -- Ataque corpo a corpo
    {name ="melee", interval = 2000, chance = 100, skill = 230, attack = 210},
    
    -- Death damage area
    {name ="combat", interval = 1000, chance = 8, type = COMBAT_DEATHDAMAGE, 
     minDamage = -800, maxDamage = -1900, radius = 9, effect = CONST_ME_MORTAREA, target = false},
    
    -- Speed reduction area
    {name ="condition", type = CONDITION_PARALYZE, interval = 1000, chance = 12,
     radius = 6, effect = CONST_ME_POISONAREA, target = false,
     condition = {type = CONDITION_PARALYZE, totalDamage = 0, interval = 1000, 
                  formula = {mina = -850, maxa = -850, minb = 0, maxb = 0}}},
    
    -- Strength/Physical area attack
    {name ="combat", interval = 1000, chance = 10, type = COMBAT_PHYSICALDAMAGE,
     minDamage = -600, maxDamage = -1450, radius = 5, effect = CONST_ME_BLACKSMOKE, target = false},
    
    -- Fire attack ranged
    {name ="combat", interval = 3000, chance = 13, type = COMBAT_FIREDAMAGE,
     minDamage = -300, maxDamage = -800, range = 7, radius = 7, shootEffect = CONST_ANI_FIRE,
     effect = CONST_ME_FIREAREA, target = true},
    
    -- Mana drain area
    {name ="combat", interval = 3000, chance = 8, type = COMBAT_MANADRAIN,
     minDamage = -600, maxDamage = -700, radius = 10, effect = CONST_ME_ENERGYAREA, target = false},
    
    -- Energy wave
    {name ="combat", interval = 2000, chance = 9, type = COMBAT_ENERGYDAMAGE,
     minDamage = -400, maxDamage = -800, length = 8, spread = 0, effect = CONST_ME_REDSMOKE, target = false},
    
    -- Poison condition
    {name ="condition", type = CONDITION_POISON, interval = 5000, chance = 18,
     minDamage = -800, maxDamage = -1000, effect = CONST_ME_GREEN_RINGS, target = false,
     condition = {type = CONDITION_POISON, totalDamage = 1000, interval = 4000}},
    
    -- Life drain area
    {name ="combat", interval = 2000, chance = 6, type = COMBAT_LIFEDRAIN,
     minDamage = -600, maxDamage = -1200, radius = 14, effect = CONST_ME_MAGIC_GREEN, target = false},
}

monster.defenses = {
    defense = 145,
    armor = 188,
    
    -- Healing defense
    {name ="combat", interval = 1000, chance = 15, type = COMBAT_HEALING,
     minDamage = 1000, maxDamage = 3000, effect = CONST_ME_MAGIC_BLUE, target = false},
    
    -- Speed boost
    {name ="speed", interval = 2000, chance = 8, speedChange = 480, duration = 6000,
     effect = CONST_ME_MAGIC_RED},
}

monster.elements = {
    {type = COMBAT_PHYSICALDAMAGE, percent = 0},
    {type = COMBAT_ENERGYDAMAGE, percent = 100},
    {type = COMBAT_EARTHDAMAGE, percent = 0},
    {type = COMBAT_FIREDAMAGE, percent = 100},
    {type = COMBAT_LIFEDRAIN, percent = 100},
    {type = COMBAT_MANADRAIN, percent = 0},
    {type = COMBAT_DROWNDAMAGE, percent = 0},
    {type = COMBAT_ICEDAMAGE, percent = 0},
    {type = COMBAT_HOLYDAMAGE, percent = 0},
    {type = COMBAT_DEATHDAMAGE, percent = 0}
}

monster.immunities = {
    {type = "paralyze", condition = true},
    {type = "outfit", condition = true},
    {type = "invisible", condition = false},
    {type = "bleed", condition = false},
    {type = "drunk", condition = true}
}

mType:register(monster)