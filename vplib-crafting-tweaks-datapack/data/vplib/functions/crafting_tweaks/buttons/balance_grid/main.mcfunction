#> vplib:crafting_tweaks/buttons/balance_grid/main

# Reset scores
scoreboard players set #click_type vplib.temp 0

# Detect clicked / shift-clicked
execute as @a[distance=..12] run function vplib:crafting_tweaks/buttons/balance_grid/search_player


# Get items
data modify storage vplib:temp array set from storage vplib:temp containerGrid

data modify storage vplib:temp items set value []
data modify storage vplib:temp gridSlots set value []
execute if data storage vplib:temp array[0] run function vplib:crafting_tweaks/buttons/balance_grid/get_items/main

# Set items
data modify storage vplib:temp array set from storage vplib:temp items
data modify storage vplib:temp balancedGrid set value []

# Calculate grid
execute if data storage vplib:temp array[0] run function vplib:crafting_tweaks/buttons/balance_grid/calculate/main
#tellraw @p ["Grid: ",{"nbt":"balancedGrid","storage":"vplib:temp"}]


# Set grid
execute if data storage vplib:temp balancedGrid[0] run function vplib:crafting_tweaks/buttons/balance_grid/calculate/set_grid