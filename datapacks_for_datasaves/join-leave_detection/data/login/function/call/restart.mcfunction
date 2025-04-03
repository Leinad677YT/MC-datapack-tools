## GET NAME[0]
    
    data modify storage leinad_temp:login name set string storage leinad_temp:login online[0]
    
    ## DELETE FROM ARRAY
        data remove storage leinad_temp:login online[0]
    ##
##

## DISCONECTED CHECK
    function login:call/disconnected with storage leinad_temp:login
##

## NEEDS EXTRA ITERATIONS?
    execute if data storage leinad_temp:login online[0] run return run function login:call/restart
##

## < POST-LOOP > ##

## AVOID REPEATING LOGIN
    scoreboard players add @a online 0
    tag @a[scores={online=1}] add online
    tag @a[scores={online=0}] remove online
##

## RESET SCOREBOARD "ONLINE"

    ## RESET ALL
        scoreboard objectives remove online
        scoreboard objectives add online dummy
    ##

    ## RESET PLAYERCOUNT
        execute store result score #lastplayercount online store result score #playercount online run list
    ##
    
    ## SET ONLINE PLAYERS
        scoreboard players add @a online 0
        scoreboard players set @a[tag=online] online 1
    ##
##

## UPDATE PLAYERLIST
    data modify storage leinad_temp:login online set from storage leinad_temp:login online_
    data remove storage leinad_temp:login online_
##


########################################### DEBUGGING ##########################################################
## execute as @a[tag=logged_in] run say logged_in
## execute as @a[tag=in_login] run say in_login

