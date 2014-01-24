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

	if statusbar_trigger then
		killTrigger( statusbar_trigger )
	end

	statusbar_strings = {}
	table.insert( statusbar_strings, "You're too mentally exhausted" )
	table.insert( statusbar_strings, "You're too tired to" )
	table.insert( statusbar_strings, "^You killed" )
	table.insert( statusbar_strings, "^\\w+ kills" )
	table.insert( statusbar_strings, "Your hardened skin returns to normal." )
	table.insert( statusbar_strings, "Your reflexes return to normal." )
	table.insert( statusbar_strings, "You fail to use your reflex heightening ability!" )
	table.insert( statusbar_strings, "You don't feel as tough anymore." )

	for i, value in ipairs( statusbar_strings ) do
		statusbar_trigger = tempComplexRegexTrigger( "statusbar_trigger", value, [[
			statusbar_echo()
		]], 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 )
	end
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
