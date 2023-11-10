#define AMBIENCE_EXTERIOR list(
		'sound/effects/wind/wind_2_1.ogg',
		'sound/effects/wind/wind_2_2.ogg',
		'sound/effects/wind/wind_3_1.ogg',
		'sound/effects/wind/wind_4_1.ogg',
		'sound/effects/wind/wind_4_2.ogg',
		'sound/effects/wind/wind_5_1.ogg'
	)
#define AMBIENCE_INDOOR list()
#define AMBIENCE_OUTDOOR AMBIENCE_EXTERIOR

/area/cruise
	holomap_color = HOLOMAP_AREACOLOR_CREW
	secure = TRUE
	//ambience = AMBIENCE_INDOOR
	is_outside = OUTSIDE_NO
	lightswitch = TRUE
	requires_power = TRUE
	always_unpowered = FALSE

/area/cruise/exterior
	name = "\proper Sky"
	icon_state = "purple"
	area_flags = AREA_FLAG_IS_BACKGROUND | AREA_FLAG_EXTERNAL | AREA_FLAG_HIDE_FROM_HOLOMAP
	is_outside = OUTSIDE_YES
	ambience = AMBIENCE_EXTERIOR
	lightswitch = FALSE
	always_unpowered = TRUE

/area/cruise/outdoor
	is_outside = OUTSIDE_YES
	ambience = AMBIENCE_OUTDOOR

/area/cruise/exterior/sea
	name = "\proper Sea"
	icon_state = "blue2"

//Halls

/area/cruise/hallway
	name = "\improper General Hallway"

/area/cruise/hallway/first
	name = "\improper Service Deck Hallway"

/area/cruise/hallway/second
	name = "\improper Interior Promenade"

//Engineering

/area/cruise/engineering
	name = "\improper Engineering Department"
	icon_state = "engineering"
	ambience = list('sound/ambience/ambisin1.ogg','sound/ambience/ambisin2.ogg','sound/ambience/ambisin3.ogg','sound/ambience/ambisin4.ogg')
	req_access = list(access_engine)
	holomap_color = HOLOMAP_AREACOLOR_ENGINEERING

/area/cruise/engineering/foyer
	name = "\improper Engineering Foyer"
	icon_state = "engineering_foyer"

/area/cruise/engineering/locker_room
	name = "\improper Engineering Locker Room"
	icon_state = "engineering_locker"

/area/cruise/engineering/storage
	name = "\improper Engineering Storage"
	icon_state = "engineering_storage"

/area/cruise/engineering/break_room
	name = "\improper Engineering Break Room"
	icon_state = "engineering_break"
	sound_env = MEDIUM_SOFTFLOOR

//Medical

/area/cruise/medical
	req_access = list(access_medical)
	holomap_color = HOLOMAP_AREACOLOR_MEDICAL

/area/cruise/medical/reception
	name = "\improper Medbay Reception"
	icon_state = "medbay"
	ambience = list('sound/ambience/signal.ogg')

/area/cruise/medical/medbay
	name = "\improper Medbay"
	icon_state = "medbay"
	ambience = list('sound/ambience/signal.ogg')

/area/cruise/medical/surgery
	name = "\improper Operating Theatre"
	icon_state = "surgery"

/area/cruise/medical/morgue
	name = "\improper Morgue"
	icon_state = "morgue"
	ambience = list('sound/ambience/ambimo1.ogg','sound/ambience/ambimo2.ogg','sound/music/main.ogg')
	req_access = list(access_morgue)

/area/cruise/medical/storage
	name = "\improper Medical Storage"
	icon_state = "medbay4"

/area/cruise/medical/psych
	name = "\improper Psych Room"
	icon_state = "medbay3"
	ambience = list('sound/ambience/signal.ogg')
	req_access = list(access_psychiatrist)

//Security

/area/cruise/security
	area_flags = AREA_FLAG_SECURITY
	req_access = list(access_security)
	holomap_color = HOLOMAP_AREACOLOR_SECURITY

/area/cruise/security/lobby
	name = "\improper Security Lobby"
	icon_state = "security"

/area/cruise/security/brig
	name = "\improper Security - Brig"
	req_access = list(access_brig)

/area/cruise/security/armory
	name = "\improper Security - Armory"
	icon_state = "warden"
	req_access = list(access_armory)

//Cargo

/area/cruise/cargo
	name = "\improper Provision Master's"
	icon_state = "quart"
	req_access = list(access_cargo)
	holomap_color = HOLOMAP_AREACOLOR_CARGO

/area/cruise/cargo/office
	name = "\improper Provisions Office"
	icon_state = "quartoffice"
	req_access = list(access_cargo)

/area/cruise/cargo/storage
	name = "\improper Warehouse"
	icon_state = "quartstorage"
	sound_env = LARGE_ENCLOSED

/area/cruise/cargo/qm
	name = "\improper Cargo - Quartermaster's Office"
	icon_state = "quart"
	req_access = list(access_qm)

//Hotel

/area/cruise/hotel
	name = "\improper NanoTravel Sea Resort"
	icon_state = "bar"

//Casino

//Fitness

//Spa

//Outdoor

/area/cruise/outdoor/top
	name = "\improper Cruise Ship Top Deck"
	icon_state = "green"

/area/cruise/outdoor/garden
	name = "\improper Outdoor Garden"

/area/cruise/outdoor/balcony
	name = "\improper Balcony"

/area/cruise/outdoor/promenade
	name = "\improper Outdoor Promenade"

//Crew

/area/cruise/crew
	name = "\improper Crew Areas"
	icon_state = "crew_quarters"
	req_access = list(list(
		access_engine,
		access_bridge,
		access_heads,
		access_medical,
		access_psychiatrist,
		access_security,
		access_cargo,
		access_kitchen,
		access_bar,
		access_janitor,
		access_hydroponics,
		access_chapel_office,
		access_lawyer,
		access_tcomsat,
		access_eva,
		access_maint_tunnels,
		access_library
		))

//Officers

/area/cruise/crew_quarters/heads
	icon_state = "head_quarters"
	req_access = list(access_heads)

/area/cruise/helm
	name = "\improper Helm"
	icon_state = "bridge"
	req_access = list(access_bridge)

/area/cruise/helm/hallway
	name = "\improper Deck Staff Hallway"
	icon_state = "hallF"

//Storage
/area/cruise/storage/tech
	name = "Technical Storage"
	icon_state = "storage"
	req_access = list(access_tech_storage)

/area/cruise/storage/primary
	name = "Primary Tool Storage"
	icon_state = "primarystorage"

/area/cruise/storage/tools
	name = "Auxiliary Tool Storage"
	icon_state = "auxstorage"

/area/cruise/storage/art
	name = "Art Supply Storage"
	icon_state = "storage"

/area/cruise/storage/emergency
	name = "Starboard Emergency Storage"
	icon_state = "emergencystorage"
	req_access = list(access_emergency_storage)

/area/cruise/storage/emergency2
	name = "Port Emergency Storage"
	icon_state = "emergencystorage"
	req_access = list(access_emergency_storage)

//Lifts
/area/turbolift/cruise
	name = "\improper Cruise Ship Elevator"
	icon_state = "shuttle"
	requires_power = FALSE
	dynamic_lighting = TRUE
	sound_env = STANDARD_STATION
	ambience = AMBIENCE_INDOOR
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
	name = "\improper Ferry Boat"
	icon_state = "shuttle"

#undef AMBIENCE_EXTERIOR
#undef AMBIENCE_OUTDOOR
#undef AMBIENCE_INDOOR