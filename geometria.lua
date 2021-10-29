local geometria = {}

local constants = {}

local cache = {}

setmetatable(
    constants,
    {
        __index = { PI = 3.14 },
        __newindex = function()
            error('Violação de constante')
        end
    }
    )

--Alterar a constante levanta um erro
--constants.PI = 5

-- Métodos estáticos
function geometria.area(altura, largura)
    return altura * largura
end

function geometria.circle_area(radius)
    return constants.PI * math.pow(radius, 2)
end

function geometria.heavy()
    local key = 'heavy'
    if cache[key] then
        return cache[key]
    end

    sleep(2)

    result = 10
    cache[key] = result
    
    return result

end

function sleep(valor)
    local tempo = tonumber(os.clock() + valor)
    while(os.clock() < tempo) do end
end

return geometria
