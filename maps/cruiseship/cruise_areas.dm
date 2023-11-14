#define AMBIENCE_OUTDOOR list(        \
	'sound/effects/wind/wind_2_1.ogg', \
	'sound/effects/wind/wind_2_2.ogg', \
	'sound/effects/wind/wind_3_1.ogg', \
	'sound/effects/wind/wind_4_1.ogg', \
	'sound/effects/wind/wind_4_2.ogg', \
	'sound/effects/wind/wind_5_1.ogg'  \
)
#define AMBIENCE_INDOOR list()
#define AMBIENCE_EXTERIOR AMBIENCE_OUTDOOR
#define ACCESS_CREW list(list( \
    access_engine,             \
    access_bridge,             \
    access_heads,              \
    access_medical,            \
    access_psychiatrist,       \
    access_security,           \
    access_cargo,              \
    access_kitchen,            \
    access_bar,                \
    access_janitor,            \
    access_hydroponics,        \
    access_chapel_office,      \
    access_lawyer,             \
    access_tcomsat,            \
    access_eva,                \
    access_maint_tunnels,      \
    access_library             \
))

/area/cruise
	holomap_color = HOLOMAP_AREACOLOR_CREW
	secure = TRUE
	//ambience = AMBIENCE_INDOOR
	is_outside = OUTSIDE_NO
	lightswitch = TRUE
	requires_power = FALSE //set back to true!!! this is for testing
	always_unpowered = FALSE

/area/cruise/exterior
	name = "\improper Sky"
	icon_state = "purple"
	area_flags = AREA_FLAG_IS_BACKGROUND | AREA_FLAG_EXTERNAL | AREA_FLAG_HIDE_FROM_HOLOMAP
	is_outside = OUTSIDE_YES
	ambience = AMBIENCE_EXTERIOR
	lightswitch = FALSE
	always_unpowered = TRUE

/area/cruise/outdoor
	is_outside = OUTSIDE_YES
	ambience = AMBIENCE_OUTDOOR
	icon_state = "green"

/area/cruise/exterior/sea
	name = "\improper Sea"
	icon_state = "blue2"

/area/cruise/exterior/chimney
	name = "\improper Funnel"
	icon_state = "engine_waste"

//Outdoor

/area/cruise/outdoor/top
	name = "\improper Cruise Ship Top Deck"

/area/cruise/outdoor/garden
	name = "\improper Outdoor Garden"
	icon_state = "garden"

/area/cruise/outdoor/balcony
	name = "\improper Balcony"

/area/cruise/outdoor/promenade
	name = "\improper Outdoor Promenade"

//Halls & Public

/area/cruise/hallway
	name = "\improper General Hallway"

/area/cruise/hallway/first
	name = "\improper Service Deck Hallway"
	icon_state = "hallA"

/area/cruise/hallway/first/parking
	name = "\improper Vehicle Deck"
	icon_state = "exit"
	sound_env = LARGE_ENCLOSED

/area/cruise/hallway/second
	name = "\improper Interior Promenade"
	icon_state = "hallF2"

/area/cruise/hallway/library
	name = "\improper Library"
	icon_state = "library"
	sound_env = MEDIUM_SOFTFLOOR

/area/cruise/arrivals
	name = "\improper Public Docking Area"
	icon_state = "shuttle3"
	is_outside = OUTSIDE_UNCERTAIN

/area/cruise/arrivals/emergencydock
	name = "\improper External Vessel Dock"
	icon_state = "shuttlered"

/area/cruise/arrivals/ferrydock
	name = "\improper NanoTravel Ferry Dock"
	icon_state = "shuttlegrn"

/area/cruise/arrivals/leisure
	name = "\improper Customers' Docking Area"
	icon_state = "research_dock"

/area/cruise/arrivals/leisuredock
	name = "\improper Customers' Docks"
	icon_state = "shuttlegrn2"

//Engineering

/area/cruise/engineering
	name = "\improper Engineering Department"
	icon_state = "engineering"
	ambience = list('sound/ambience/ambisin1.ogg','sound/ambience/ambisin2.ogg','sound/ambience/ambisin3.ogg','sound/ambience/ambisin4.ogg')
	req_access = list(access_engine)
	holomap_color = HOLOMAP_AREACOLOR_ENGINEERING

/area/cruise/engineering/engine
	is_outside = TRUE
	sound_env = LARGE_ENCLOSED

/area/cruise/engineering/engine/left
	name = "\improper Port Engine Area"

/area/cruise/engineering/engine/right
	name = "\improper Starboard Engine Area"

/area/cruise/engineering/foyer
	name = "\improper Engineering Foyer"
	icon_state = "engineering_foyer"

/area/cruise/engineering/locker_room
	name = "\improper Engineering Locker Room"
	icon_state = "engineering_locker"

/area/cruise/engineering/storage
	name = "Engineering Storage"
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
	name = "Medbay Reception"
	icon_state = "medbay"
	ambience = list('sound/ambience/signal.ogg')

/area/cruise/medical/medbay
	name = "\improper Chemical storage"
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
	name = "Medical Storage"
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
	icon_state = "security"

/area/cruise/security/lobby
	name = "\improper Security Lobby"

/area/cruise/security/brig
	name = "Security - Brig"
	icon_state = "sec_prison"
	req_access = list(access_brig)

/area/cruise/security/restroom
	name = "Security - Restroom"

/area/cruise/security/armory
	name = "Security - Armory"
	icon_state = "security_sub"
	req_access = list(access_armory)

/area/cruise/security/checkpoint
	name = "Security Checkpoint"
	icon_state = "checkpoint"

/area/cruise/security/vault
	name = "\improper Vault"
	icon_state = "nuke_storage"
	req_access = list(list(access_security, access_heads_vault))

//Cargo

/area/cruise/cargo
	name = "Provisions"
	icon_state = "quart"
	req_access = list(access_cargo)
	holomap_color = HOLOMAP_AREACOLOR_CARGO

/area/cruise/cargo/office
	name = "Provisions - Office"
	icon_state = "quartoffice"

/area/cruise/cargo/locker
	name = "Provisions - Locker Room"
	icon_state = "quart"

/area/cruise/cargo/storage
	name = "Provisions - Warehouse"
	icon_state = "quartstorage"
	sound_env = LARGE_ENCLOSED
	is_outside = OUTSIDE_UNCERTAIN

/area/cruise/cargo/main
	name = "Provisions - Docking Area"
	icon_state = "quart"
	is_outside = OUTSIDE_UNCERTAIN

/area/cruise/cargo/main/dock
	name = "Provisions - Dock"

//Hotel

/area/cruise/hotel
	name = "\improper NanoTravel Sea Resort"
	icon_state = "bar"

/area/cruise/hotel/hallway
	name = "Resort - Hallway"
	sound_env = MEDIUM_SOFTFLOOR
	icon_state = "entry_2"

/area/cruise/hotel/reception
	name = "Resort - Reception"
	icon_state = "entry_1"

/area/cruise/hotel/bottom
	name = "Resort - Spa Hallway"

/area/cruise/hotel/smoking
	name = "Resort - Smokers' Lounge"

	//Spa

/area/cruise/hotel/spa
	name = "\improper Spa"
	icon_state = "sauna"

/area/cruise/hotel/spa/sauna
	name = "\improper Sauna"

/area/cruise/hotel/spa/laundry

/area/cruise/hotel/spa/restroom
	name = "Spa - Showers"

	//Restaurant

/area/cruise/hotel/restaurant
	name = "\improper Sea Resort Restaurant"
	icon_state = "bar"

//Service

/area/cruise/kitchen
	name = "Resort - Galley"
	icon_state = "kitchen"

/area/cruise/kitchen/freezer
	name = "Provisions - Galley Freezer"
	//icon_state = "freezer"

/area/cruise/janitor
	name = "\improper Custodial Closet"
	icon_state = "janitor"

//Casino

/area/cruise/casino
	name = "\improper Casino"
	icon_state = "bar"

/area/cruise/casino/smoking
	name = "Casino - Smoking Area"

/area/cruise/casino/bar
	name = "Casino - Bar"
	//req_access = access_casino?

/area/cruise/casino/bar_storage
	name = "Casino - Bar Storage"

//Fitness

/area/cruise/gym
	name = "\improper Gym"
	icon_state = "fitness"
	//if(a config)
		//req_access = gym_club?

//Crew

/area/cruise/crew
	name = "\improper Crew Areas"
	icon_state = "crew_quarters"
	req_access = ACCESS_CREW

/area/cruise/crew/locker
	name = "\improper Locker Room"
	icon_state = "locker"

/area/cruise/crew/restrooms
	name = "\improper Dormitory Restrooms"
	icon_state = "toilet"
	sound_env = SMALL_ENCLOSED

/area/cruise/crew/hallway
	name = "\improper Technical Staff Hallway"
	icon_state = "engineering_break"

//Officers

/area/cruise/crew/heads
	icon_state = "captain"
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

//Maintenance

/area/cruise/maintenance
	area_flags = AREA_FLAG_RAD_SHIELDED
	sound_env = TUNNEL_ENCLOSED
	turf_initializer = /decl/turf_initializer/maintenance
	forced_ambience = list('sound/ambience/maintambience.ogg')
	req_access = list(access_maint_tunnels)
	holomap_color = HOLOMAP_AREACOLOR_MAINTENANCE

/area/cruise/maintenance/arrivals
	name = "Maintenance - Docking Areas"
	icon_state = "maint_arrivals"

/area/cruise/maintenance/bar
	name = "Maintenance - Bar"
	icon_state = "maint_bar"

/area/cruise/maintenance/casino
	name = "Maintenance - Casino"
	icon_state = "maint_bar"

/area/cruise/maintenance/cargo
	name = "Maintenance - Cargo"
	icon_state = "maint_cargo"

/area/cruise/maintenance/engineering
	name = "Maintenance - Engineering - Engines"
	icon_state = "maint_engineering"

/area/cruise/maintenance/engineering/right
	name = "Maintenance - Port - Engineering"

/area/cruise/maintenance/engineering/left
	name = "Maintenance - Starboard - Engineering"

/area/cruise/maintenance/dormitory
	name = "Maintenance - Starboard - Dormitory"
	icon_state = "maint_dormitory"

/area/cruise/maintenance/gym
	name = "Maintenance - Gym"
	icon_state = "maint_dormitory"

/area/cruise/maintenance/library
	name = "Maintenance - Library"
	icon_state = "maint_library"

/area/cruise/maintenance/locker
	name = "Maintenance - Technical Crew Break Room"
	icon_state = "maint_locker"

/area/cruise/maintenance/primary_storage
	name = "Maintenance - Starboard Aft - Miscellaneous"
	icon_state = "southwest"

/area/cruise/maintenance/medbay
	name = "Maintenance - Medbay/Security"
	icon_state = "maint_medbay"

/area/cruise/maintenance/security_starboard
	name = "Maintenance - Starboard - Security"
	icon_state = "maint_security_starboard"

/area/cruise/maintenance/disposal
	name = "Waste Disposal"
	icon_state = "disposal"

/area/cruise/maintenance/incinerator
	name = "\improper Incinerator"
	icon_state = "disposal"

/area/cruise/maintenance/ventilation
	name = "Ventilation Duct Maintenance"
	icon_state = "atmos"
	req_access = list(access_atmospherics)

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

/area/turbolift/cruise/first
	name = "Cruise Ship First Deck Elevator"
	base_turf = /turf/simulated/floor

/area/turbolift/cruise/second
	name = "Cruise Ship Second Deck Elevator"

/area/turbolift/cruise/third
	name = "Cruise Ship Third Deck Elevator"

/area/shuttle/ferry
	name = "\improper Ferry Boat"
	icon_state = "shuttle"

#undef AMBIENCE_EXTERIOR
#undef AMBIENCE_OUTDOOR
#undef AMBIENCE_INDOOR
#undef ACCESS_CREW