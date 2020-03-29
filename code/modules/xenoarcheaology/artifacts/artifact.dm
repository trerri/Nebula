/obj/structure/artifact
	name = "alien artifact"
	desc = "A large alien device."
	icon = 'icons/obj/xenoarchaeology.dmi'
	icon_state = "ano00"
	var/base_icon = "ano0"
	density = 1
	var/datum/artifact_effect/my_effect
	var/datum/artifact_effect/secondary_effect
	var/being_used = 0

/obj/structure/artifact/Initialize()
	. = ..()

	var/effecttype = pick(subtypesof(/datum/artifact_effect))
	my_effect = new effecttype(src)

	if(prob(75))
		effecttype = pick(subtypesof(/datum/artifact_effect))
		secondary_effect = new effecttype(src)
		if(prob(75))
			secondary_effect.ToggleActivate(0)

	START_PROCESSING(SSobj, src)

	var/list/styles = decls_repository.get_decls_of_type(/decl/artifact_appearance)
	var/decl/artifact_appearance/style = pick(styles)
	style = styles[style]
	style.apply_to(src)

/obj/structure/artifact/proc/is_active()
	for(var/datum/artifact_effect/effect in list(my_effect, secondary_effect))
		if(effect.activated)
			return TRUE
	return FALSE

/obj/structure/artifact/on_update_icon()
	icon_state = "[base_icon][is_active()]"

/obj/structure/artifact/Destroy()
	QDEL_NULL(my_effect)
	QDEL_NULL(secondary_effect)
	STOP_PROCESSING(SSobj, src)
	. = ..()

/obj/structure/artifact/proc/check_triggers(trigger_proc)
	. = FALSE
	for(var/datum/artifact_effect/effect in list(my_effect, secondary_effect))
		var/triggered = call(effect.trigger, trigger_proc)(arglist(args.Copy(2)))
		if(effect.trigger.toggle)
			if(triggered)
				effect.ToggleActivate(1)
				. = TRUE
		else if(effect.activated != triggered)
			effect.ToggleActivate(1)
			. = TRUE

/obj/structure/artifact/Process()
	var/turf/T = loc
	if(!istype(T)) 	// We're inside a container or on null turf, either way stop processing effects
		return

	for(var/obj/item/grab/G in grabbed_by)
		if(G.assailant)
			check_triggers(/datum/artifact_trigger/proc/on_touch, G.assailant)

	var/datum/gas_mixture/enivonment = T.return_air()
	if(enivonment.return_pressure() >= SOUND_MINIMUM_PRESSURE)
		check_triggers(/datum/artifact_trigger/proc/on_gas_exposure, enivonment)

	for(var/datum/artifact_effect/effect in list(my_effect, secondary_effect))
		effect.process()

/obj/structure/artifact/attack_robot(mob/living/user)
	if(!CanPhysicallyInteract(user))
		return
	check_triggers(/datum/artifact_trigger/proc/on_touch, user)

/obj/structure/artifact/attack_hand(mob/living/user)
	. = ..()
	visible_message("[user] touches \the [src].")
	check_triggers(/datum/artifact_trigger/proc/on_touch, user)

/obj/structure/artifact/attackby(obj/item/W, mob/living/user)
	. = ..()
	check_triggers(/datum/artifact_trigger/proc/on_hit, W, user)

/obj/structure/artifact/Bumped(M)
	..()
	check_triggers(/datum/artifact_trigger/proc/on_bump, M)

/obj/structure/artifact/bullet_act(var/obj/item/projectile/P)
	check_triggers(/datum/artifact_trigger/proc/on_hit, P)

/obj/structure/artifact/ex_act(severity)
	if(check_triggers(/datum/artifact_trigger/proc/on_explosion, severity))
		return
	switch(severity)
		if(1) 
			qdel(src)
		if(2)
			if (prob(50))
				qdel(src)

/obj/structure/artifact/Move()
	..()
	if(my_effect)
		my_effect.UpdateMove()
	if(secondary_effect)
		secondary_effect.UpdateMove()
