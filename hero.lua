local Hero = {}
local private = {
    life = 100,
    mana = 50
}

function Hero:new(attributes)
    local instance = {}
    setmetatable(instance, {__index = self})

    private[instance] = {}
    setmetatable(
        private[instance], {__index = private}
        )

    if attributes then
        if attributes.life then
            private[instance].life = life
        end

        if attributes.mana then
            private[instance].mana = mana
        end
    end

    return instance
end

function Hero:damage(value)
    self:set_life(private[self].life - value)
end

function Hero:heal(value)
    self:set_life(private[self].life + value)
end

function Hero:get_life()
    return private[self].life
end

function Hero:set_life(value)
    private[self].life = value
end


return Hero
