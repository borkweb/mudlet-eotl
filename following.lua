function init_following()
	follow_helper = false

	echo( "loading follow helper.  To toggle it, type: #follow\n" )
	if following_trigger then
		killTrigger( following_trigger )
	end

	tempComplexRegexTrigger( "following_trigger", "tells you: (.+)$", [[
		following_response()
	]], 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 )
	following_trigger = tempComplexRegexTrigger( "following_trigger", "\\(Group\\) .+: (.+)$", [[
		following_response()
	]], 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 )

	if following_alias then
		killAlias( following_alias )
	end

	following_trigger = tempAlias( "^#follow$", [[
		if false == follow_helper then
			echo( "Follow Helper: ON\n" )
			follow_helper = true
		else
			echo( "Follow Helper: OFF\n" )
			follow_helper = false
		end
	]])
end

function following_response()
	if true == follow_helper then
		say = matches[2]

		if "birdie" == say then send( "ride birdie" )
		elseif "portal" == say then send( "enter portal" )
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
		end
	end
end

init_following()
