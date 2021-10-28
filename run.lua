Hero = require('hero')

knight = Hero:new(50)
wizard = Hero:new()

knight:damage(10)
knight:heal(5)

print(knight:get_life())

knight.life = -10

print(knight:get_life())

print(wizard:get_life())
