Hero = require('hero_2')

knight = Hero.new()
wizard = Hero.new()

knight.damage(10)

print("Vida do cavalheiro: " .. knight.life)
print("Vida do mago: " .. wizard.life)
