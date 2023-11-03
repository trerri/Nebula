/datum/job/tourist
	title = "Tourist"
	total_positions = -1
	spawn_positions = -1
	supervisors = "your conscience"
	description = "You need to goof off, have fun, and be silly."
	economic_power = 1
	access = list()
	minimal_access = list()
	outfit_type = /decl/hierarchy/outfit/job/tourist

/decl/hierarchy/outfit/job/tourist
	name = "Job - Cruise Ship Tourist"

	id_hud_icons = 'maps/cruiseship/hud.dmi'

/datum/job/chaplain
	title = "Chaplain"
	department_types = list(/decl/department/civilian)
	total_positions = 1
	spawn_positions = 1
	supervisors = "the head of personnel"
	access = list(
		access_morgue,
		access_chapel_office,
		access_crematorium,
		access_maint_tunnels
	)
	minimal_access = list(
		access_morgue,
		access_chapel_office,
		access_crematorium
	)
	outfit_type = /decl/hierarchy/outfit/job/chaplain
	is_holy = TRUE
	min_skill = list(
		SKILL_LITERACY = SKILL_ADEPT,
		SKILL_FINANCE  = SKILL_BASIC
	)
	skill_points = 20
	software_on_spawn = list(/datum/computer_file/program/reports)
