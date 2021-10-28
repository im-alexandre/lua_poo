Hero = require('hero_2')

knight = Hero:new()
wizard = Hero:new({life = 90})

print("Vida do cavalheiro: " .. knight:get_life())
knight:damage(10)
print("Vida do cavalheiro: " .. knight:get_life())
knight:set_life(20)
print("Vida do cavalheiro: " .. knight:get_life())
knight:set_life(500)
print("Vida do cavalheiro: " .. knight:get_life())
