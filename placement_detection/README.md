### How it works
When a player places one <`brewing_stand[custom_data~{placed_block:{}}]`>, the advancement triggers, which starts searching in a cube around it, centered on their eyes. 
When it finds the block, starts the second function at the block position, which carries the custom data inside `placed_block:{}` from the block and the player as it's context.

> [!WARNING]  
> This datapack hasn't been tested on a server, clientside lag may let players place more than 1 block before the advancement being triggered, if that is the case, you should mind removing the `return run` from all the commands, which makes it much slower
