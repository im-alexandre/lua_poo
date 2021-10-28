local Hero = {}
local private = {
    life = 100
}

local function set_life(self, value)
    private[self].life = value
end

function Hero:new(life)
    local instance = {}
    setmetatable(instance, {__index = self})

    private[instance] = {}
    setmetatable(
        private[instance], {__index = private}
        )

    if life then
        private[instance].life = life
    end

    return instance
end


function Hero:damage(value)
    set_life(self, private[self].life - value)
end

function Hero:heal(value)
    set_life(self, private[self].life + value)
end

function Hero:get_life()
    return private[self].life
end

return Hero
