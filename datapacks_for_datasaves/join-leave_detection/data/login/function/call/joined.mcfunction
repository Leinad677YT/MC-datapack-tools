## CALLED FROM tick.mcfunction AS player IN overworld

## AVOID RESTART
    scoreboard players add #lastplayercount online 1
    scoreboard players add #playercount online 1
##

## GET NAME + UUID
    loot replace block 0 -63 0 container.0 loot server:phead_own
    data modify storage leinad_temp:login player set from block 0 -63 0 Items[0].components.minecraft:profile

## 

## ROOT TELLRAW
    execute unless score @s online matches 1 run tellraw @s [{text:"[+] ",color:"dark_aqua"},{text:"console.player.join",color:"gray"}]
##


## CHECK IF THEY ARE NEW IN THE WORLD
    execute store result score #temp condition run function player:control/isnot_new

    execute if score #temp condition matches 1..2 run say I HAD DATA ALREADY
    execute if score #temp condition matches 2 run say BUT CHANGED MY NICKNAME
    execute if score #temp condition matches 0 run say I AM NEW 

    ## UPDATE PREF-SUF
        function team:update_player with storage leinad_temp:login player
        scoreboard players reset @s team.current
    ##
##

## APPEND TO ONLINE LIST
    data modify storage leinad_temp:login online append from storage leinad_temp:login player.name
    scoreboard players set @s online 1
##
