Upload this files into you datapack folder and you are good to go!


Not compatible with silicat's string lib because it uses an adaptation to make to_lowercase faster


To save a player's data inside their storage, use 
    function player:macro/save_import {player:"lowercase playername"}
^^^  see login:call/disconnected for an example (it also gets saved when they leave*)  *(not tested in singleplayer)

To import data from a player file, use the following function AFTER the player is already loaded
    function player:control/import {player:"NORMAL/LOWERCASE PLAYERNAME"}