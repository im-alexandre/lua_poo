Hero = require('hero_2')

knight = Hero:new()
wizard = Hero:new({life = 90})

knight:damage(10)

print("Vida do cavalheiro: " .. knight.life)
print("Vida do mago: " .. wizard.life)
print("Mana do mago: " .. wizard.mana)
