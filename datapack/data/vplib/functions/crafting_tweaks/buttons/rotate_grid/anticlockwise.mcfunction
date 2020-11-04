#> vplib:crafting_tweaks/buttons/rotate_grid/anticlockwise

# Set shulker box
setblock ~ 255 ~ minecraft:yellow_shulker_box

# 1st slot
data remove storage vplib:temp item
data modify storage vplib:temp item set from storage vplib:temp container[{Slot:2b}]
data modify storage vplib:temp item.Slot set value 0b
data modify block ~ 255 ~ Items append from storage vplib:temp item
loot replace block ~ ~ ~ container.11 1 mine ~ 255 ~ air{drop_contents:1b}

# 1st slot
data remove storage vplib:temp item
data modify storage vplib:temp item set from storage vplib:temp container[{Slot:3b}]
data modify storage vplib:temp item.Slot set value 0b
data modify block ~ 255 ~ Items append from storage vplib:temp item
loot replace block ~ ~ ~ container.2 1 mine ~ 255 ~ air{drop_contents:1b}

# 1st slot
data remove storage vplib:temp item
data modify storage vplib:temp item set from storage vplib:temp container[{Slot:4b}]
data modify storage vplib:temp item.Slot set value 0b
data modify block ~ 255 ~ Items append from storage vplib:temp item
loot replace block ~ ~ ~ container.3 1 mine ~ 255 ~ air{drop_contents:1b}

# 1st slot
data remove storage vplib:temp item
data modify storage vplib:temp item set from storage vplib:temp container[{Slot:13b}]
data modify storage vplib:temp item.Slot set value 0b
data modify block ~ 255 ~ Items append from storage vplib:temp item
loot replace block ~ ~ ~ container.4 1 mine ~ 255 ~ air{drop_contents:1b}

# 1st slot
data remove storage vplib:temp item
data modify storage vplib:temp item set from storage vplib:temp container[{Slot:22b}]
data modify storage vplib:temp item.Slot set value 0b
data modify block ~ 255 ~ Items append from storage vplib:temp item
loot replace block ~ ~ ~ container.13 1 mine ~ 255 ~ air{drop_contents:1b}

# 1st slot
data remove storage vplib:temp item
data modify storage vplib:temp item set from storage vplib:temp container[{Slot:21b}]
data modify storage vplib:temp item.Slot set value 0b
data modify block ~ 255 ~ Items append from storage vplib:temp item
loot replace block ~ ~ ~ container.22 1 mine ~ 255 ~ air{drop_contents:1b}

# 1st slot
data remove storage vplib:temp item
data modify storage vplib:temp item set from storage vplib:temp container[{Slot:20b}]
data modify storage vplib:temp item.Slot set value 0b
data modify block ~ 255 ~ Items append from storage vplib:temp item
loot replace block ~ ~ ~ container.21 1 mine ~ 255 ~ air{drop_contents:1b}

# 1st slot
data remove storage vplib:temp item
data modify storage vplib:temp item set from storage vplib:temp container[{Slot:11b}]
data modify storage vplib:temp item.Slot set value 0b
data modify block ~ 255 ~ Items append from storage vplib:temp item
loot replace block ~ ~ ~ container.20 1 mine ~ 255 ~ air{drop_contents:1b}

# Clear shulker box
setblock ~ 255 ~ minecraft:air