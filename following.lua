function init_following()
	leading_helper = false
	follow_helper = false

	echo( "\n-----------------\n" )
	echo( "Enabling the Follow Helper.\n" )
	echo( "USAGE:\n" )
	echo( "  #follow - puts you in follow mode\n" )
	echo( "  #lead   - puts you in lead mode\n" )
	echo( "-----------------\n\n" )
end

function following_response()
	if true == follow_helper then
		say = matches[2]

		if "birdie" == say then send( "ride birdie" )
		elseif "deny humanity" == say then
			send( "say deny humanity" )
			tempTimer( 2, [[
				send( "stand" )
				speedwalk( "n, ne, w, n" )
				send( "move sheets" )
				send( "lay on bed" )
			]])
		elseif "door" == say then send( "open door" )
		elseif "elevator" == say then send( "elevator" )
		elseif "portal" == say then send( "enter portal" )
		elseif "push 1" == say then send( "push 13.1" )
		elseif "push 2" == say then send( "push 13.2" )
		elseif "push 3" == say then send( "push 13.3" )
		elseif "push 4" == say then send( "push 13.4" )
		elseif "push 5" == say then send( "push 13.5" )
		elseif "push 6" == say then send( "push 13.6" )
		elseif "push 7" == say then send( "push 13.7" )
		elseif "push 8" == say then send( "push 13.8" )
		elseif "push 9" == say then send( "push 13.9" )
		elseif "enter portal" == say then send( "enter portal" )
		elseif "mirror" == say then send( "enter mirror" )
		elseif "enter mirror" == say then send( "enter mirror" )
		elseif "orb" == say then send( "use orb" )
		elseif "use orb" == say then send( "use orb" )
		elseif "solace" == say then send( "enter solace" )
		elseif "enter solace" == say then send( "enter solace" )
		elseif "leave solace" == say then send( "leave solace" )
		elseif "leave" == say then send( "leave" )
		elseif "tv" == say then send( "watch tv" )
		elseif "watch tv" == say then send( "watch tv" )
		elseif "gate" == say then send( "enter gate" )
		elseif "enter gate" == say then send( "enter gate" )
		elseif "book" == say then send( "read book" )
		elseif "read book" == say then send( "read book" )
		elseif "rest" == say then send( "rest" )
		elseif "stand" == say then send( "stand" )
		elseif "xp" == say then send( "gs " .. format_int( xp ) )
		elseif "cave" == say then send( "cave" )
		elseif "scarecrow" == say then send( "touch scarecrow" )
		elseif "wish on star" == say then send( "wish on star" )
		elseif "altar" == say then
			send( "place claws on altar" )
			send( "place hands on altar" )
			send( "place paws on altar" )
			send( "say death" )
		elseif "sams" == say then
			expandAlias( "#go heart" )
			expandAlias( "#go spiced" )
		elseif "zarinia" == say then
			expandAlias( "#go heart" )
			expandAlias( "#go zarinia" )
		elseif "daisy" == say then
			send( "pinch daisy" )
		end
	end
end

init_following()
