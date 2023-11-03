//Food
/datum/job/bartender
	title = "Bartender"
	department_types = list(/decl/department/service)
	total_positions = 1
	spawn_positions = 1
	supervisors = "the head of personnel"
	access = list(
		access_hydroponics,
		access_bar,
		access_kitchen
	)
	minimal_access = list(access_bar)
	alt_titles = list("Barista")
	outfit_type = /decl/hierarchy/outfit/job/service/bartender
	min_skill = list(
		SKILL_LITERACY  = SKILL_ADEPT,
		SKILL_COOKING   = SKILL_BASIC,
	    SKILL_BOTANY    = SKILL_BASIC,
	    SKILL_CHEMISTRY = SKILL_BASIC
	)

/datum/job/chef
	title = "Chef"
	department_types = list(/decl/department/service)
	total_positions = 2
	spawn_positions = 2
	supervisors = "the head of personnel"
	access = list(
		access_hydroponics,
		access_bar,
		access_kitchen
	)
	minimal_access = list(access_kitchen)
	alt_titles = list("Cook")
	outfit_type = /decl/hierarchy/outfit/job/service/chef
	min_skill = list(
		SKILL_LITERACY  = SKILL_ADEPT,
		SKILL_COOKING   = SKILL_ADEPT,
	    SKILL_BOTANY    = SKILL_BASIC,
	    SKILL_CHEMISTRY = SKILL_BASIC
	)

/datum/job/hydro
	title = "Gardener"
	department_types = list(/decl/department/service)
	total_positions = 2
	spawn_positions = 1
	supervisors = "the head of personnel"
	access = list(
		access_hydroponics,
		access_bar,
		access_kitchen
	)
	minimal_access = list(access_hydroponics)
	outfit_type = /decl/hierarchy/outfit/job/service/gardener
	min_skill = list(
		SKILL_LITERACY  = SKILL_ADEPT,
		SKILL_BOTANY    = SKILL_BASIC,
	    SKILL_CHEMISTRY = SKILL_BASIC
	)
	event_categories = list(ASSIGNMENT_GARDENER)
