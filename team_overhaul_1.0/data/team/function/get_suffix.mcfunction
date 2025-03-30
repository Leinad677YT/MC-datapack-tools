## EXAMPLE: LIST

data remove storage leinad_temp:teamdata raw.suffix

###### SUF 1
execute if score @s team.suf1 matches 1 run data modify storage leinad_temp:teamdata raw.suffix.1 set value [{text:" 1",color:"gold",bold:true}]
                # 
###### SUF 2
execute if score @s team.suf2 matches 1 run data modify storage leinad_temp:teamdata raw.suffix.2 set value [{text:" 2",color:"aqua",bold:true}]
                # 
###### SUF 3
execute if score @s team.suf3 matches 1 run data modify storage leinad_temp:teamdata raw.suffix.3 set value [{text:" 3",color:"gray",bold:true}]
                # 