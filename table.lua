hero = {
    life = 100,
    mana = 50,
    damage = function(hero, value)
        hero.life = hero.life - value
    end
}

hero.damage(hero, 10)
print(hero.life)
