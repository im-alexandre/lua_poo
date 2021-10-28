fallback = {
    mana = 50
}

object = {
    life = 100
}

setmetatable(object, {__index = fallback})

print(object.life)
print(object.mana)

