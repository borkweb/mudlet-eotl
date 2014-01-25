function init_statusbar()
	statusbar = Geyser.Label:new({
		name = "statusbar",
		x = "-50%",
		y = 0,
		width = "50%",
		height = "100%",
		fgColor = "white",
	}, container_bottom)

	statusbar:setStyleSheet([[
		font-size: 12px;
		padding: 10px;
	]])
end

function statusbar_echo()
	statusbar:show()
	statusbar:setColor( "firebrick" )
	statusbar:echo( line )
	tempTimer( 20, [[
		statusbar:echo( "" )
		statusbar:setColor( "#222222" )
	]] )
end

init_statusbar()
