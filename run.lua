Hero = require('hero')

knight = Hero:new(50)
wizard = Hero:new()

knight:damage(10)

print("Vida do cavalheiro: " .. knight.life)
print("Vida do mago: " .. wizard.life)
