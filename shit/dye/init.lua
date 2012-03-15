--Colors mod for RTMMP


--Public colors for mods:
DYE_COLORS = {
	"white",
	"light_gray",
	"gray",
	"black",
	"red",
	"orange",
	"yellow",
	"lime",
	"green",
	"light_blue",
	"cyan",
	"blue",
	"purple",
	"magenta",
	"pink",
	"brown",
}


-- Dyes
minetest.register_craftitem("dye:white", {
	description = "White dye",
	inventory_image = "dye_white.png",
})

minetest.register_craftitem("dye:light_gray", {
	description = "Light gray dye",
	inventory_image = "dye_light_gray.png",
})

minetest.register_craftitem("dye:gray", {
	description = "Gray dye",
	inventory_image = "dye_gray.png",
})

minetest.register_craftitem("dye:black", {
	description = "Black dye",
	inventory_image = "dye_black.png",
})

minetest.register_craftitem("dye:red", {
	description = "Red dye",
	inventory_image = "dye_red.png",
})

minetest.register_craftitem("dye:orange", {
	description = "Orange dye",
	inventory_image = "dye_orange.png",
})

minetest.register_craftitem("dye:yellow", {
	description = "Yellow dye",
	inventory_image = "dye_yellow.png",
})

minetest.register_craftitem("dye:lime", {
	description = "Lime dye",
	inventory_image = "dye_lime.png",
})

minetest.register_craftitem("dye:green", {
	description = "Green dye",
	inventory_image = "dye_green.png",
})

minetest.register_craftitem("dye:light_blue", {
	description = "Light blue dye",
	inventory_image = "dye_light_blue.png",
})

minetest.register_craftitem("dye:cyan", {
	description = "Cyan dye",
	inventory_image = "dye_cyan.png",
})

minetest.register_craftitem("dye:blue", {
	description = "Blue dye",
	inventory_image = "dye_blue.png",
})

minetest.register_craftitem("dye:purple", {
	description = "Purple dye",
	inventory_image = "dye_purple.png",
})

minetest.register_craftitem("dye:magenta", {
	description = "Magenta dye",
	inventory_image = "dye_magenta.png",
})

minetest.register_craftitem("dye:pink", {
	description = "Pink dye",
	inventory_image = "dye_pink.png",
})

minetest.register_craftitem("dye:brown", {
	description = "Brown dye",
	inventory_image = "dye_brown.png",
})


--Dye recipes
local addSMrecipe = function(new, first, second) 
	minetest.register_craft({
		output = 'dye:' .. new ..' 2',
		recipe = {
				{'dye:'.. first, 'dye:' .. second},
		}
	})
	
	minetest.register_craft({
		output = 'dye:' .. new ..' 2',
		recipe = {
				{'dye:'.. second, 'dye:' .. first},
		}
	})
	
	minetest.register_craft({
		output = 'dye:' .. new ..' 2',
		recipe = {
				{'dye:'.. first},
				{'dye:'.. second},
		}
	})
	
	minetest.register_craft({
		output = 'dye:' .. new ..' 2',
		recipe = {
				{'dye:'.. second},
				{'dye:'.. first},
		}
	})
		
	minetest.register_craft({
		output = 'dye:' .. new ..' 2',
		recipe = {
				{'dye:'.. second,''},
				{'','dye:'.. first},
		}
	})
		
	minetest.register_craft({
		output = 'dye:' .. new ..' 2',
		recipe = {
				{'dye:'.. first,''},
				{'','dye:'.. second},
		}
	})
	
	minetest.register_craft({
		output = 'dye:' .. new ..' 2',
		recipe = {
				{'','dye:'.. second},
				{'dye:'.. first,''},
		}
	})	
	
	minetest.register_craft({
		output = 'dye:' .. new ..' 2',
		recipe = {
				{'','dye:'.. first},
				{'dye:'.. second,''},
		}
	})
end

--second
addSMrecipe('orange','red','yellow')
minetest.register_craft({
	output = 'dye:orange 1',
	recipe = {
			{'flowers:tulip'},
	}
})
addSMrecipe('cyan','green','blue')
addSMrecipe('purple','red','blue')
minetest.register_craft({
	output = 'dye:purple 1',
	recipe = {
			{'flowers:viola'},
	}
})
addSMrecipe('gray','black','white')
addSMrecipe('light_blue','white','blue')
addSMrecipe('pink','red','white')
addSMrecipe('lime','green','white')

--third
addSMrecipe('magenta','purple','pink')
addSMrecipe('light_gray','gray','white')

--first
minetest.register_craft({
	output = 'dye:red 1',
	recipe = {
			{'flowers:rose'},
	}
})
minetest.register_craft({
	output = 'dye:white 1',
	recipe = {
			{'flowers:dandelion_white'},
	}
})
minetest.register_craft({
	output = 'dye:yellow 1',
	recipe = {
			{'flowers:dandelion_yellow'},
	}
})
minetest.register_craft({
    type = "cooking",
    output = "dye:green",
    recipe = "default:cactus",
    cooktime = 5,
})
minetest.register_craft({
	output = 'dye:brown 2', -- because bric is big
	recipe = {
			{'default:clay_brick'},
	}
})
minetest.register_craft({
	output = 'dye:black 1',
	recipe = {
			{'default:scorched_stuff'},
	}
})






