function init_go()
	echo( "--------------\n" )
	echo( "ENABLING go ALIAS. Usage:\n" )
	echo( "  #go dir      -- sends you to a dir\n" )
	echo( "  #go back dir -- sends you back to heart from a dir\n" )
	echo( "  #rgo dir     -- sends you to a dir and makes you rest\n" )
	echo( "  #go help     -- shows you dirs you can enter\n" )
	echo( "--------------\n" )
end

function eotl_go_help()
	echo( "\n---------------------\n" )
	echo( "EotL Go Locations:\n" )
	echo( "=================\n" )
	echo( "alfred\n" )
	echo( "argos         (City of Argos - needs to be  night)\n" )
	echo( "atlas         (Atlas Mountains - needs to be night)\n" )
	echo( "bard          (Rogue Guild: Bard Spec)\n" )
	echo( "brins\n" )
	echo( "capacitor     (Capacitor Guild)\n" )
	echo( "chaos         (same dirs as Disaster)\n" )
	echo( "chaoscastle   (coining!  Also: defenders)\n" )
	echo( "cleric        (Crusader Guild: Cleric Spec)\n" )
	echo( "crusader      (Crusader Guild)\n" )
	echo( "dark ones\n" )
	echo( "dinos\n" )
	echo( "elixir        (also: elixirs)\n" )
	echo( "enchant       (Javier's)\n" )
	echo( "enhance       (enhancement for items in Newhaven)\n" )
	echo( "entesia\n" )
	echo( "forester      (Forester Guild)\n" )
	echo( "headhunter    (Headhunter Guild)\n" )
	echo( "heart\n" )
	echo( "homeless      (Homeless Shelter)\n" )
	echo( "jedi          (Padawan Guild: Jedi Spec)\n" )
	echo( "keeshka       (also: keeshkas OR milk)\n" )
	echo( "kindred\n" )
	echo( "newhaven\n" )
	echo( "mageslayer    (Mageslayer Guild)\n" )
	echo( "mk4           (also: mk5 and mk6)\n" )
	echo( "mk7           (also: mk8 and mk9)\n" )
	echo( "necro         (Spellcaster Guild: Necromancer Spec)\n" )
	echo( "oracle\n" )
	echo( "ragnarok\n" )
	echo( "ranger        (Forester Guild: Ranger Spec)\n" )
	echo( "reds          (Red Disciple Guild)\n" )
	echo( "padawan       (Padawan Guild)\n" )
	echo( "paladin       (Crusader Guild: Paladin Spec)\n" )
	echo( "rogue         (Rogue Guild)\n" )
	echo( "sith          (Padawan Guild: Sith Spec)\n" )
	echo( "spellcaster   (Spellcaster Guild)\n" )
	echo( "spiced        (Spice items in Sams)\n" )
	echo( "stats\n" )
	echo( "theif         (Rogue Guild: Theif Spec)\n" )
	echo( "toad          (Uses the staff to go to Yxuxacta\n" )
	echo( "trolls\n" )
	echo( "temper        (Temper armor)\n" )
	echo( "warlock       (Spellcaster Guild: Warlock Spec)\n" )
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
	elseif "bard" == dir then
		speedwalk( "2e, 5s, 9w, 10n", goback )
	elseif "brins" == dir then
		speedwalk( "2e, 5s, 9e, n, e", goback )
	elseif "capacitor" == dir then
		speedwalk( "3d, 3n", goback )
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
	elseif "cleric" == dir then
		if false == goback then
			expandAlias( "#go crusader" )
			speedwalk( "n, 2u, w" )
		else
			speedwalk( "n, 2u, w", goback )
			expandAlias( "#go back crusader" )
		end
	elseif "crusader" == dir then
		speedwalk( "2e, 5s, 9e, 5n, 4u", goback )
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
	elseif "forester" == dir then
		speedwalk( "d, 3w, 5s, 17e, n" )
		send( "open door" )
		speedwalk( "d" )
		send( "look into sphere" )
		speedwalk( "5d" )
		send( "out" )
		speedwalk( "5e, 7s" )
	elseif "headhunter" == dir then
		if false == goback then
			expandAlias( "#go ragnarok" )
			speedwalk( "s, e, 3n, 2w, 3n" )
		else
			speedwalk( "s, e, 3n, 2w, 3n", goback )
			expandAlias( "#go back ragnarok" )
		end
	elseif "heart" == dir then
		send( "pinch daisy" )
		speedwalk( "6n, e" )
		send( "ride birdie" )
		if true == leading_helper then
			send( "group say birdie" )
		end
	elseif "homeless" == dir then
		speedwalk( "5w, 9s, d, s, d, e, 4s, 3e, n", goback )
	elseif "jedi" == dir then
		if false == goback then
			expandAlias( "#go padawan" )
			speedwalk( "2u", goback )
		else
			speedwalk( "2u", goback )
			expandAlias( "#go back padawan" )
		end
	elseif "keeshka" == dir or "keeshkas" == dir or "milk" == dir then
		speedwalk( "5n" )
		send( "cross bridge" )
		speedwalk( "3n, se, 2e" )
		send( "touch scarecrow" )
		speedwalk( "3e, ne, 3n, w" )
	elseif "kindred" == dir then
		if true == leading_helper then
			send( "get 120 coins from pack" )
			send( "get 120 coins from belt" )
			send( "give 120 coins to " .. lead_who )
		end
		speedwalk( "5w, 2d, 5n" )
		send( "pay guard" )
		if true == leading_helper then
			send( "group say pay guard" )
		end
		speedwalk( "3n, e, s" )
		send( "deny humanity" )
		if true == leading_helper then
			send( "group say deny humanity" )
		end
		tempTimer( 2, [[
			send( "stand" )
			tempTimer( 2, "glance" )
			speedwalk( "n, ne, w, n" )
			send( "move sheets" )
			send( "lay on bed" )
			if true == leading_helper then
				send( "group say move sheets" )
			end
		]])
	elseif "mageslayer" == dir then
		speedwalk( "5w, 2d, 10s, 3e, se, u, n, 2n", goback )
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
	elseif "necro" == dir then
		if false == goback then
			speedwalk( "6d, 2n, 4w, d, w" )
			send( "enter hole" )
			speedwalk( "2w, se" )
		else
			speedwalk( "2w, se", goback )
			send( "climb" )
			speedwalk( "6d, 2n, 4w, d, w", goback )
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
	elseif "padawan" == dir then
		speedwalk( "3w, 5s, 4w, n, 4w", goback )
	elseif "paladin" == dir then
		if false == goback then
			expandAlias( "#go crusader" )
			speedwalk( "n, e, u, n" )
		else
			speedwalk( "n, e, u, n", goback )
			expandAlias( "#go back crusader" )
		end
	elseif "ranger" == dir then
		speedwalk( "d, 5w, 2d, 2e, s, 3e" )
		send( "climb tree" )
		speedwalk( "u, 2w" )
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
	elseif "rogue" == dir then
		speedwalk( "3e, n, 3e, s, w" )
		send( "sit bench" )
	elseif "sith" == dir then
		if false == goback then
			speedwalk( "3w, 5s, 4w, 2n, 2w" )
			send( "cave" )
		else
			send( "out" )
			speedwalk( "3w, 5s, 4w, 2n, 2w", goback )
		end
	elseif "spellcaster" == dir then
		speedwalk( "d, 3w, 4s, 3w" )
		send( "make appointment with admissions" )
		tempTimer( 5, [[
			speedwalk( "w, 2n" )
		]])
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
	elseif "theif" == dir then
		if false == goback then
			expandAlias( "#go entesia" )
			speedwalk( "11e, n, 3e, n, w" )
		else
			speedwalk( "11e, n, 3e, n, w", goback )
			expandAlias( "#go back entesia" )
		end
	elseif "toad" == dir then
		if true == leading_helper then
			send( "give crystallized lysergic staff to " .. lead_who )
			send( "group say [automated] lick staff and give back please" )
		end
		send( "lick staff" )
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
	elseif "warlock" == dir then
		if false == goback then
			expandAlias( "#go entesia" )
			speedwalk( "11e, 4s, e, 3s, e, 4s, w, 2s, e, 2s, 2sw, 2w, nw, n, 3w, 2s, 16w, 7n, 2w, n, w" )
		else
			speedwalk( "11e, 4s, e, 3s, e, 4s, w, 2s, e, 2s, 2sw, 2w, nw, n, 3w, 2s, 16w, 7n, 2w, n, w", goback )
			expandAlias( "#go back entesia" )
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
