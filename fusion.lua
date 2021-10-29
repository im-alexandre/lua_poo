local Wizard = require('wizard')
local Knight = require('knight')

local inheritances = {
    Knight:new(), Wizard:new()
}

local Fusion = {}

local function dispatch(instance, key)
    for _, classe in pairs(inheritances) do
        local value = classe[key]

        -- fazendo cache para não chamar a mesma chave mais de uma vez
        instance[key] = value

        if value then
            return value
        end
    end
end

setmetatable(Fusion, {__index = dispatch})

function Fusion:new(attributes)
    local instance = {}
    
    setmetatable(instance, {__index = self})
    return instance
end

return Fusion
