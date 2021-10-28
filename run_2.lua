Hero = require('hero_2')

knight = Hero:new()
wizard = Hero:new({life = 90})

print("Vida do cavalheiro: " .. knight:get_life())
knight:damage(10)
print("Vida do cavalheiro: " .. knight:get_life())
knight:increase_all(10)
print("Vida do cavalheiro: " .. knight:get_life())
print("Mana do cavalheiro: " .. knight.mana)

-- A chamada a seguir vai gerar um erro
--knight:set_life(20)
--print("Vida do cavalheiro: " .. knight:get_life())
