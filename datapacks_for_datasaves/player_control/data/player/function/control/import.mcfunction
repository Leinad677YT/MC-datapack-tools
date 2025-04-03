## STORE FOR IMPORT
    $data modify storage stringlib:temp data.Input set value "$(player)"
    $execute as $(player) run function player:macro/prepare_getmap
    function str:tolow_fast
    data modify storage leinad_temp:player import set from storage leinad_temp:player from_map
    data modify storage leinad_temp:player import.name set from storage stringlib:output to_lowercase
##

    function player:macro/import_data with storage leinad_temp:player import
