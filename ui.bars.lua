function init_bars()
	local y_offset = 250
	local x_offset = 400
	local bar_width = 200
	local bar_height = 25
	local bar_spacing = 10

	echo( "enabling bars (hp/mana/ftg/exp)\n" )

	hpbar = Geyser.Gauge:new({
		name="hpbar",
		x=( window_width - bar_width - gutter_width - x_offset) .. "px",
		y=y_offset .. "px",
		width=bar_width .. "px",
		height=bar_height .. "px",
	})
	hpbar.front:setStyleSheet([[
		background-color: QLinearGradient( x1: 0, y1: 0, x2: 0, y2: 1, stop: 0 #a20e2c, stop: 0.5 #930f27, stop: 0.51 #8a0a1d, stop: 1 #6f0f14);
			border-top: 1px black solid;
			border-left: 1px black solid;
			border-bottom: 1px black solid;
			border-radius: 7;
			padding: 3px;
	]])
	hpbar.back:setStyleSheet([[
		background-color: QLinearGradient( x1: 0, y1: 0, x2: 0, y2: 1, stop: 0 #793744, stop: 0.5 #6f333e, stop: 0.51 #672d36, stop: 1 #542a2c);
			border-width: 1px;
			border-color: black;
			border-style: solid;
			border-radius: 7;
			padding: 3px;
	]])
	manabar = Geyser.Gauge:new({
		name="manabar",
		x=( window_width - bar_width - gutter_width - x_offset) .. "px",
		y=(y_offset + bar_height + bar_spacing ) .. "px",
		width=bar_width .. "px",
		height=bar_height .. "px",
	})
	manabar.front:setStyleSheet([[
		background-color: QLinearGradient( x1: 0, y1: 0, x2: 0, y2: 1, stop: 0 #147fdc, stop: 0.5 #1470c6, stop: 0.51 #0e61ba, stop: 1 #154797);
			border-top: 1px black solid;
			border-left: 1px black solid;
			border-bottom: 1px black solid;
			border-radius: 7;
			padding: 3px;
	]])
	manabar.back:setStyleSheet([[
		background-color: QLinearGradient( x1: 0, y1: 0, x2: 0, y2: 1, stop: 0 #0e5898, stop: 0.5 #0e4e8a, stop: 0.51 #094381, stop: 1 #0e3168);
			border-width: 1px;
			border-color: black;
			border-style: solid;
			border-radius: 7;
			padding: 3px;
	]])
	ftgbar = Geyser.Gauge:new({
		name="ftgbar",
		x=( window_width - bar_width - gutter_width - x_offset) .. "px",
		y=(y_offset + bar_height + bar_height + bar_spacing + bar_spacing ) .. "px",
		width=bar_width .. "px",
		height=bar_height .. "px",
	})
	ftgbar.front:setStyleSheet([[
		background-color: QLinearGradient( x1: 0, y1: 0, x2: 0, y2: 1, stop: 0 #10ae2b, stop: 0.5 #109e2a, stop: 0.51 #0b9329, stop: 1 #117731);
			border-top: 1px black solid;
			border-left: 1px black solid;
			border-bottom: 1px black solid;
			border-radius: 7;
			padding: 3px;
	]])
	ftgbar.back:setStyleSheet([[
		background-color: QLinearGradient( x1: 0, y1: 0, x2: 0, y2: 1, stop: 0 #377942, stop: 0.5 #336f3e, stop: 0.51 #2d673a, stop: 1 #2a5437);
			border-width: 1px;
			border-color: black;
			border-style: solid;
			border-radius: 7;
			padding: 3px;
	]])
	xpbar = Geyser.Gauge:new({
		name="xpbar",
		x=( window_width - bar_width - gutter_width - x_offset) .. "px",
		y=(y_offset + bar_height + bar_height + bar_height + bar_spacing + bar_spacing + bar_spacing ) .. "px",
		width=bar_width .. "px",
		height=bar_height .. "px",
	})
	xpbar.front:setStyleSheet([[
		background-color: QLinearGradient( x1: 0, y1: 0, x2: 0, y2: 1, stop: 0 #8d209e, stop: 0.5 #831e90, stop: 0.51 #7c1886, stop: 1 #6d1b6c);
			border-top: 1px black solid;
			border-left: 1px black solid;
			border-bottom: 1px black solid;
			border-radius: 7;
			padding: 3px;
	]])
	xpbar.back:setStyleSheet([[
		background-color: QLinearGradient( x1: 0, y1: 0, x2: 0, y2: 1, stop: 0 #8d209e, stop: 0.5 #831e90, stop: 0.51 #7c1886, stop: 1 #6d1b6c);
			border-width: 1px;
			border-color: black;
			border-style: solid;
			border-radius: 7;
			padding: 3px;
	]])

	send( "hp", false )
end

function update_bars_full()
	hp_current = string.gsub(matches[2], "%s+", "")
	hp_max = string.gsub(matches[3], "%s+", "")
	mana_current = string.gsub(matches[4], "%s+", "")
	mana_max = string.gsub(matches[5], "%s+", "")
	ftg_current = string.gsub(matches[6], "%s+", "")
	ftg_max = string.gsub(matches[7], "%s+", "")
	xp = string.gsub(matches[8], "%s+", "")

	hpbar:setValue( tonumber( hp_current ), tonumber( hp_max ), "HP: " .. format_int( hp_current ) .. " / " .. format_int( hp_max ) )
	manabar:setValue( tonumber( mana_current ), tonumber( mana_max ), "MP: " .. format_int( mana_current ) .. " / " .. format_int( mana_max ) )
	ftgbar:setValue( tonumber( ftg_current ), tonumber( ftg_max ), "FTG: " .. format_int( ftg_current ) .. " / " .. format_int( ftg_max ) )
	xpbar:setValue( tonumber( xp ), tonumber( xp ), "XP: " .. format_int( xp ) )
end

function update_bars_mageslayer()
	hp_current = string.gsub(matches[2], "%s+", "")
	hp_max = string.gsub(matches[3], "%s+", "")
	ftg_current = string.gsub(matches[4], "%s+", "")
	ftg_max = string.gsub(matches[5], "%s+", "")
	xp = string.gsub(matches[6], "%s+", "")

	hpbar:setValue( tonumber( hp_current ), tonumber( hp_max ), "HP: " .. format_int( hp_current ) .. " / " .. format_int( hp_max ) )
	manabar:setValue( 1, 1, "MP: N/A" )
	ftgbar:setValue( tonumber( ftg_current ), tonumber( ftg_max ), "FTG: " .. format_int( ftg_current ) .. " / " .. format_int( ftg_max ) )
	xpbar:setValue( tonumber( xp ), tonumber( xp ), "XP: " .. format_int( xp ) )
end

init_bars()
