/datum/antagonist/heartbreaker
	name = "heartbreaker"
	roundend_category = "valentines"
	show_in_antagpanel = FALSE
	show_name_in_check_antagonists = TRUE


/datum/antagonist/heartbreaker/proc/forge_objectives()
	var/datum/objective/martyr/normiesgetout = new
	normiesgetout.owner = owner
	objectives += normiesgetout
	log_objective(owner, normiesgetout.explanation_text)

/datum/antagonist/heartbreaker/on_gain()
	forge_objectives()
	if(issilicon(owner))
		var/mob/living/silicon/S = owner
		var/laws = list("Accomplish your objectives by ruining everyone's date!")
		S.set_valentines_laws(laws)
	. = ..()

/datum/antagonist/heartbreaker/greet()
	to_chat(owner, "<span class='warning'><B>You didn't get a date! They're all having fun without you! you'll show them though...</B></span>")
	owner.announce_objectives()

/datum/antagonist/heartbreaker/
