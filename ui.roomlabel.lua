function init_roomlabel()
	roomlabel = Geyser.Label:new({
		name = "roomlabel",
		x = window_width - roomlabel_size_width - gutter_width .. "px",
		y = "0px",
		width = roomlabel_size_width .. "px",
		height = roomlabel_size_height .. "px",
		fgColor = "white",
		color = "black"
	})

	roomlabel:setStyleSheet([[
		font-size: 12px;
		opacity: 0.5;
		padding: 10px;
	]])
end

function roomlog()
	room = matches[3]
	leave_dirs = matches[4]
	if
		"<Mortal>" == leave_dirs
		or "<Guest>" == leave_dirs
		or "<Frob>" == leave_dirs
		or "<Wizard>" == leave_dirs
	then
		return
	end

	leave_dirs = string.gsub( leave_dirs, ",", " , " )
	roomlabel:echo( [[<p style='font-size: 12px;'>]] .. room .. " [ " .. leave_dirs .. " ]</p>" )
end

init_roomlabel()
