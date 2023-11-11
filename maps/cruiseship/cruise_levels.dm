
/datum/level_data/cruise
    base_turf = /turf/exterior/open
	base_area = /area/cruise/exterior
    level_flags = ZLEVEL_PLAYER
    use_global_exterior_ambience = FALSE
    ambient_light_level = 1
    ambient_light_color = "#ffffff"
    exterior_atmosphere = list(
        /decl/material/gas/oxygen =   MOLES_O2STANDARD,
        /decl/material/gas/nitrogen = MOLES_N2STANDARD
    )

/datum/level_data/cruise/sea
	base_turf = /turf/exterior/water
	base_area = /area/cruise/exterior/sea

/obj/abstract/level_data_spawner/cruise/sea
    level_data_type = /datum/level_data/cruise/sea

/obj/abstract/level_data_spawner/cruise
    level_data_type = /datum/level_data/cruise