
/obj/effect/shuttle_landmark/ferrydock
	name = "Nanotravel Ferry Dock"
	landmark_tag = "nav_cruise_ferry"
	docking_controller = "nt_ferry_dock"
	special_dock_targets = list(
		/datum/shuttle/autodock/ferry = "FERRY DOCK"
	)

/obj/effect/shuttle_landmark/escapedock
	name = "External Vessel Dock"
	landmark_tag = "nav_example_offsite"
	docking_controller = "escape_dock"
	special_dock_targets = list(

	)

/obj/effect/shuttle_landmark/cargodock
	name = "Supply Vessel Dock"
	landmark_tag = "nav_cruise_cargo"
	docking_controller = "cargo_dock"
	special_dock_targets = list(
		/datum/shuttle/autodock/ferry/example = "CARGO DOCK"
	)

/datum/shuttle/autodock/ferry
	name = "Nanotravel Ferry"
	shuttle_area = /area/shuttle/ferry
	dock_target = "cruise_shuttle_ferry"
	warmup_time = 10

	location = 0
	waypoint_station = "nav_cruise_ferry"
	waypoint_offsite = "nav_example_offsite"
	docking_cues = list(
		"STARBOARD" = "cruise_shuttle_ferry"
		"CARGO" = "cruise_shuttle_cargo"
	)
	ceiling_type = /turf/simulated/floor/shuttle_ceiling

/obj/abstract/turbolift_spawner/guests/
	name = "Cruise Ship elevator placeholder"
	icon = 'icons/obj/turbolift_preview_nowalls_3x3.dmi'
	depth = 3
	lift_size_x = 3
	lift_size_y = 3
	door_type =     null
	wall_type =     /turf/simulated/wall/walnut
	firedoor_type = null
	light_type =    null
	floor_type =  /turf/simulated/floor/wood/usedup
	button_type = /obj/structure/lift/button/standalone
	panel_type =  /obj/structure/lift/panel/standalone
	areas_to_use = list(
		/area/turbolift/cruise/fore/first,
		/area/turbolift/cruise/fore/second,
		/area/turbolift/cruise/fore/third
	)
	floor_departure_sound = 'sound/effects/lift_heavy_start.ogg'
	floor_arrival_sound = 'sound/effects/lift_heavy_stop.ogg'

/obj/abstract/turbolift_spawner/guests/north
	depth = 2
	areas_to_use = list(
		/area/turbolift/cruise/aft/first,
		/area/turbolift/cruise/aft/second,
		/area/turbolift/cruise/aft/third
	)
/obj/abstract/turbolift_spawner/guests/east