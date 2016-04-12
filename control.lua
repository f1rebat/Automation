require "util"
require "defines"

--Variables
current_direction = {defines.direction.north,
		     defines.direction.northeast,
		     defines.direction.east,
		     defines.direction.southeast,
		     defines.direction.south,
		     defines.direction.southwest,
		     defines.direction.west,
		     defines.direction.northwest}

r = 1 --North

--Main
script.on_event(defines.events, function(event)
   if event.name == defines.events.on_tick then
      if game.tick % 60*2 == 0 then --Change direction / 2s
	 r = math.random(1,#current_direction)
      end
   end
   game.players[1].walking_state = {walking = true, direction = current_direction[r]} --Makes the player walk
end)
