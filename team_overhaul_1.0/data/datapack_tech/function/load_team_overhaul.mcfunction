## load function

tellraw Leinad677YT [{text:"[!] ",color:dark_aqua},{text:"loading team_overhaul",color:"gray"}]

## SCOREBOARDS
    
    ## VISUALS
        scoreboard objectives add team.pref dummy
        scoreboard objectives add team.suf1 dummy
        scoreboard objectives add team.suf2 dummy
        scoreboard objectives add team.suf3 dummy
    ##

    ## SERVERSIDE
        scoreboard objectives add team.current dummy
        scoreboard objectives add team.invited dummy
        scoreboard objectives add team.invited_to dummy
    ##
##

## FORCELOAD
    execute in overworld run forceload add 0 0
##

tellraw Leinad677YT [{text:"[^] ",color:dark_aqua},{text:"loaded team_overhaul",color:"gray"}]