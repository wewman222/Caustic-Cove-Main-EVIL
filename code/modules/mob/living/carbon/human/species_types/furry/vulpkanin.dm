/datum/species/vulpkanin
	name = "Vulpkanin"
	id = "vulpkanin"
	//flavor_text = "A fully-furred bipedal fox. Most enjoy meats, and fried foods, but will eat just about anything."
	default_color = "444"
	species_traits = list(
		MUTCOLORS,
		EYECOLOR,
		LIPS,
		HAIR,
	)
	inherent_biotypes = MOB_ORGANIC|MOB_HUMANOID
	attack_verb = "slash"
	//attack_sound = 'sound/weapons/slash.ogg'
	//miss_sound = 'sound/weapons/slashmiss.ogg'
	liked_food = GROSS | MEAT | FRIED
	changesource_flags = MIRROR_BADMIN | WABBAJACK | MIRROR_MAGIC | MIRROR_PRIDE | ERT_SPAWN | RACE_SWAP | SLIME_EXTRACT
	limbs_icon_m = 'icons/mob/species/vulp_m.dmi'
	limbs_icon_f = 'icons/mob/species/vulp_f.dmi'
	//limbs_icon = 'icons/mob/species/mammal_parts_greyscale.dmi'
	//limbs_id = "mammal"

	organs = list(
		ORGAN_SLOT_HAIR = /obj/item/organ/hair/head,
		ORGAN_SLOT_FACIAL_HAIR = /obj/item/organ/hair/facial,
		ORGAN_SLOT_BRAIN = /obj/item/organ/brain,
		ORGAN_SLOT_HEART = /obj/item/organ/heart,
		ORGAN_SLOT_LUNGS = /obj/item/organ/lungs,
		ORGAN_SLOT_EYES = /obj/item/organ/eyes,
		ORGAN_SLOT_EARS = /obj/item/organ/ears/vulpkanin,
		ORGAN_SLOT_TONGUE = /obj/item/organ/tongue,
		ORGAN_SLOT_LIVER = /obj/item/organ/liver,
		ORGAN_SLOT_STOMACH = /obj/item/organ/stomach,
		ORGAN_SLOT_APPENDIX = /obj/item/organ/appendix,
		ORGAN_SLOT_TAIL = /obj/item/organ/tail/vulpkanin,
		ORGAN_SLOT_SNOUT = /obj/item/organ/snout/vulpkanin,
		)
	organ_customizers = list(
		/datum/organ_customizer/eyes/humanoid,
		/datum/organ_customizer/hair/head/humanoid,
		/datum/organ_customizer/hair/facial/humanoid,
		/datum/organ_customizer/tail/vulpkanin,
		/datum/organ_customizer/snout/vulpkanin,
		)
	body_marking_sets = list(
		/datum/body_marking_set/fox,
		/datum/body_marking_set/floof,
		/datum/body_marking_set/floofer,
	)
	body_markings = list(
		/datum/body_marking/tattoo/heart,
		/datum/body_marking/tattoo/hive,
		/datum/body_marking/tattoo/nightling,
		/datum/body_marking/tattoo/circuit,
		/datum/body_marking/tattoo/silverburgh,
		/datum/body_marking/tattoo/tiger,
		/datum/body_marking/tattoo/tiger_groin,
		/datum/body_marking/tattoo/tiger_foot,
	)
	offset_features = list(
		OFFSET_ID = list(0,1), OFFSET_GLOVES = list(0,1), OFFSET_WRISTS = list(0,1),\
		OFFSET_CLOAK = list(0,1), OFFSET_FACEMASK = list(0,1), OFFSET_HEAD = list(0,1), \
		OFFSET_FACE = list(0,1), OFFSET_BELT = list(0,1), OFFSET_BACK = list(0,1), \
		OFFSET_NECK = list(0,1), OFFSET_MOUTH = list(0,1), OFFSET_PANTS = list(0,1), \
		OFFSET_SHIRT = list(0,1), OFFSET_ARMOR = list(0,1), OFFSET_HANDS = list(0,1), OFFSET_UNDIES = list(0,1), \
		OFFSET_ID_F = list(0,-1), OFFSET_GLOVES_F = list(0,0), OFFSET_WRISTS_F = list(0,0), OFFSET_HANDS_F = list(0,0), \
		OFFSET_CLOAK_F = list(0,0), OFFSET_FACEMASK_F = list(0,-1), OFFSET_HEAD_F = list(0,-1), \
		OFFSET_FACE_F = list(0,-1), OFFSET_BELT_F = list(0,-1), OFFSET_BACK_F = list(0,-1), \
		OFFSET_NECK_F = list(0,-1), OFFSET_MOUTH_F = list(0,-1), OFFSET_PANTS_F = list(0,0), \
		OFFSET_SHIRT_F = list(0,0), OFFSET_ARMOR_F = list(0,0), OFFSET_UNDIES_F = list(0,0), \
		OFFSET_FACE_FEATURE = list(0,1), OFFSET_FACE_FEATURE_F = list(0,0),
		)
	
/datum/species/vulpkanin/check_roundstart_eligible()
	return TRUE


/datum/species/vulpkanin/get_random_features()
	var/list/returned = MANDATORY_FEATURE_LIST
	var/main_color
	var/second_color
	var/random = rand(1,5)
	//Choose from a variety of mostly brightish, animal, matching colors
	switch(random)
		if(1)
			main_color = "FFAA00"
			second_color = "FFDD44"
		if(2)
			main_color = "FF8833"
			second_color = "FFAA33"
		if(3)
			main_color = "FFCC22"
			second_color = "FFDD88"
		if(4)
			main_color = "FF8800"
			second_color = "FFFFFF"
		if(5)
			main_color = "999999"
			second_color = "EEEEEE"
	returned["mcolor"] = main_color
	returned["mcolor2"] = second_color
	returned["mcolor3"] = second_color
	return returned

/datum/species/vulpkanin/get_random_body_markings(list/passed_features)
	return assemble_body_markings_from_set(GLOB.body_marking_sets_by_type[pick(body_marking_sets)], passed_features, src)
