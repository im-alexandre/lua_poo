local Hero = require('hero')

local Wizard = {}

function Wizard:new(attributes)
    local instance = Hero:new(attributes)

    instance._damage = instance.damage

    function instance:damage(value)
        self:_damage(value * 1.5)
    end


    return instance
end

return Wizard
