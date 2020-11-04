#> vplib:crafting_tweaks/buttons/balance_grid/calculate/set_grid

# Set shulker box
setblock ~ 255 ~ minecraft:yellow_shulker_box

# 2b Slot
data remove storage vplib:temp item
data modify storage vplib:temp item set from storage vplib:temp balancedGrid[{Slot:2b}]
data modify storage vplib:temp item.Slot set value 0b
data modify block ~ 255 ~ Items append from storage vplib:temp item
loot replace block ~ ~ ~ container.2 1 mine ~ 255 ~ air{drop_contents:1b}

# 3b Slot
data remove storage vplib:temp item
data modify storage vplib:temp item set from storage vplib:temp balancedGrid[{Slot:3b}]
data modify storage vplib:temp item.Slot set value 0b
data modify block ~ 255 ~ Items append from storage vplib:temp item
loot replace block ~ ~ ~ container.3 1 mine ~ 255 ~ air{drop_contents:1b}

# 4b Slot
data remove storage vplib:temp item
data modify storage vplib:temp item set from storage vplib:temp balancedGrid[{Slot:4b}]
data modify storage vplib:temp item.Slot set value 0b
data modify block ~ 255 ~ Items append from storage vplib:temp item
loot replace block ~ ~ ~ container.4 1 mine ~ 255 ~ air{drop_contents:1b}

# 11b Slot
data remove storage vplib:temp item
data modify storage vplib:temp item set from storage vplib:temp balancedGrid[{Slot:11b}]
data modify storage vplib:temp item.Slot set value 0b
data modify block ~ 255 ~ Items append from storage vplib:temp item
loot replace block ~ ~ ~ container.11 1 mine ~ 255 ~ air{drop_contents:1b}

# 12b Slot
data remove storage vplib:temp item
data modify storage vplib:temp item set from storage vplib:temp balancedGrid[{Slot:12b}]
data modify storage vplib:temp item.Slot set value 0b
data modify block ~ 255 ~ Items append from storage vplib:temp item
loot replace block ~ ~ ~ container.12 1 mine ~ 255 ~ air{drop_contents:1b}

# 13b Slot
data remove storage vplib:temp item
data modify storage vplib:temp item set from storage vplib:temp balancedGrid[{Slot:13b}]
data modify storage vplib:temp item.Slot set value 0b
data modify block ~ 255 ~ Items append from storage vplib:temp item
loot replace block ~ ~ ~ container.13 1 mine ~ 255 ~ air{drop_contents:1b}

# 20b Slot
data remove storage vplib:temp item
data modify storage vplib:temp item set from storage vplib:temp balancedGrid[{Slot:20b}]
data modify storage vplib:temp item.Slot set value 0b
data modify block ~ 255 ~ Items append from storage vplib:temp item
loot replace block ~ ~ ~ container.20 1 mine ~ 255 ~ air{drop_contents:1b}

# 21b Slot
data remove storage vplib:temp item
data modify storage vplib:temp item set from storage vplib:temp balancedGrid[{Slot:21b}]
data modify storage vplib:temp item.Slot set value 0b
data modify block ~ 255 ~ Items append from storage vplib:temp item
loot replace block ~ ~ ~ container.21 1 mine ~ 255 ~ air{drop_contents:1b}

# 22b Slot
data remove storage vplib:temp item
data modify storage vplib:temp item set from storage vplib:temp balancedGrid[{Slot:22b}]
data modify storage vplib:temp item.Slot set value 0b
data modify block ~ 255 ~ Items append from storage vplib:temp item
loot replace block ~ ~ ~ container.22 1 mine ~ 255 ~ air{drop_contents:1b}

# Clear shulker box
setblock ~ 255 ~ minecraft:air