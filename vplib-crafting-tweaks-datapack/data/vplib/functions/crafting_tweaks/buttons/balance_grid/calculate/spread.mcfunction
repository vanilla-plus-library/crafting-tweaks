#> vplib:crafting_tweaks/buttons/balance_grid/calculate/spread

# Copy count
scoreboard players operation #spread_loop vplib.temp = #total_count vplib.temp

# Append slots
data modify storage vplib:temp freeSlots set value []
execute unless data storage vplib:temp {gridSlots:[2b]} run data modify storage vplib:temp freeSlots append value 2b
execute unless data storage vplib:temp {gridSlots:[3b]} run data modify storage vplib:temp freeSlots append value 3b
execute unless data storage vplib:temp {gridSlots:[4b]} run data modify storage vplib:temp freeSlots append value 4b
execute unless data storage vplib:temp {gridSlots:[11b]} run data modify storage vplib:temp freeSlots append value 11b
execute unless data storage vplib:temp {gridSlots:[12b]} run data modify storage vplib:temp freeSlots append value 12b
execute unless data storage vplib:temp {gridSlots:[13b]} run data modify storage vplib:temp freeSlots append value 13b
execute unless data storage vplib:temp {gridSlots:[20b]} run data modify storage vplib:temp freeSlots append value 20b
execute unless data storage vplib:temp {gridSlots:[21b]} run data modify storage vplib:temp freeSlots append value 21b
execute unless data storage vplib:temp {gridSlots:[22b]} run data modify storage vplib:temp freeSlots append value 22b

# Get amount of occupied slots
execute store result score #free_slots vplib.temp if data storage vplib:temp freeSlots[]

# Append loop
execute if score #free_slots vplib.temp matches 1.. if score #spread_loop vplib.temp matches 1.. run function vplib:crafting_tweaks/buttons/balance_grid/calculate/spread_loop

# Reorganize array
data modify storage vplib:temp reorganize set from storage vplib:temp array[-1].slots
data remove storage vplib:temp array[-1].slots

execute if data storage vplib:temp {reorganize:[2b]} run data modify storage vplib:temp array[-1].slots append value 2b
execute if data storage vplib:temp {reorganize:[3b]} run data modify storage vplib:temp array[-1].slots append value 3b
execute if data storage vplib:temp {reorganize:[4b]} run data modify storage vplib:temp array[-1].slots append value 4b
execute if data storage vplib:temp {reorganize:[11b]} run data modify storage vplib:temp array[-1].slots append value 11b
execute if data storage vplib:temp {reorganize:[12b]} run data modify storage vplib:temp array[-1].slots append value 12b
execute if data storage vplib:temp {reorganize:[13b]} run data modify storage vplib:temp array[-1].slots append value 13b
execute if data storage vplib:temp {reorganize:[20b]} run data modify storage vplib:temp array[-1].slots append value 20b
execute if data storage vplib:temp {reorganize:[21b]} run data modify storage vplib:temp array[-1].slots append value 21b
execute if data storage vplib:temp {reorganize:[22b]} run data modify storage vplib:temp array[-1].slots append value 22b
