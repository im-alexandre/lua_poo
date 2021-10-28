fallback = {
    life = 100,
    mana = 50
}

object = {
    life = 80
}

setmetatable(object, {__index = fallback})

print(object.life)
print(object.mana)
