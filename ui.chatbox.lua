function init_chatbox ()
	echo( "enabling chatbox.  To mute it, type: #mute\n" )
	chatbox = Geyser.MiniConsole:new({
		name = "chatbox",
		x = 0,
		y = "-" .. chatbox_size_height + roomlabel_size_height .. "px",
		width = "100%",
		height = chatbox_size_height .. "px",
		wrapAt = 100,
	}, container_right )

	chatbox:setColor( "black" )
	setMiniConsoleFontSize("chatbox", 10)

	mute = false

	if eotl_mute_alias then
		killAlias( eotl_mute_alias )
	end

	eotl_mute_alias = tempAlias( "^#mute$", [[
		if true == mute then
			echo( "Unmuted\n" )
			mute = false
		else
			echo( "Muted\n" )
			mute = true
		end
	]])

	if chatbox_trigger then
		killTrigger( chatbox_trigger )
	end

	tempComplexRegexTrigger( "chatbox_trigger", "(\\w+ tells you:) (.+)$", [[
		chatbox_echo()
	]], 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 )
	tempComplexRegexTrigger( "chatbox_trigger", "(\\w+ tells you:) (.+)$", [[
		chatbox_echo()
	]], 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 )
	tempComplexRegexTrigger( "chatbox_trigger", "(\\w+ says:) (.+)$", [[
		chatbox_echo()
	]], 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 )
	tempComplexRegexTrigger( "chatbox_trigger", "(You say:) (.+)$", [[
		chatbox_echo()
	]], 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 )
	chatbox_trigger = tempComplexRegexTrigger( "chatbox_trigger", "(\\(Group\\) \\w+:) (.+)$", [[
		chatbox_echo()
	]], 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 )
end

function chatbox_echo()
	local time = getTime( true, "hh:mm" )
	-- ignore swashbuckler attack tells
	if not (
		string.find( line, "ha-HA!" )
		or string.find( line, "says: I'm shaking, I'm shaking." )
		or string.find( line, "says: You fight like a dairy farmer." )
		or string.find( line, "says: First you'd better stop waving it like a feather-duster." )
		or string.find( line, "says: Yes there are.  You just never learned them." )
		or string.find( line, "says: I am rubber, you are glue." )
		or string.find( line, "says: Nobody's ever drawn blood from me and nobody ever will!" )
		or string.find( line, "says: Soon you'll be wearing my sword like a shish kebab!" )
		or string.find( line, "says: There are no words for how disgusting you are." )
		or string.find( line, "says: I've heard you are a contemptible sneak." )
		or string.find( line, "says: I got this scar on my face during a mighty struggle!" )
		or string.find( line, "says: I hope now you've learned to stop picking your nose." )
		or string.find( line, "says: Oh yeah?" )
		or string.find( line, "says: I usually see people like you passed-out on tavern floors." )
		or string.find( line, "says: Boy are you ugly!" )
		or string.find( line, "says: You are a pain in the backside, " )
		or string.find( line, "says: Get back here, I'm not through with you yet!" )
		or string.find( line, "says: You have the manners of a beggar." )
		or string.find( line, "says: HA!  Is that the best you can come up with?" )
		or string.find( line, "says: There are no clever moves that can help you now." )
		or string.find( line, "says: My handkerchief will wipe up your blood!" )
	) then

		linenumber = getLineNumber()
		selectCurrentLine()
		copy()
		chatbox:echo( time .. " " )
		appendBuffer( "chatbox" )

		if false == mute then
			playSoundFile("/System/Library/Sounds/Pop.aiff")
		end
	end
end

init_chatbox()
