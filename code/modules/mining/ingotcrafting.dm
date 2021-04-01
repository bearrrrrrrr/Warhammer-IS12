
/*
   _____            __ _   _
  / ____|          / _| | (_)
 | |     _ __ __ _| |_| |_ _ _ __   __ _
 | |    | '__/ _` |  _| __| | '_ \ / _` |
 | |____| | | (_| | | | |_| | | | | (_| |
  \_____|_|  \__,_|_|  \__|_|_| |_|\__, |
                                    __/ |
                                   |___/
*/

/*
   _____
  / ____|
 | |     ___  _ __  _ __   ___ _ __
 | |    / _ \| '_ \| '_ \ / _ \ '__|
 | |___| (_) | |_) | |_) |  __/ |
  \_____\___/| .__/| .__/ \___|_|
             | |   | |
             |_|   |_|
*/


/obj/item/ingots/copperingot/attackby(obj/item/device/W as obj, mob/user as mob)
	if(isAutochisel(W))
		user.setClickCooldown(DEFAULT_ATTACK_COOLDOWN)

		var/craftingchoices = list("Mg08 Ammo", "Stormrider Ammo", "Trench Shovel",) //lists all possible crafting choices


		var/craftchoice = input("Choose what to craft", "Available crafts") as null|anything in craftingchoices

		switch(craftchoice)
			if("Mg08 Ammo")
				visible_message("[user]'s auto-chisel moves in a blur over [src], morphing the shape and marking it as future MG-08 ammo.")
				playsound(src, 'sound/effects/autochisel.ogg', 100, 1, 1)
				src.whatwemaking = 1
				src.ismarked = 1
				src.name = "Copper Ingot (Marked MG-08 Ammo)"
			if("Stormrider Ammo")
				visible_message("[user]'s auto-chisel moves in a blur over [src], morphing the shape and marking it as future Stormrider Ammo.")
				playsound(src, 'sound/effects/autochisel.ogg', 100, 1, 1)
				src.whatwemaking = 2
				src.ismarked = 1
				src.name = "Copper Ingot (Marked Stormrider Ammo)"
			if("Trench Shovel")
				visible_message("[user]'s auto-chisel moves in a blur over [src], morphing the shape and marking it as a future trench shovel.")
				playsound(src, 'sound/effects/autochisel.ogg', 100, 1, 1)
				src.whatwemaking = 3
				src.ismarked = 1
				src.name = "Copper Ingot (Marked Trench Shovel)"

	if(isLasercutter(W))
		if(ismarked == 0)
			visible_message("Use your auto-chisel first!")
			return

		switch(whatwemaking)

			if(1)
				if(prob(25))
					user.setClickCooldown(DEFAULT_ATTACK_COOLDOWN)
					visible_message("[user] carefully carves the ingot into blessed MG-08 Rounds! Now take the ingot and dip it into the holy oil!")
					src.rubtheoils = 1
					src.name = "Copper Ingot (Carved MG-08 Ammo)"
					playsound(src, 'sound/effects/lasercutter.ogg', 100, 1, 1)
				else
					user.setClickCooldown(DEFAULT_ATTACK_COOLDOWN)
					visible_message("[user] cuts way at the ingot, it will take a few more passes until we're done!")
					playsound(src, 'sound/effects/lasercutter.ogg', 100, 1, 1)
			if(2)
				if(prob(25))
					user.setClickCooldown(DEFAULT_ATTACK_COOLDOWN)
					visible_message("[user] carefully carves the ingot into blessed Stormrider rounds! Now take the ingot and dip it into the holy oil!")
					src.rubtheoils = 1
					src.name = "Copper Ingot (Carved Stormrider Ammo)"
					playsound(src, 'sound/effects/lasercutter.ogg', 100, 1, 1)
				else
					user.setClickCooldown(DEFAULT_ATTACK_COOLDOWN)
					visible_message("[user] cuts way at the ingot, it will take a few more passes until we're done!")
					playsound(src, 'sound/effects/lasercutter.ogg', 100, 1, 1)
			if(3)
				if(prob(25))
					user.setClickCooldown(DEFAULT_ATTACK_COOLDOWN)
					visible_message("[user] carefully carves the ingot into a blessed trench shovel! Now take the ingot and dip it into the holy oil!")
					src.rubtheoils = 1
					src.name = "Copper Ingot (Carved Trench Shovel)"
					playsound(src, 'sound/effects/lasercutter.ogg', 100, 1, 1)
				else
					user.setClickCooldown(DEFAULT_ATTACK_COOLDOWN)
					visible_message("[user] cuts way at the ingot, it will take a few more passes until we're done!")
					playsound(src, 'sound/effects/lasercutter.ogg', 100, 1, 1)


	if(isHolyoils(W))
		if(rubtheoils == 0)
			visible_message("Use your laser cutter first!")
			return

		switch(whatwemaking)

			if(1)
				playsound(src, 'sound/voice/blessing.ogg', 100, 0, 1)
				visible_message("As the carvings are lathered with the holy oil they begin to take their intended shape!")
				new /obj/item/ammo_magazine/box/a556/mg08(src.loc)
				new /obj/item/ammo_magazine/box/a556/mg08(src.loc)
				qdel(src)
				return
			if(2)
				playsound(src, 'sound/voice/blessing.ogg', 100, 0, 1)
				visible_message("As the carvings are lathered with the holy oil they begin to take their intended shape!")
				new /obj/item/ammo_magazine/brifle(src.loc)
				new /obj/item/ammo_magazine/brifle(src.loc)
				qdel(src)
				return
			if(3)
				playsound(src, 'sound/voice/blessing.ogg', 100, 0, 1)
				visible_message("As the carvings are lathered with the holy oil they begin to take their intended shape!")
				new /obj/item/shovel(src.loc)
				new /obj/item/shovel(src.loc)
				qdel(src)
				return

/*
  _____
 |_   _|
   | |  _ __ ___  _ __
   | | | '__/ _ \| '_ \
  _| |_| | | (_) | | | |
 |_____|_|  \___/|_| |_|

*/

/obj/item/ingots/ironingot/attackby(obj/item/device/W as obj, mob/user as mob)
	if(isAutochisel(W))
		user.setClickCooldown(DEFAULT_ATTACK_COOLDOWN)

		var/craftingchoices = list("Mark I Stormrider", "Mark I Snapper",) //lists all possible crafting choices


		var/craftchoice = input("Choose what to craft", "Available crafts") as null|anything in craftingchoices

		switch(craftchoice)
			if("Mark I Stormrider")
				visible_message("[user]'s auto-chisel moves in a blur over [src], morphing the shape and marking it as a future Mark I Stormrider.")
				playsound(src, 'sound/effects/autochisel.ogg', 100, 1, 1)
				src.whatwemaking = 1
				src.ismarked = 1
				src.name = "Iron Ingot (Mark I Stormrider)"
			if("Mark I Snapper")
				visible_message("[user]'s auto-chisel moves in a blur over [src], morphing the shape and marking it as a future Mark I Snapper.")
				playsound(src, 'sound/effects/autochisel.ogg', 100, 1, 1)
				src.whatwemaking = 2
				src.ismarked = 1
				src.name = "Iron Ingot (Mark I Snapper)"

	if(isLasercutter(W))
		if(ismarked == 0)
			visible_message("Use your auto-chisel first!")
			return

		switch(whatwemaking)

			if(1)
				if(prob(25))
					user.setClickCooldown(DEFAULT_ATTACK_COOLDOWN)
					visible_message("[user] carefully carves the ingot into a blessed Mark I Stormrider! Now take the ingot and dip it into the holy oil!")
					src.rubtheoils = 1
					src.name = "Iron Ingot (Carved Mark I Stormrider Body)"
					playsound(src, 'sound/effects/lasercutter.ogg', 100, 1, 1)
				else
					user.setClickCooldown(DEFAULT_ATTACK_COOLDOWN)
					visible_message("[user] cuts way at the ingot, it will take a few more passes until we're done!")
					playsound(src, 'sound/effects/lasercutter.ogg', 100, 1, 1)
			if(2)
				if(prob(25))
					user.setClickCooldown(DEFAULT_ATTACK_COOLDOWN)
					visible_message("[user] carefully carves the ingot into a blessed Mark I Snapper! Now take the ingot and dip it into the holy oil!")
					src.rubtheoils = 1
					src.name = "Iron Ingot (Carved Mark I Snapper)"
					playsound(src, 'sound/effects/lasercutter.ogg', 100, 1, 1)
				else
					user.setClickCooldown(DEFAULT_ATTACK_COOLDOWN)
					visible_message("[user] cuts way at the ingot, it will take a few more passes until we're done!")
					playsound(src, 'sound/effects/lasercutter.ogg', 100, 1, 1)


	if(isHolyoils(W))
		if(rubtheoils == 0)
			visible_message("Use your laser cutter first!")
			return

		switch(whatwemaking)

			if(1)
				playsound(src, 'sound/voice/blessing.ogg', 100, 0, 1)
				visible_message("As the carvings are lathered with the holy oil they begin to take their intended shape!")
				new /obj/item/gun/projectile/shotgun/pump/boltaction/shitty(src.loc)
				qdel(src)
				return
			if(2)
				playsound(src, 'sound/voice/blessing.ogg', 100, 0, 1)
				visible_message("As the carvings are lathered with the holy oil they begin to take their intended shape!")
				new /obj/item/gun/projectile/shotgun/pump/boltaction/shitty/leverchester(src.loc)
				qdel(src)
				return

/*            _                             _   _
     /\      | |                           | | (_)
    /  \   __| | __ _ _ __ ___   __ _ _ __ | |_ _ _   _ _ __ ___
   / /\ \ / _` |/ _` | '_ ` _ \ / _` | '_ \| __| | | | | '_ ` _ \
  / ____ \ (_| | (_| | | | | | | (_| | | | | |_| | |_| | | | | | |
 /_/    \_\__,_|\__,_|_| |_| |_|\__,_|_| |_|\__|_|\__,_|_| |_| |_|

*/

/obj/item/ingots/adamantiumingot/attackby(obj/item/device/W as obj, mob/user as mob)
	if(isAutochisel(W))
		user.setClickCooldown(DEFAULT_ATTACK_COOLDOWN)

		var/craftingchoices = list("Locke Pattern Bolt-Rifle",) //lists all possible crafting choices


		var/craftchoice = input("Choose what to craft", "Available crafts") as null|anything in craftingchoices

		switch(craftchoice)
			if("Locke Pattern Bolt-Rifle")
				visible_message("[user]'s auto-chisel moves in a blur over [src], morphing the shape and marking it as a future Locke Pattern Bolt Rifle.")
				playsound(src, 'sound/effects/autochisel.ogg', 100, 1, 1)
				src.whatwemaking = 1
				src.ismarked = 1
				src.name = "Adamantium Ingot (Locke Pattern Bolter)"

	if(isLasercutter(W))
		if(ismarked == 0)
			visible_message("Use your auto-chisel first!")
			return

		switch(whatwemaking)

			if(1)
				if(prob(25))
					user.setClickCooldown(DEFAULT_ATTACK_COOLDOWN)
					visible_message("[user] carefully carves the ingot into a blessed Locke Pattern Bolt Rifle! Now take the ingot and dip it into the holy oil!")
					src.rubtheoils = 1
					src.name = "Adamantium Ingot (Carved Locke Pattern Bolt Rifle)"
					playsound(src, 'sound/effects/lasercutter.ogg', 100, 1, 1)
				else
					user.setClickCooldown(DEFAULT_ATTACK_COOLDOWN)
					visible_message("[user] cuts way at the ingot, it will take a few more passes until we're done!")
					playsound(src, 'sound/effects/lasercutter.ogg', 100, 1, 1)


	if(isHolyoils(W))
		if(rubtheoils == 0)
			visible_message("Use your laser cutter first!")
			return

		switch(whatwemaking)

			if(1)
				playsound(src, 'sound/voice/blessing.ogg', 100, 0, 1)
				visible_message("As the carvings are lathered with the holy oil they begin to take their intended shape!")
				new /obj/item/gun/projectile/lockebolter(src.loc)
				qdel(src)
				return