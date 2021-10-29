local Hero = require('hero')
--
-- Transformando a tabela private em uma weaktable.
-- o mode diz qual das partes (chave ou valor - k ou v) é uma referência
-- fraca. Ou seja, será manipulada pelo garbage collector automaticamente
setmetatable(private, {__mode = 'k'})

local hero1 = Hero:new()
local hero2 = Hero:new()
local hero3 = Hero:new()
local hero4 = Hero:new()
local hero5 = Hero:new()

hero4 = nil
hero5 = nil

-- Deleta as chaves-valor com chaves = nil
collectgarbage()

local count = -2

for _ in pairs(private) do
    count = count + 1
end

print(count)
