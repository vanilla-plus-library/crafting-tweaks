#> vplib:crafting_tweaks/buttons/clear_grid/search_player

# Reset score
scoreboard players set #clicked vplib.temp 0

# Check if clicked
execute store success score #clicked vplib.temp run clear @s minecraft:gray_stained_glass_pane{vplib:{clickEvent:"clear_grid"}} 0

# Check if shift clicked
execute if score #clicked vplib.temp matches 1 if data entity @s Inventory[{tag:{vplib:{clickEvent:"clear_grid"}}}] run scoreboard players set #clicked vplib.temp 2

# Proceed if true
execute if score #click_type vplib.temp matches 0 if score #clicked vplib.temp matches 1.. at @s run function vplib:crafting_tweaks/buttons/clear_grid/player