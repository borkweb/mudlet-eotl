function init_ui_vars()
	window_width = 0;
	window_height = 0;
	window_width, window_height = getMainWindowSize();

	gutter_width = 15

	if not chatbox_size_width then
		chatbox_size_width = 600
	end

	if not chatbox_size_height then
		chatbox_size_height = 250
	end

	statusbar_size_width = 600
	statusbar_size_height = 40
	roomlabel_size_width = 600
	roomlabel_size_height = 40

	if not chat_sound then
		chat_sound = getMudletHomeDir() .. "/sounds/Pop.wav"
	end
end

function string:split( inSplitPattern, outResults )
	if not outResults then
		outResults = { }
	end
	local theStart = 1
	local theSplitStart, theSplitEnd = string.find( self, inSplitPattern, theStart )
	while theSplitStart do
		table.insert( outResults, string.sub( self, theStart, theSplitStart-1 ) )
		theStart = theSplitEnd + 1
		theSplitStart, theSplitEnd = string.find( self, inSplitPattern, theStart )
	end
	table.insert( outResults, string.sub( self, theStart ) )
	return outResults
end

function format_int( number )

	local i, j, minus, int, fraction = tostring(number):find('([-]?)(%d+)([.]?%d*)')

	-- reverse the int-string and append a comma to all blocks of 3 digits
	int = int:reverse():gsub("(%d%d%d)", "%1,")

	-- reverse the int-string back remove an optional comma and put the 
	-- optional minus and fractional part back
	return minus .. int:reverse():gsub("^,", "") .. fraction
end

function init_containers()
	-- make sure the text doesn't underlay the UI elements
	setBorderRight( chatbox_size_width + 15 )
	setBorderBottom( 40 )

	container_left = Geyser.Container:new({
		name = "container_left",
		x = 0,
		y = 0,
		width = "10%",
		height = "100%"
	})

	container_right = Geyser.Container:new({
		name = "container_right",
		x = "-" .. chatbox_size_width .. "px",
		y = 0,
		width = chatbox_size_width .. "px",
		height = "100%"
	})

	container_bottom = Geyser.Container:new({
		name = "container_bottom",
		x = 0,
		y = "-" .. roomlabel_size_height .. "px",
		width = "100%",
		height = roomlabel_size_height
	})
end

init_ui_vars()
init_containers()
