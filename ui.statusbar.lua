function init_statusbar()
	statusbar = Geyser.Label:new({
		name = "statusbar",
		x = window_width - size_width - gutter_width .. "px",
		y = window_height - size_height - 200 .. "px",
		width = statusbar_size_width .. "px",
		height = statusbar_size_height .. "px",
		fgColor = "white",
		color = "firebrick"
	})

	statusbar:setStyleSheet([[
		font-size: 10px;
		padding: 10px;
	]])

	statusbar:hide()
end

function statusbar_echo( line )
	statusbar:echo( line )
	tempTimer( 20, [[statusbar:hide()]] )
end

init_statusbar()
