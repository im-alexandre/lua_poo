local geometria = {}

local constants = {}

setmetatable(
    constants,
    {
        __index = { PI = 3.14 },
        __newindex = function()
            error('Violação de constante')
        end
    }
    )

constants.PI = 5

-- Métodos estáticos
function geometria.area(altura, largura)
    return altura * largura
end

function geometria.circle_area(radius)
    return constants.PI * math.pow(radius, 2)
end

return geometria
