/datum/map/cruise
	name = "Ship"
	full_name = "Cruise Ship"
	path = "cruiseship"

	lobby_screens = list(
		'maps/cruiseship/title.png'
	)

	lobby_tracks = list(

	)

	default_spawn = /decl/spawnpoint/cryo

	allowed_latejoin_spawns = list(
		/decl/spawnpoint/cryo
	)

	shuttle_docked_message = "The ferry has docked."
	shuttle_leaving_dock = "The ferry has departed from %dock_name%."
	shuttle_called_message = "The ferry has left."
	shuttle_recall_message = "The ferry has been recalled."
	emergency_shuttle_leaving_dock = "The coast guard evacuation ship has departed from %dock_name%."
	emergency_shuttle_docked_message = "The coast guard evacuation ship has docked."
	emergency_shuttle_called_message = "The coast guard has been contacted to evacuate the ship."
	emergency_shuttle_recall_message = "The coast guard vessel has been instructed to return to land."

	default_telecomms_channels = list(
		COMMON_FREQUENCY_DATA,
		list("name" = "Entertainment", "key" = "z", "frequency" = 1461, "color" = COMMS_COLOR_ENTERTAIN, "span_class" = CSS_CLASS_RADIO, "receive_only" = TRUE),
		list("name" = "Command",       "key" = "c", "frequency" = 1353, "color" = COMMS_COLOR_COMMAND,   "span_class" = "comradio", "secured" = access_bridge),
		list("name" = "Security",      "key" = "s", "frequency" = 1359, "color" = COMMS_COLOR_SECURITY,  "span_class" = "secradio", "secured" = access_security),
		list("name" = "Engineering",   "key" = "e", "frequency" = 1357, "color" = COMMS_COLOR_ENGINEER,  "span_class" = "engradio", "secured" = access_engine),
		list("name" = "Medical",       "key" = "m", "frequency" = 1355, "color" = COMMS_COLOR_MEDICAL,   "span_class" = "medradio", "secured" = access_medical),
		list("name" = "Service",       "key" = "v", "frequency" = 1349, "color" = COMMS_COLOR_SERVICE,   "span_class" = "srvradio", "secured" = access_bar),
		list("name" = "Supply",        "key" = "u", "frequency" = 1347, "color" = COMMS_COLOR_SUPPLY,    "span_class" = "supradio", "secured" = access_cargo)
	)
