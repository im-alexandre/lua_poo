Hero = {
    life = 100,
    mana = 50,
}

function Hero:damage(value)
    self.life = self.life - value
end

function Hero:new()
    return Hero
end

return Hero
