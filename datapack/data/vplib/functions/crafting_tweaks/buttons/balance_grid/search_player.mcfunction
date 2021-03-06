#> vplib:crafting_tweaks/buttons/balance_grid/search_player

# Reset score
scoreboard players set #clicked vplib.temp 0

# Check if clicked
execute store success score #clicked vplib.temp run clear @s minecraft:gray_stained_glass_pane{vplib:{clickEvent:"balance_grid"}} 0

# Check if shift clicked
execute if score #clicked vplib.temp matches 1 if data entity @s Inventory[{tag:{vplib:{clickEvent:"balance_grid"}}}] run scoreboard players set #clicked vplib.temp 2

# Proceed if true
execute if score #click_type vplib.temp matches 0 if score #clicked vplib.temp matches 1.. at @s run function vplib:crafting_tweaks/buttons/balance_grid/player