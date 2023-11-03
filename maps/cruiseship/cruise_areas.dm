/area/cruise
	holomap_color = HOLOMAP_AREACOLOR_CREW
	name = "\proper Sky"
	icon_state = "purple"
	is_outside = OUTSIDE_YES

/area/cruise/sea
	name = "\proper Sea"
	icon_state = "blue2"
	is_outside = OUTSIDE_YES

/area/cruise/first
	name = "\improper Cruise Ship First Deck"
	icon_state = "engineering"

/area/cruise/first/indoor
	is_outside = OUTSIDE_NO

/area/cruise/second
	name = "\improper Cruise Ship Second Deck"
	icon_state = "bar"

/area/cruise/third
	name = "\improper Cruise Ship Third Deck"
	icon_state = "green"

/area/turbolift/cruise
	name = "\improper Cruise Ship Elevator"
	icon_state = "shuttle"
	requires_power = FALSE
	dynamic_lighting = TRUE
	sound_env = STANDARD_STATION
	ambience = list(
		'sound/ambience/ambigen3.ogg',
		'sound/ambience/ambigen4.ogg',
		'sound/ambience/ambigen5.ogg',
		'sound/ambience/ambigen6.ogg',
		'sound/ambience/ambigen7.ogg',
		'sound/ambience/ambigen8.ogg',
		'sound/ambience/ambigen9.ogg',
		'sound/ambience/ambigen10.ogg',
		'sound/ambience/ambigen11.ogg',
		'sound/ambience/ambigen12.ogg'
	)
	arrival_sound = null
	lift_announce_str = null

	base_turf = /turf/simulated/open

/area/turbolift/example/first
	name = "Cruise Ship First Deck Elevator"
	base_turf = /turf/simulated/floor

/area/turbolift/example/second
	name = "Cruise Ship Second Deck Elevator"

/area/turbolift/example/third
	name = "Cruise Ship Third Deck Elevator"

/area/shuttle/ferry
	name = "\improper Cruise Ship Ferry"
	icon_state = "shuttle"
