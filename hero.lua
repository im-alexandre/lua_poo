local Hero = {}
local private = {}

function Hero:new()
    local instance = {}

    setmetatable(instance, {__index = self})

    private[instance] = {
        life = 100
    }

    return instance
end


function Hero:damage(value)
    private[self].life = private[self].life - value
end

function Hero:get_life()
    return private[self].life
end

function Hero:heal(value)
    private[self].life = private[self].life + value
    if private[self].life > 100 then
        private[self].life = 100
    end
end

return Hero
