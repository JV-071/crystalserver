local mType = Game.createMonsterType("Headcaptor")  
local monster = {}  
  
monster.description = "a headcaptor"  
monster.experience = 0  
monster.health = 1  
monster.maxHealth = 1  
monster.race = "blood"
monster.speed = 0  
  
monster.outfit = {  
	lookType = 279,  
	lookHead = 116,  
	lookBody = 101,  
	lookLegs = 0,  
	lookFeet = 0,  
	lookAddons = 2,  
	lookMount = 0,  
}  
  
monster.flags = {  
	summonable = true,  
	attackable = false,  
	hostile = true,  
	convinceable = true,   
}  
  
monster.attacks = {  
	{ name = "combat", interval = 1, chance = 100, type = COMBAT_DEATHDAMAGE, minDamage = -250, maxDamage = -250, range = 7, shootEffect = CONST_ANI_SUDDENDEATH, effect = CONST_ME_MORTAREA, target = true },  
}  
  
monster.loot = {}  
  
mType:register(monster)