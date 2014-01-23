function init_ui_vars()
	window_width = 0;
	window_height = 0;
	window_width, window_height = getMainWindowSize();

	gutter_width = 15
	chatbox_size_width = 600
	chatbox_size_height = 200
	statusbar_size_width = 600
	statusbar_size_height = 40
	roomlabel_size_width = 600
	roomlabel_size_height = 40
end

function format_int( number )

	local i, j, minus, int, fraction = tostring(number):find('([-]?)(%d+)([.]?%d*)')

	-- reverse the int-string and append a comma to all blocks of 3 digits
	int = int:reverse():gsub("(%d%d%d)", "%1,")

	-- reverse the int-string back remove an optional comma and put the 
	-- optional minus and fractional part back
	return minus .. int:reverse():gsub("^,", "") .. fraction
end

init_ui_vars()
