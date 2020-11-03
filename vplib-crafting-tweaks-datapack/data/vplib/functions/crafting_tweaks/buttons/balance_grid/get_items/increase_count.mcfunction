#> vplib:crafting_tweaks/buttons/balance_grid/get_items/increase_count

# Get count
execute if score #index vplib.temp matches 0 store result score #count vplib.temp run data get storage vplib:temp items[0].count
execute if score #index vplib.temp matches 1 store result score #count vplib.temp run data get storage vplib:temp items[1].count
execute if score #index vplib.temp matches 2 store result score #count vplib.temp run data get storage vplib:temp items[2].count
execute if score #index vplib.temp matches 3 store result score #count vplib.temp run data get storage vplib:temp items[3].count
execute if score #index vplib.temp matches 4 store result score #count vplib.temp run data get storage vplib:temp items[4].count
execute if score #index vplib.temp matches 5 store result score #count vplib.temp run data get storage vplib:temp items[5].count
execute if score #index vplib.temp matches 6 store result score #count vplib.temp run data get storage vplib:temp items[6].count
execute if score #index vplib.temp matches 7 store result score #count vplib.temp run data get storage vplib:temp items[7].count
execute if score #index vplib.temp matches 8 store result score #count vplib.temp run data get storage vplib:temp items[8].count

# Add to count
execute store result score #add vplib.temp run data get storage vplib:temp array[-1].Count
scoreboard players operation #count vplib.temp += #add vplib.temp

# Store count
execute if score #index vplib.temp matches 0 store result storage vplib:temp items[0].count int 1 run scoreboard players get #count vplib.temp
execute if score #index vplib.temp matches 1 store result storage vplib:temp items[1].count int 1 run scoreboard players get #count vplib.temp
execute if score #index vplib.temp matches 2 store result storage vplib:temp items[2].count int 1 run scoreboard players get #count vplib.temp
execute if score #index vplib.temp matches 3 store result storage vplib:temp items[3].count int 1 run scoreboard players get #count vplib.temp
execute if score #index vplib.temp matches 4 store result storage vplib:temp items[4].count int 1 run scoreboard players get #count vplib.temp
execute if score #index vplib.temp matches 5 store result storage vplib:temp items[5].count int 1 run scoreboard players get #count vplib.temp
execute if score #index vplib.temp matches 6 store result storage vplib:temp items[6].count int 1 run scoreboard players get #count vplib.temp
execute if score #index vplib.temp matches 7 store result storage vplib:temp items[7].count int 1 run scoreboard players get #count vplib.temp
execute if score #index vplib.temp matches 8 store result storage vplib:temp items[8].count int 1 run scoreboard players get #count vplib.temp

# Prepend slot
execute if score #index vplib.temp matches 0 run data modify storage vplib:temp items[0].slots prepend from storage vplib:temp array[-1].Slot
execute if score #index vplib.temp matches 1 run data modify storage vplib:temp items[1].slots prepend from storage vplib:temp array[-1].Slot
execute if score #index vplib.temp matches 2 run data modify storage vplib:temp items[2].slots prepend from storage vplib:temp array[-1].Slot
execute if score #index vplib.temp matches 3 run data modify storage vplib:temp items[3].slots prepend from storage vplib:temp array[-1].Slot
execute if score #index vplib.temp matches 4 run data modify storage vplib:temp items[4].slots prepend from storage vplib:temp array[-1].Slot
execute if score #index vplib.temp matches 5 run data modify storage vplib:temp items[5].slots prepend from storage vplib:temp array[-1].Slot
execute if score #index vplib.temp matches 6 run data modify storage vplib:temp items[6].slots prepend from storage vplib:temp array[-1].Slot
execute if score #index vplib.temp matches 7 run data modify storage vplib:temp items[7].slots prepend from storage vplib:temp array[-1].Slot
execute if score #index vplib.temp matches 8 run data modify storage vplib:temp items[8].slots prepend from storage vplib:temp array[-1].Slot

data modify storage vplib:temp gridSlots prepend from storage vplib:temp array[-1].Slot