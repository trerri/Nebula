/decl/department/engineering
	name = "Engineering"
	announce_channel = "Engineering"
	colour = "#ffa500"
	display_priority = 4
	display_color = "#fff5cc"

/obj/machinery/network/pager/engineering
	department = /decl/department/engineering

/decl/department/security
	name = "Security"
	announce_channel = "Security"
	colour = "#dd0000"
	display_priority = 3
	display_color = "#ffddf0"

/obj/machinery/network/pager/security
	department = /decl/department/security

/decl/department/medical
	name = "Medical"
	goals = list(/datum/goal/department/medical_fatalities)
	announce_channel = "Medical"
	colour = "#008000"
	display_priority = 2
	display_color = "#ffeef0"

/obj/machinery/network/pager/medical
	department = /decl/department/medical

/decl/department/entertainment
	name = "Entertainment"
	announce_channel = "Entertainment"
	colour = "#bb0368"
	display_color = "#e250a1"

/obj/machinery/network/pager/entertainment
	department = /decl/department/entertainment

/decl/department/civilian
	name = "Civilian"
	display_priority = 1
	display_color = "#dddddd"

/decl/department/command
	name = "Command"
	colour = "#800080"
	display_priority = 5
	display_color = "#ccccff"

/obj/machinery/network/pager
	department = /decl/department/command

/decl/department/miscellaneous
	name = "Misc"
	display_priority = -1
	display_color = "#ccffcc"

/decl/department/service
	name = "Service"
	announce_channel = "Service"
	colour = "#88b764"
	display_color = "#d0f0c0"

/decl/department/supply
	name = "Supply"
	announce_channel = "Supply"
	colour = "#bb9040"
	display_color = "#f0e68c"

/obj/machinery/network/pager/cargo
	department = /decl/department/supply

/decl/department/support
	name = "Support"
	announce_channel = "Command"
	colour = "#800080"
	display_color = "#87ceeb"
