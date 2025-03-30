## EXAMPLE: MULTIOPTION
## be aware that it doesnt require deleting data because it has a default case

## DEPENDING ON SCORES, SELECTS ONE IF VALID

execute if score @s team.pref matches 1 run return run data modify storage leinad_temp:teamdata raw.prefix set value {text:" [score1] ",color:"#1939b0",bold:true}

execute if score @s team.pref matches 2 run return run data modify storage leinad_temp:teamdata raw.prefix set value {text:" [2score] ",color:"light_purple",bold:true}
                # 
execute if score @s team.pref matches 3 run return run data modify storage leinad_temp:teamdata raw.prefix set value {text:" [THREE] ",color:"aqua", bold:true, hover_event: {action: "show_text", value: {text:"3"}}}
                #

## DEFAULT PREFIX
    data modify storage leinad_temp:teamdata raw.prefix set value {text:" [DEFAULT] ", color:"aqua", bold:true}
##