function init_go()
	echo( "--------------\n" )
	echo( "ENABLING go ALIAS. Usage:\n" )
	echo( "  #go dir      -- sends you to a dir\n" )
	echo( "  #go back dir -- sends you back to heart from a dir\n" )
	echo( "  #rgo dir     -- sends you to a dir and makes you rest\n" )
	echo( "  #go help     -- shows you dirs you can enter\n\n"
	echo( "--------------\n" )
end

function eotl_go_help()
	echo( "\n---------------------\n" )
	echo( "EotL Go Locations:\n" )
	echo( "=================\n" )
	echo( "alfred\n" )
	echo( "argos         (City of Argos - needs to be  night)\n" )
	echo( "atlas         (Atlas Mountains - needs to be night)\n" )
	echo( "brins\n" )
	echo( "chaos         (same dirs as Disaster)\n" )
	echo( "chaoscastle   (coining!  Also: defenders)\n" )
	echo( "dark ones\n" )
	echo( "dinos\n" )
	echo( "elixir        (also: elixirs)\n" )
	echo( "enchant       (Javier's)\n" )
	echo( "entesia\n" )
	echo( "heart\n" )
	echo( "keeshka       (also: keeshkas OR milk)\n" )
	echo( "newhaven\n" )
	echo( "mk4           (also: mk5 and mk6)\n" )
	echo( "mk7           (also: mk8 and mk9)\n" )
	echo( "oracle\n" )
	echo( "ragnarok\n" )
	echo( "reds          (Red Disciple Guild)\n" )
	echo( "enhance       (enhancement for items in Newhaven)\n" )
	echo( "spiced        (Spice items in Sams)\n" )
	echo( "stats\n" )
	echo( "trolls\n" )
	echo( "temper        (Temper armor)\n" )
	echo( "witch         (Delvarii in Ragnarok\n" )
	echo( "woods         (A shop in the woods. also: woodshop)\n" )
	echo( "xmen\n" )
	echo( "xbank\n" )
	echo( "xlockers\n" )
	echo( "xshop\n" )
	echo( "zarinia\n" )
	echo( "---------------------\n" )
end

function eotl_go()
	goback = matches[2]
	dir = matches[3]

	if "back " == goback then
		goback = true
	else
		goback = false
	end

	if "help" == dir then
		eotl_go_help()
	elseif "alfred" == dir then
		expandAlias( "#go newhaven" )
		speedwalk( "s, 26w, 11s, 12w, 2nw, 11w, 9s, se, ne, n" )
	elseif "argos" == dir then
		expandAlias( "#go entesia" )
		speedwalk( "2n, w, 2n, 5e, s" )
		send( "wish on star" )
		if true == leading_helper then
			send( "group say wish on star" )
		end
	elseif "atlas" == dir then
		expandAlias( "#go argos" )
		tempTimer( 5, [[speedwalk( "3w, nw, d, 4w, n, u" )]])
	elseif "brins" == dir then
		speedwalk( "2e, 5s, 9e, n, e", goback )
	elseif "chaos" == dir or "disaster" == dir then
		if false == goback then
			expandAlias( "#go entesia" )
			speedwalk( "11e, 4s, e, 3s, e, 4s, w, 2s, e, 2s, 2sw, 2w, nw, n, 3w, s" )
		else
			speedwalk( "11e, 4s, e, 3s, e, 4s, w, 2s, e, 2s, 2sw, 2w, nw, n, 3w, s", goback )
			expandAlias( "#go back entesia" )
		end
	elseif "chaoscastle" == dir or "defenders" == dir then
		if false == goback then
			expandAlias( "#go chaos" )
			speedwalk( "s, 16w, 7n, 4w, n, w" )
		else
			speedwalk( "s, 16w, 7n, 4w, n, w", goback )
			expandAlias( "#go back chaos" )
		end
	elseif "dark ones" == dir or "darkones" == dir then
		if false == goback then
			speedwalk( "5n" )
			send( "cross bridge" )
			speedwalk( "2n, e, 4n, 2e, n" )
		else
			speedwalk( "2n, e, 4n, 2e, n", goback )
			send( "cross bridge" )
			speedwalk( "5n", goback )
		end
	elseif "dinos" == dir then
		if false == goback then
			speedwalk( "3n, 6e, 3s, e, s" )
			send( "change channel to 4" )
			send( "watch tv" )
			if true == leading_helper then
				send( "group say tv" )
			end
		else
			send( "enter portal" )
			speedwalk( "3n, 6e, 3s, e, s", goback )
		end
	elseif "elixir" == dir or "elixirs" == dir then
		if false == goback then
			expandAlias( "#go chaos" )
			speedwalk( "s, 16w, 7n, 3w, s" )
		else
			speedwalk( "s, 16w, 7n, 3w, s", goback )
			expandAlias( "#go back chaos" )
		end
	elseif "enchant" == dir then
		if false == goback then
			expandAlias( "#go ragnarok" )
			speedwalk( "s, e, 3n, 4w, n, w, nw" )
		else
			speedwalk( "s, e, 3n, 4w, n, w, nw", goback )
			expandAlias( "#go back ragnarok" )
		end
	elseif "enhance" == dir then
		expandAlias( "#go newhaven" )
		speedwalk( "s, 2w, 22s, 19w, s, w" )
	elseif "entesia" == dir then
		if false == goback then
			send( "e" )
			send( "swim" )
		else
			speedwalk( "3w, n" )
			send( "enter mirror" )
			if true == leading_helper then
				send( "group say mirror" )
			end
		end
	elseif "heart" == dir then
		send( "pinch daisy" )
		speedwalk( "6n, e" )
		send( "ride birdie" )
		if true == leading_helper then
			send( "group say birdie" )
		end
	elseif "keeshka" == dir or "keeshkas" == dir or "milk" == dir then
		speedwalk( "5n" )
		send( "cross bridge" )
		speedwalk( "3n, se, 2e" )
		send( "touch scarecrow" )
		speedwalk( "3e, ne, 3n, w" )
	elseif "mk4" == dir or "mk5" == dir or "mk6" == dir then
		if false == goback then
			expandAlias( "#go xmen" )
			speedwalk( "2n, 2w" )
		else
			speedwalk( "2e, 2s" )
			expandAlias( "#go back xmen" )
		end
	elseif "mk8" == dir or "mk7" == dir or "mk9" == dir then
		if false == goback then
			expandAlias( "#go xmen" )
			speedwalk( "2n, w" )
		else
			speedwalk( "e, 2s" )
			expandAlias( "#go back xmen" )
		end
	elseif "newhaven" == dir then
		speedwalk( "3n, 6e, 3s, e, s" )
		send( "change channel to 5" )
		send( "watch tv" )
		if true == leading_helper then
			send( "group say tv" )
		end
	elseif "oracle" == dir then
		speedwalk( "2e, 5s, 3w, s", goback )
	elseif "ragnarok" == dir then
		if false == goback then
			speedwalk( "3e, n, 3e, 3s, 3e, 2u" )
			send( "place claws on altar" )
			send( "place hands on altar" )
			send( "place paws on altar" )
			send( "say death" )
			if true == leading_helper then
				send( "group say altar" )
			end
		else
			send( "place claws on altar" )
			send( "place hands on altar" )
			send( "place paws on altar" )
			send( "say death" )
			if true == leading_helper then
				send( "group say altar" )
			end
			speedwalk( "3e, n, 3e, 3s, 3e, 2u", goback )
		end
	elseif "reds" == dir then
		speedwalk( "5w, 2d, 6s, 7w, 3n, 3w, s, 3w, 5s, e, 3s, e, 4s, w, 2s, e, 2s, sw, sw, 2w, nw, n, 3w, 2s, 5w, 2n, 5w, 3n, 6w, 5s, 2sw, 4s", goback )
	elseif "spiced" == dir then
		if false == goback then
			expandAlias( "#go newhaven" )
			speedwalk( "s, 26w, 11s, 12w, 2nw, 11w, 9s, se, ne, sw, 2s, 2sw, w, s, 2sw, 2s, sw, s, sw, 14s, w, 2s, w" )
		else
			speedwalk( "s, 26w, 11s, 12w, 2nw, 11w, 9s, se, ne, sw, 2s, 2sw, w, s, 2sw, 2s, sw, s, sw, 14s, w, 2s, w", goback )
			send( "enter portal" )
			speedwalk( "3n, 6e, 3s, e, s", goback )
		end
	elseif "stats" == dir then
		speedwalk( "4w, 2s", goback )
	elseif "trolls" == dir then
		if false == goback then
			expandAlias( "#go chaos" )
			speedwalk( "s, 6w, 3n" )
		else
			speedwalk( "s, 6w, 3n", goback )
			expandAlias( "#go back chaos" )
		end
	elseif "temper" == dir then
		if false == goback then
			expandAlias( "#go chaos" )
			speedwalk( "s, 16w, 7n, 2w, s, e" )
		else
			speedwalk( "s, 16w, 7n, 2w, s, e", goback )
			expandAlias( "#go back chaos" )
		end
	elseif "witch" == dir then
		if false == goback then
			expandAlias( "#go ragnarok" )
			speedwalk( "s, 3e" )
		else
			speedwalk( "s, 3e", goback )
			expandAlias( "#go back ragnarok" )
		end
	elseif "woodshop" == dir or "woods" == dir then
		speedwalk( "5w, 2d, 4s, 4e, s, e, 4s, e, n, w, 3n, 2e, n, e, s, e, 2s, 3e", goback )
	elseif "xmen" == dir then
		if false == goback then
			send( "s" )
			send( "xmen" )
		else
			send( "eternal" )
			send( "n" )
		end
	elseif "xbank" == dir then
		if false == goback then
			expandAlias( "#go xmen" )
			send( "e" )
		else
			send( "w" )
			expandAlias( "#go back xmen" )
		end
	elseif "xlockers" == dir or "xlocker" == dir or "xlock" == dir then
		if false == goback then
			expandAlias( "#go xmen" )
			speedwalk( "4n" )
		else
			speedwalk( "4s" )
			expandAlias( "#go back xmen" )
		end
	elseif "xshop" == dir then
		if false == goback then
			expandAlias( "#go xmen" )
			speedwalk( "3n" )
		else
			speedwalk( "3s" )
			expandAlias( "#go back xmen" )
		end
	elseif "zarinia" == dir then
		expandAlias( "#go newhaven" )
		speedwalk( "s, 26w, 11s, 12w, 2nw, 11w, 9s, se, ne, se, 2s, se, s" )
	end
end

init_go()
