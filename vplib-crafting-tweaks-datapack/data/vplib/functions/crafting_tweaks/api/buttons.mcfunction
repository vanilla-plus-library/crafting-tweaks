#> vplib:crafting_tweaks/api/buttons

# Rotate grid
execute if score #button_clicked vplib.temp matches 0 unless data storage vplib:temp container[{Slot:1b}] run function vplib:crafting_tweaks/buttons/rotate_grid/main

# Balance grid
execute if score #button_clicked vplib.temp matches 0 unless data storage vplib:temp container[{Slot:10b}] run function vplib:crafting_tweaks/buttons/balance_grid/check_container

# Clear grid
execute if score #button_clicked vplib.temp matches 0 unless data storage vplib:temp container[{Slot:19b}] run function vplib:crafting_tweaks/buttons/clear_grid/check_container