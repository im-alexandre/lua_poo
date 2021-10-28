hero = {
    life = 100,
    mana = 50,
}

function hero:damage(value)
    self.life = self.life - value
end

return hero
