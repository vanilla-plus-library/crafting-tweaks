#> vplib:crafting_tweaks/buttons/balance_grid/get_items/main

# Check if item is in the list
scoreboard players set #index vplib.temp -1
function vplib:crafting_tweaks/buttons/balance_grid/get_items/find_in_list

# Add new item
execute if score #index vplib.temp matches -1 run function vplib:crafting_tweaks/buttons/balance_grid/get_items/new_item

# Increase count from available item
execute if score #index vplib.temp matches 0.. run function vplib:crafting_tweaks/buttons/balance_grid/get_items/increase_count

# Loop
data remove storage vplib:temp array[-1]
execute if data storage vplib:temp array[-1] run function vplib:crafting_tweaks/buttons/balance_grid/get_items/main