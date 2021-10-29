local Hero = require('hero')

local Wizard = {}

function Wizard:new(attributes)
    local instance = Hero:new(attributes)

    function instance:damage(value)
        self:set_life(self:get_life() - (value * 1.5))
    end


    return instance
end

return Wizard
