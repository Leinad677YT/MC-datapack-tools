scoreboard players operation @s pin_3_stored = @s pin_3
scoreboard players set @s pin_3 -1
scoreboard players reset @s pin_remove
scoreboard players enable @s pin_4
scoreboard players enable @s pin_remove
playsound ui.button.click voice @s ~ ~ ~ 1 1 1

## RELLENO (x25)
tellraw @s {text:"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}

advancement revoke @s only login:stages/writ_4
advancement revoke @s only login:stages/remove_3
#tellraw @s "=>   <=>     <=>     <=>     <=>     <=>     <=>     <=>     <=>   <="
tellraw @s [{text:"[^] ",color:"dark_aqua"},{text:"console.pin.announce",color:"gray"}]
tellraw @s ""
tellraw @s {text:"                     [ # # # · · ]",bold: true,color:"dark_gray"}
tellraw @s "                                                                     "
tellraw @s [{text:"                  "},{text:"[ 7 ]","clickEvent":{action:"run_command","value":"/trigger pin_4 set 8"}},{text:"       "},{text:"[ 8 ]","clickEvent":{action:"run_command","value":"/trigger pin_4 set 9"}},{text:"       "},{text:"[ 9 ]","clickEvent":{action:"run_command","value":"/trigger pin_4 set 10"}}]
tellraw @s [{text:"                  "},{text:"[ 4 ]","clickEvent":{action:"run_command","value":"/trigger pin_4 set 5"}},{text:"       "},{text:"[ 5 ]","clickEvent":{action:"run_command","value":"/trigger pin_4 set 6"}},{text:"       "},{text:"[ 6 ]","clickEvent":{action:"run_command","value":"/trigger pin_4 set 7"}}]
tellraw @s [{text:"                  "},{text:"[ 1 ]","clickEvent":{action:"run_command","value":"/trigger pin_4 set 2"}},{text:"       "},{text:"[ 2 ]","clickEvent":{action:"run_command","value":"/trigger pin_4 set 3"}},{text:"       "},{text:"[ 3 ]","clickEvent":{action:"run_command","value":"/trigger pin_4 set 4"}}]
tellraw @s [{text:"                      "},{text:"[ 0 ]","clickEvent":{action:"run_command","value": "/trigger pin_4 set 1"}},{text:"       "},{text:"[ DELETE ]","clickEvent":{action:"run_command","value":"/trigger pin_remove set 3"}}]
#tellraw @s "=>   <=>     <=>     <=>     <=>     <=>     <=>     <=>     <=>   <="
