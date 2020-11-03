#> vplib:crafting_tweaks/buttons/balance_grid/check_container

# Button clicked
scoreboard players set #button_clicked vpcr.temp 1

# Get grid
function vplib:custom_crafting/v1/block/table/general/get_grid

# Get result
function vplib:custom_crafting/v1/block/table/general/get_result


# Check if grid changed
data modify storage vplib:temp compare set from storage vplib:temp containerGrid
execute store result score #grid_changed vpcr.temp run data modify storage vplib:temp compare set from storage vplib:temp storedData.recipeInput

# Check if result slot changed
data modify storage vplib:temp compare set from storage vplib:temp containerResult
scoreboard players set #result_changed vplib.temp 0
execute if score @s vplib.saved matches 1.. store success score #result_changed vplib.temp run data modify storage vplib:temp compare set from storage vplib:temp savedData.recipeOutput


# Proceed
execute if score #grid_changed vpcr.temp matches 0 if score #result_changed vpcr.temp matches 0 run function vplib:crafting_tweaks/buttons/balance_grid/main