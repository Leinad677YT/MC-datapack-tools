## LOGIN

    ## PLAYER JOINS
        execute in minecraft:overworld as @a[scores={online=0, deathCount=0}] run function login:call/joined
    ##

    ##   = player_id -> RESTART
        execute unless score #playercount online = #lastplayercount online run function login:call/restart
    ##

    ##   UPDATE ONLINE LIST
        scoreboard players operation #lastplayercount online = #playercount online
        execute store result score #playercount online run list
    ##
##

## MUERTES
    execute as @a[scores={deathCount=1}] run function server:player_management/player_died
##
