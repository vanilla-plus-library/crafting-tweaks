#> vplib:crafting_tweaks/buttons/clear_grid/player

# Click type
scoreboard players operation #click_type vplib.temp = #clicked vplib.temp

# Sound
playsound minecraft:ui.button.click master @s ~ ~ ~ 0.25 1


# Drop items using a shulker box
setblock ~ 255 ~ minecraft:yellow_shulker_box

data modify block ~ 255 ~ Items set from storage vplib:temp array
loot spawn ~ ~0.5 ~ mine ~ 255 ~ minecraft:air{drop_contents:1b}

setblock ~ 255 ~ minecraft:air


# Edit items(Set owner and set pickup delay)
data modify storage vplib:temp uuid set from entity @s UUID
execute positioned ~ ~0.5 ~ as @e[type=minecraft:item,distance=..0.25,nbt={Age:0s}] run function vplib:crafting_tweaks/buttons/clear_grid/modify_item