#> vplib:crafting_tweaks/buttons/balance_grid/calculate/spread_loop

# Append
data modify storage vplib:temp array[-1].slots append from storage vplib:temp freeSlots[-1]
data modify storage vplib:temp gridSlots append from storage vplib:temp freeSlots[-1]

# spread_loop
scoreboard players remove #spread_loop vplib.temp 1
data remove storage vplib:temp freeSlots[-1]
execute if data storage vplib:temp freeSlots[-1] if score #spread_loop vplib.temp matches 2.. run function vplib:crafting_tweaks/buttons/balance_grid/calculate/spread_loop