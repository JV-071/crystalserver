local spell = Spell("instant")    
    
function spell.onCastSpell(creature, var)    
    local target = creature:getTarget()    
    if not target then    
        return false    
    end    
        
    local targetPos = target:getPosition()    
        
    -- Define diagonal positions around the target    
    local diagonalPositions = {    
        Position(targetPos.x - 1, targetPos.y - 1, targetPos.z), -- Northwest    
        Position(targetPos.x + 1, targetPos.y - 1, targetPos.z), -- Northeast    
        Position(targetPos.x - 1, targetPos.y + 1, targetPos.z), -- Southwest      
        Position(targetPos.x + 1, targetPos.y + 1, targetPos.z), -- Southeast    
    }    
        
    -- Create four temporary monsters in diagonal positions    
    for i = 1, 4 do    
        local monster = Game.createMonster("Headcaptor", diagonalPositions[i])    
        if monster then    
            monster:setMaster(creature)  
              
            -- Add teleport effect when monster appears  
            diagonalPositions[i]:sendMagicEffect(CONST_ME_TELEPORT)  
                
            -- Schedule removal after 1.5 seconds (1500ms)    
            addEvent(function(monsterId, position)    
                local mon = Monster(monsterId)    
                if mon then    
                    -- Add poff effect before removing  
                    position:sendMagicEffect(CONST_ME_POFF)  
                    mon:remove()    
                end    
            end, 1500, monster:getId(), diagonalPositions[i])    
        end    
    end    
        
    return true    
end    
    
spell:group("attack")    
spell:id(999) -- Choose an unused spell ID    
spell:name("Utevo Mort")    
spell:words("utevo mort")    
spell:level(30)    
spell:mana(150)    
spell:isAggressive(true)    
spell:range(7)    
spell:needTarget(true)    
spell:blockWalls(true)    
spell:cooldown(10 * 1000)    
spell:groupCooldown(2 * 1000)    
spell:needLearn(false)    
spell:vocation("sorcerer;true", "master sorcerer;true")    
spell:register()