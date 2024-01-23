/obj/machinery/floodlight
	name = "emergency floodlight"
	icon = 'icons/obj/machines/floodlight.dmi'
	icon_state = "flood00"
	density = TRUE
	obj_flags = OBJ_FLAG_ROTATABLE
	construct_state = /decl/machine_construction/default/panel_closed
	uncreated_component_parts = null
	required_interaction_dexterity = DEXTERITY_SIMPLE_MACHINES

	active_power_usage = 200
	power_channel = LIGHT
	use_power = POWER_USE_OFF

	//better laser, increased brightness & power consumption
	var/l_power = 4 //brightness of light when on, can be negative
	var/l_range = 12 //outer range of light when on, can be negative

	base_type = /obj/machinery/floodlight

/obj/machinery/floodlight/on_update_icon()
	icon_state = "flood[panel_open ? "o" : ""][panel_open && get_cell() ? "b" : ""]0[use_power == POWER_USE_ACTIVE]"

/obj/machinery/floodlight/power_change()
	. = ..()
	if(!. || !use_power) return

	if(stat & NOPOWER)
		turn_off(1)
		return

	// If the cell is almost empty rarely "flicker" the light. Aesthetic only.
	if(prob(30))
		set_light(l_range, l_power / 2)
		spawn(20)
			if(use_power)
				set_light(l_range, l_power)

// Returns 0 on failure and 1 on success
/obj/machinery/floodlight/proc/turn_on(var/loud = 0)
	if(stat & NOPOWER)
		return 0

	set_light(l_range, l_power)
	update_use_power(POWER_USE_ACTIVE)
	use_power_oneoff(active_power_usage)//so we drain cell if they keep trying to use it
	if(loud)
		visible_message("\The [src] turns on.")
		playsound(src.loc, 'sound/effects/flashlight.ogg', 50, 0)
	return 1

/obj/machinery/floodlight/proc/turn_off(var/loud = 0)
	set_light(0)
	update_use_power(POWER_USE_OFF)
	if(loud)
		visible_message("\The [src] shuts down.")
		playsound(src.loc, 'sound/effects/flashlight.ogg', 50, 0)

/obj/machinery/floodlight/interface_interact(mob/user)
	if(!CanInteract(user, DefaultTopicState()))
		return FALSE
	if(use_power)
		turn_off(1)
	else
		if(!turn_on(1))
			to_chat(user, "You try to turn on \the [src] but it does not work.")
			playsound(src.loc, 'sound/effects/flashlight.ogg', 50, 0)

	update_icon()
	return TRUE

/obj/machinery/floodlight/RefreshParts()//if they're insane enough to modify a floodlight, let them
	..()
	var/light_mod = clamp(total_component_rating_of_type(/obj/item/stock_parts/capacitor), 0, 10)
	l_power = light_mod? light_mod*0.01 + initial(l_power) : initial(l_power)/2 //gives us between 0.8-0.9 with capacitor, or 0.4 without one
	l_range = light_mod*1.5 + initial(l_range)
	change_power_consumption(initial(active_power_usage) * light_mod , POWER_USE_ACTIVE)
	if(use_power)
		set_light(l_range, l_power)

/obj/machinery/floodlight/on
	anchored = TRUE

/obj/machinery/floodlight/on/Initialize(ml = 1)
	.=..()
	turn_on(1)