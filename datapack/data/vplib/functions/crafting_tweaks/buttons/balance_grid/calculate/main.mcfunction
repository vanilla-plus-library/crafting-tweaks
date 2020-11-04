#> vplib:crafting_tweaks/buttons/balance_grid/calculate/main

## Get total count
execute store result score #total_count vplib.temp run data get storage vplib:temp array[-1].count

# Spread if shift clicked
execute if score #click_type vplib.temp matches 2 run function vplib:crafting_tweaks/buttons/balance_grid/calculate/spread
#tellraw @p ["Item list: ",{"nbt":"array[-1]","storage":"vplib:temp"}]


# Get amount of slots
execute store result score #slots vplib.temp if data storage vplib:temp array[-1].slots[]
#tellraw @p ["Total count: ",{"score":{"name":"#total_count","objective": "vplib.temp"}}]
#tellraw @p ["Amount of slots: ",{"score":{"name":"#slots","objective": "vplib.temp"}}]

## Divide total count by amount of slots
scoreboard players operation #divided vplib.temp = #total_count vplib.temp
scoreboard players operation #divided vplib.temp /= #slots vplib.temp
#tellraw @p ["Count per slot: ",{"score":{"name":"#divided","objective": "vplib.temp"}}]

## Get modulus
scoreboard players operation #modulus vplib.temp = #total_count vplib.temp
scoreboard players operation #modulus vplib.temp %= #slots vplib.temp
#tellraw @p ["Modulus: ",{"score":{"name":"#modulus","objective": "vplib.temp"}}]


# Write slots
function vplib:crafting_tweaks/buttons/balance_grid/calculate/loop_slots


# Loop
data remove storage vplib:temp array[-1]
execute if data storage vplib:temp array[-1] run function vplib:crafting_tweaks/buttons/balance_grid/calculate/main