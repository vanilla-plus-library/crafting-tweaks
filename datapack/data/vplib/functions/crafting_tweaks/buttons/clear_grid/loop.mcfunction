#> vplib:crafting_tweaks/buttons/clear_grid/loop

# Append
data modify storage vplib:temp array append from storage vplib:temp containerGrid[-1]
execute store result storage vplib:temp array[-1].Slot byte 1 run scoreboard players add #slot vplib.temp 1

# Loop
data remove storage vplib:temp containerGrid[-1]
execute if data storage vplib:temp containerGrid[-1] run function vplib:crafting_tweaks/buttons/clear_grid/loop