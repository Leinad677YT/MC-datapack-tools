##                    requirements ~ {target:"PLAYER"}                      ##
#                                                                            #
# > "PLAYER" = string of the player name that you want to go with            #
#   · function foo:bar {target:"Leinad677YT"} would be a functioning example #
##                                                                          ##

## PLAYER WAS INVITED?
    $execute unless score @s team.invited_to = $(target) team.current run return run tellraw @s [{text:"",color:"#ff5522"},{text:"[+] ",color:"dark_aqua"},{translate: "leinad.team.were_not_invited"}]
##

## JOIN

    ## SET SCORES
        $scoreboard players operation @s team.current = $(target) team.current
        scoreboard players set @s team.invited_to -2
        $scoreboard players set $(target) team.invited -3
    ##

    ## SET TEMP SCORE
        scoreboard players operation #temp team.current = @s team.current
    ##
    
    ## tellraw @s current team ID + members
        tellraw @s [{text:""},{text: "[+] ",color:"dark_aqua"},{text:"TEAM ID: ",color:"#555555"},{score:{name: "@s",objective: "team.current"},color:"#555555"},{text:"\n[^] ",color:"dark_aqua"},{translate: "leinad.team.tellraw.current_members",color:"gray"},{text:":\n ",color:"gray"},{selector: "@a[predicate=team:same_serverside_team]"}]
    ##
##