
## GET SCORES
    scoreboard players set #temp team.invited -1
    scoreboard players set #temp player_id -1
    scoreboard players operation #temp team.invited = @s team.invited_to
    scoreboard players operation #temp player_id = @s player_id
    scoreboard players operation #temp team.current = @s team.current
##

## WAS NOT INVITED OR DOESN'T HAVE ID
    execute if score #temp team.invited matches -1..0 run return run tellraw @s [{text:"",color:"#ff5522"},{text:"[+] ",color:"dark_aqua"},{translate:"leinad.team.were_not_invited"}]
    execute if score #temp player_id matches -1..0 run return run tellraw @s [{text:"",color:"#ff5522"},{text:"[+] ",color:"dark_aqua"},{translate:"leinad.team.were_not_invited"}]
##

## THERE ISN'T A PLAYER INVITING AT THE MOMENT
    execute unless entity @a[predicate=team:is_inviting_toteam,predicate=!team:same_serverside_team] run return run tellraw @s [{text:"",color:"#ff5522"},{text:"[+] ",color:"dark_aqua"},{translate:"leinad.team.not_invited_to_any"}]
##

## JOIN THE NEW TEAM
    
    ## SET SCORES
        scoreboard players operation @s team.current = @s team.invited_to
        scoreboard players set @a[predicate= team:is_inviting_toteam] team.invited -3
    ##

    ## SET TEMP SCORE
        scoreboard players operation #temp team.current = @s team.current
    ##

    ## tellraw @s current team ID + members
        tellraw @s [{text:""},{text: "[+] ",color:"dark_aqua"},{text:"TEAM ID: ",color:"#555555"},{score:{name: "@s",objective: "team.current"}, color:"#555555"},{text:"\n[^] ",color:"dark_aqua"},{translate: "leinad.team.tellraw.current_members",color:"gray"},{text:":\n ",color:"gray"},{selector: "@a[predicate=team:same_serverside_team]"}]
    ##
##