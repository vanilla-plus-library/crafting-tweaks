#> vplib:crafting_tweaks/api/slot_holders

# Append json gui
data modify storage vplib:temp json append value '[{"text":"\\ue000","color":"white","font":"vplib:crafting_tweaks/gui"},{"translate":"space.-42","font":"space:default"}]'

# Set slot holders
data modify storage vplib:temp ignoredSlots append value 1b
data modify storage vplib:temp ignoredSlots append value 10b
data modify storage vplib:temp ignoredSlots append value 19b

 item block ~ ~ ~ container.1 replace minecraft:gray_stained_glass_pane{HideFlags: 63, CustomModelData: 438900, vplib: {slot_holder: 1b, type: 1b, clickEvent: "rotate_grid"}, display: {Name: '{"text":"Rotate grid","italic":false}'}}
 item block ~ ~ ~ container.10 replace minecraft:gray_stained_glass_pane{HideFlags: 63, CustomModelData: 438900, vplib: {slot_holder: 1b, type: 1b, clickEvent: "balance_grid"}, display: {Name: '{"text":"Balance grid","italic":false}'}}
 item block ~ ~ ~ container.19 replace minecraft:gray_stained_glass_pane{HideFlags: 63, CustomModelData: 438900, vplib: {slot_holder: 1b, type: 1b, clickEvent: "clear_grid"}, display: {Name: '{"text":"Clear grid","italic":false}'}}