#> vplib:crafting_tweaks/buttons/clear_grid/main

# Clicked button
scoreboard players set #button_clicked vplib.temp 1

# Generate items
data modify storage vplib:temp array set value []

scoreboard players set #slot vplib.temp -1
execute if data storage vplib:temp containerGrid[0] run function vplib:crafting_tweaks/buttons/clear_grid/loop


# Get click_type
scoreboard players set #click_type vplib.temp 0

## Search players
scoreboard players set #found_player vplib.temp 0
execute as @a[distance=..12] run function vplib:crafting_tweaks/buttons/clear_grid/search_player


# Clear container
execute if score #click_type vplib.temp matches 1.. run function vplib:crafting_tweaks/buttons/clear_grid/clear_container