# IMPORTANT
  · This pack requires forceloading the overworld at (0,0) to use a sign, to understand why, go to the function team:update_player
  · This pack will FLOOD your team list if you don't remove the team after someone leaves, it creates a new team for every player that joins the server.
  · This datapack requires players to have the score "playercount" as a numeric ID in order to assign serverside teams
  · This pack needs a forced enchanted item on the players in order to manage friendly fire.

# NOTES ON BEHAVIOUR 
  > load/uninstall messages
    · they target Leinad677YT in their respective tellraws, I recommend you to replace it with a selector that fits your purposes 
  > serverside teams
    · Players can join a team if
      - it was the last one they were invited to
      - at least a player has invited them as their last invitation sent
  > team:get_prefix & team:get_suffix 
    · They are example functions, you should mind changing them

# USEFUL FUNCTIONS
- I'd recommend to see this functions before starting, as they contain the core of the datapack 

  · LOAD FUNCTION
    > datapack_tech:load_team_overhaul
  · UNINSTALL FUNCTION
    > datapack_tech:uninstall_team_overhaul

  > team:update_player {name:"PLAYER"} 
    · Changes the prefix and suffix of PLAYER depending on which scores they have (see function team:get_prefix & team:get_suffix)
  > team:serverside/* // if the executor doesn't have a team, invite and list will create one for them
    · team:serverside/invite {target:"PLAYER"} invites PLAYER to the team
    · team:serverside/join_last {} tries to join the last team that the executor was invited to, fail if not invited || don't have an assigned id
    · team:serverside/join_specific {target:"PLAYER"} tries to join the team where PLAYER is, fail if not invited
    · team:serverside/list {} displays the current team the player is on

# DEPENDENCIES
  · NEEDED:
    > player id assigner
      · Required for players to have the score "playercount" as a numeric ID in order to assign serverside teams  
  
  · Recommended to use along with:
    > fixed enchantment on slot for hit detection 
      · To disable friendly fire using the predicate team:same_serverside_team
    > join/leave detection
      · To remove team on disconnection for less unused data on the world
      · To remove serverside_team on disconnection for easier team usage
      · To remove serverside_team invites on disconnection to avoid "lurkers"
