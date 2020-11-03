#> vplib:crafting_tweaks/buttons/rotate_grid/main

# Clicked button
scoreboard players set #button_clicked vplib.temp 1

# Get click_type
scoreboard players set #click_type vplib.temp 0

## Search players
scoreboard players set #found_player vplib.temp 0
execute as @a[distance=..12] run function vplib:crafting_tweaks/buttons/rotate_grid/search_player


# Rotate clockwise
execute if score #click_type vplib.temp matches 1 run function vplib:crafting_tweaks/buttons/rotate_grid/clockwise

# Rotate anticlockwise
execute if score #click_type vplib.temp matches 2 run function vplib:crafting_tweaks/buttons/rotate_grid/anticlockwise