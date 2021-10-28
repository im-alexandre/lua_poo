fallback = {
    life = 100,
    mana = 50
}

object = {
    life = 80
}

setmetatable(object, {__index = fallback})

object.mana = 20

print("Vida do objeto: " .. object.life)
print("Mana do objeto: " .. object.mana)
print("Mana da metatable: " .. fallback.mana)
