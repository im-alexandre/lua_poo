-- Exemplo de variável global

if true then
    local value = "value" -- Existe apenas dentro do if
    oto_value = "oto_value"
end


valor = "valor"
do
    local value = "A"

    do
        local valor = "Valor dentro do escopo"
        print('level 2 (valor): ' .. tostring(valor))
        -- Este escopo está dentro do escopo local
        print('level 2: ' .. tostring(value))
    end
    print('level 1: ' .. tostring(value))
end
print('level 0: ' .. tostring(value))
print('level 0 (valor): ' .. tostring(valor))
