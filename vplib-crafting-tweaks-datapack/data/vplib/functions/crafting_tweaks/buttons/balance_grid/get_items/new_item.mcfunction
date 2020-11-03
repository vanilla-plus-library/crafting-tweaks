#> vplib:crafting_tweaks/buttons/balance_grid/get_items/new_item

# Prepend new item
data modify storage vplib:temp items prepend value {item:{},count:1,slots:[]}

# Set count
execute store result storage vplib:temp items[0].count int 1 run data get storage vplib:temp array[-1].Count

# Prepend slot
data modify storage vplib:temp items[0].slots prepend from storage vplib:temp array[-1].Slot
data modify storage vplib:temp gridSlots prepend from storage vplib:temp array[-1].Slot

# Set item nbt
data modify storage vplib:temp items[0].item set from storage vplib:temp array[-1]
data remove storage vplib:temp items[0].item.Slot
data remove storage vplib:temp items[0].item.Count