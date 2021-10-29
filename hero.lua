local Hero = {}
private = {
    life = 100,
    mana = 50
}


local function set_life(self, value)
    private[self].life = value
end

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
    --self:set_life(private[self].life - value)
    set_life(self, private[self].life - value)
end

function Hero:heal(value)
    --self:set_life(private[self].life + value)
    set_life(self, private[self].life + value)
end

function Hero:get_life()
    return private[self].life
end


return Hero
