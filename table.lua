hero = {
    life = 100,
    mana = 50,
}

function hero:damage(value)
    self.life = self.life - value
end

print(hero.life)
hero:damage(10)
print(hero.life)
