function init_autojunk()
	if junk_defender_sword_trigger then killTrigger( junk_defender_sword_trigger ) end
	junk_defender_sword_trigger = tempTrigger( "You pick up an unholy defender sword of Chaos.", [[ send( "junk defender sword" ) ]])

	if junk_ogre_power_trigger then killTrigger( junk_ogre_power_trigger ) end
	junk_ogre_power_trigger = tempTrigger( "You pick up Gauntlets of Ogre Power.", [[ send( "junk Gauntlets of Ogre Power" ) ]])

	if junk_enforcer_tabard_trigger then killTrigger( junk_enforcer_tabard_trigger ) end
	junk_enforcer_tabard_trigger = tempTrigger( "You pick up an Enforcer's tabard.", [[ send( "junk Enforcer's tabard" ) ]])
end

init_autojunk()
