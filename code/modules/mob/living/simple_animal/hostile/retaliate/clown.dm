/mob/living/simple_animal/hostile/retaliate/clown
	name = "clown"
	desc = "A denizen of clown planet"
	icon = 'icons/mob/simple_animal/clown.dmi'
	speak_chance = 0
	turns_per_move = 5
	speak = list("HONK", "Honk!", "Welcome to clown planet!")
	emote_see = list("honks")
	speak_chance = 1
	a_intent = I_HURT
	stop_automated_movement_when_pulled = 0
	mob_default_max_health = 75
	speed = -1
	harm_intent_damage = 8
	can_escape = TRUE
	minbodytemp = 270
	maxbodytemp = 370
	heat_damage_per_tick = 15	//amount of damage applied if animal's body temperature is higher than maxbodytemp
	cold_damage_per_tick = 10	//same as heat_damage_per_tick, only if the bodytemperature it's lower than minbodytemp
	unsuitable_atmos_damage = 10
	natural_weapon = /obj/item/natural_weapon/clown
	faction = "circus"

/obj/item/natural_weapon/clown
	name = "bike horn"
	force = 10
	hitsound = 'sound/items/bikehorn.ogg'
