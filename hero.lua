Hero = {
    life = 100,
    mana = 50,
}

function Hero:damage(value)
    self.life = self.life - value
end

function Hero:new(attributes)
    instance = {}

    if attributes then
        instance.life = attributes.life
    end

    setmetatable(instance, {__index = self})
    return instance
end

return Hero
