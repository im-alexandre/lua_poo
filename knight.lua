local Hero = require('hero')

local Knight = {}
setmetatable(Knight, {__index = Hero})

function Knight:new(attributes)
    local instance = Hero:new()
    instance._damage = instance.damage
    setmetatable(instance, {__index = self})
    return instance
end

function Knight:damage(value)
    self:_damage(value * 0.5)
end

return Knight
