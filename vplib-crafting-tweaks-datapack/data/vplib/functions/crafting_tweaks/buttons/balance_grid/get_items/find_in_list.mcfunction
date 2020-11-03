#> vplib:crafting_tweaks/buttons/balance_grid/get_items/find_in_list

# Get length
scoreboard players set #length vplib.temp 0
execute store result score #length vplib.temp if data storage vplib:temp items[]
#tellraw @p {"score":{"name":"#length","objective":"vplib.temp"}}

# Get item
data modify storage vplib:temp item set from storage vplib:temp array[-1]
data remove storage vplib:temp item.Slot
data remove storage vplib:temp item.Count

# Index: 0
execute if score #length vplib.temp matches 1.. run data modify storage vplib:temp compare set from storage vplib:temp item
execute if score #length vplib.temp matches 1.. store success score #different vplib.temp run data modify storage vplib:temp compare set from storage vplib:temp items[0].item
execute if score #length vplib.temp matches 1.. if score #different vplib.temp matches 0 run scoreboard players set #index vplib.temp 0
execute if score #index vplib.temp matches 0.. run scoreboard players set #length vplib.temp 0

# Index: 1
execute if score #length vplib.temp matches 2.. run data modify storage vplib:temp compare set from storage vplib:temp item
execute if score #length vplib.temp matches 2.. store success score #different vplib.temp run data modify storage vplib:temp compare set from storage vplib:temp items[1].item
execute if score #length vplib.temp matches 2.. if score #different vplib.temp matches 0 run scoreboard players set #index vplib.temp 1
execute if score #index vplib.temp matches 0.. run scoreboard players set #length vplib.temp 0

# Index: 2
execute if score #length vplib.temp matches 3.. run data modify storage vplib:temp compare set from storage vplib:temp item
execute if score #length vplib.temp matches 3.. store success score #different vplib.temp run data modify storage vplib:temp compare set from storage vplib:temp items[2].item
execute if score #length vplib.temp matches 3.. if score #different vplib.temp matches 0 run scoreboard players set #index vplib.temp 2
execute if score #index vplib.temp matches 0.. run scoreboard players set #length vplib.temp 0

# Index: 3
execute if score #length vplib.temp matches 4.. run data modify storage vplib:temp compare set from storage vplib:temp item
execute if score #length vplib.temp matches 4.. store success score #different vplib.temp run data modify storage vplib:temp compare set from storage vplib:temp items[3].item
execute if score #length vplib.temp matches 4.. if score #different vplib.temp matches 0 run scoreboard players set #index vplib.temp 3
execute if score #index vplib.temp matches 0.. run scoreboard players set #length vplib.temp 0

# Index: 4
execute if score #length vplib.temp matches 5.. run data modify storage vplib:temp compare set from storage vplib:temp item
execute if score #length vplib.temp matches 5.. store success score #different vplib.temp run data modify storage vplib:temp compare set from storage vplib:temp items[4].item
execute if score #length vplib.temp matches 5.. if score #different vplib.temp matches 0 run scoreboard players set #index vplib.temp 4
execute if score #index vplib.temp matches 0.. run scoreboard players set #length vplib.temp 0

# Index: 5
execute if score #length vplib.temp matches 6.. run data modify storage vplib:temp compare set from storage vplib:temp item
execute if score #length vplib.temp matches 6.. store success score #different vplib.temp run data modify storage vplib:temp compare set from storage vplib:temp items[5].item
execute if score #length vplib.temp matches 6.. if score #different vplib.temp matches 0 run scoreboard players set #index vplib.temp 5
execute if score #index vplib.temp matches 0.. run scoreboard players set #length vplib.temp 0

# Index: 6
execute if score #length vplib.temp matches 7.. run data modify storage vplib:temp compare set from storage vplib:temp item
execute if score #length vplib.temp matches 7.. store success score #different vplib.temp run data modify storage vplib:temp compare set from storage vplib:temp items[6].item
execute if score #length vplib.temp matches 7.. if score #different vplib.temp matches 0 run scoreboard players set #index vplib.temp 6
execute if score #index vplib.temp matches 0.. run scoreboard players set #length vplib.temp 0

# Index: 7
execute if score #length vplib.temp matches 8.. run data modify storage vplib:temp compare set from storage vplib:temp item
execute if score #length vplib.temp matches 8.. store success score #different vplib.temp run data modify storage vplib:temp compare set from storage vplib:temp items[7].item
execute if score #length vplib.temp matches 8.. if score #different vplib.temp matches 0 run scoreboard players set #index vplib.temp 7
execute if score #index vplib.temp matches 0.. run scoreboard players set #length vplib.temp 0

# Index: 8
execute if score #length vplib.temp matches 9.. run data modify storage vplib:temp compare set from storage vplib:temp item
execute if score #length vplib.temp matches 9.. store success score #different vplib.temp run data modify storage vplib:temp compare set from storage vplib:temp items[8].item
execute if score #length vplib.temp matches 9.. if score #different vplib.temp matches 0 run scoreboard players set #index vplib.temp 8
execute if score #index vplib.temp matches 0.. run scoreboard players set #length vplib.temp 0