Hero = require('hero')

knight = Hero:new()
wizard = Hero:new()

print("Vida do cavalheiro: " .. tostring(knight.life))
knight:damage(50)
print("Vida do cavalheiro: " .. tostring(knight.life))
knight:heal(200)
print("Vida do cavalheiro: " .. tostring(knight.life))
knight.life = 300
print("Vida maior que 100. Precisamos encapsular: " .. tostring(knight.life))

