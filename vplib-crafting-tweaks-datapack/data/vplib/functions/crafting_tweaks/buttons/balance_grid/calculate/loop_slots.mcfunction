#> vplib:crafting_tweaks/buttons/balance_grid/calculate/loop_slots

# Append to list
data modify storage vplib:temp balancedGrid append from storage vplib:temp array[-1].item

# Calculate count
scoreboard players operation #count vplib.temp = #divided vplib.temp
execute if score #modulus vplib.temp matches 1.. run scoreboard players add #count vplib.temp 1
execute if score #modulus vplib.temp matches 1.. run scoreboard players remove #modulus vplib.temp 1

execute store result storage vplib:temp balancedGrid[-1].Count byte 1 run scoreboard players get #count vplib.temp

# Set slot
data modify storage vplib:temp balancedGrid[-1].Slot set from storage vplib:temp array[-1].slots[0]


# Loop
data remove storage vplib:temp array[-1].slots[0]
execute if data storage vplib:temp array[-1].slots[0] run function vplib:crafting_tweaks/buttons/balance_grid/calculate/loop_slots