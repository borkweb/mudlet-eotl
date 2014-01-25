function init_roomlabel()
	echo( "enabling roomlabel\n" )
	roomlabel = Geyser.Label:new({
		name = "roomlabel",
		x = 0,
		y = 0,
		width = "50%",
		height = "100%",
		fgColor = "white",
		color = "black"
	}, container_bottom )

	roomlabel:setStyleSheet([[
		background-color: #222222;
		font-size: 12px;
		opacity: 0.5;
		padding: 10px;
	]])
end

function roomlog()
	room = matches[3]
	leave_dirs = matches[4]
	if
		"< *Mortal>" == leave_dirs
		or "< *Guest>" == leave_dirs
		or "< *Frob>" == leave_dirs
		or "< *Wizard>" == leave_dirs
	then
		return
	end

	leave_dirs = string.gsub( leave_dirs, ",", " , " )
	roomlabel:echo( [[<p style='font-size: 12px;'>]] .. room .. " [ " .. leave_dirs .. " ]</p>" )
end

init_roomlabel()
