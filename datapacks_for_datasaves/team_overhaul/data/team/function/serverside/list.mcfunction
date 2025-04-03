## IF NEEDED, CREATE NEW TEAM
    execute unless score @s team.current = @s team.current run scoreboard players add #new team.current 1
    execute unless score @s team.current = @s team.current run scoreboard players operation @s team.current = #new team.current
##

## TELLRAW

    ## TEMP SCORE
        scoreboard players operation #temp team.current = @s team.current
    ##

    ## tellraw @s current team ID + members
        tellraw @s [{text:""},{text: "[+] ",color:"dark_aqua"},{text:"TEAM ID: ",color:"#555555"},{score:{name: "@s",objective: "team.current"}, color:"#555555"},{text:"\n[^] ",color:"dark_aqua"},{translate: "leinad.team.tellraw.current_members",color:"gray"},{text:":\n ",color:"gray"},{selector: "@a[predicate=team:same_serverside_team]"}]
    ##
##