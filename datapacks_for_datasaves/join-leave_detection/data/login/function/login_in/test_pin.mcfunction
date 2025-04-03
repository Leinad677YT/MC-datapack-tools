execute if entity @s[tag=!has_pin] run function login:login_in/store_pin
# with entity @s EnderItems[0].components.minecraft:profile
# execute if entity @s[tag=has_pin] run 
function login:login_in/try_login
playsound ui.button.click voice @s ~ ~ ~ 1 1 1
