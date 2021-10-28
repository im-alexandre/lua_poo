hero = {
    life = 100,
    mana = 50,
    damage = function(self, value)
        self.life = self.life - value
    end
}

hero.damage(hero, 10)
print(hero.life)
