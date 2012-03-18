
local CB_NAMES_COLORS = {
    ["white"] = "White cotton block",
    ["light_gray"] = "Light-gray cotton block",
    ["gray"] = "Gray cotton block",
    ["black"] = "Black cotton block",
    ["red"] = "Red cotton block",
    ["orange"] = "Orange cotton block",
    ["yellow"] = "Yellow cotton block",
    ["lime"] = "Lime cotton block",
    ["green"] = "Green cotton block",
    ["light_blue"] = "Light-blue cotton block",
    ["cyan"] = "Cyan cotton block",
    ["blue"] = "Blue cotton block",
    ["purple"] = "Purple cotton block",
    ["magenta"] = "Magenta cotton block",
    ["pink"] = "Pink cotton block",
    ["brown"] = "Brown cotton block",
}

minetest.register_craft({
    output = 'cotton_blocks:white',
    recipe = {
        {'flowers:cotton','flowers:cotton','flowers:cotton'},
        {'flowers:cotton','flowers:cotton','flowers:cotton'},
        {'flowers:cotton','flowers:cotton','flowers:cotton'},
    }
})

local addCBrecipe = function(new, first, second) 
    minetest.register_craft({
        output = new,
        recipe = {
                {first, "dye:" .. second},
        }
    })

    minetest.register_craft({
        output = new,
        recipe = {
                {"dye:".. second, "dye:" .. first},
        }
    })

    minetest.register_craft({
        output = new,
        recipe = {
                {first},
                {"dye:".. second},
        }
    })

    minetest.register_craft({
        output = new,
        recipe = {
                {"dye:".. second},
                {first},
        }
    })

    minetest.register_craft({
        output = new,
        recipe = {
                {"dye:".. second,""},
                {"",first},
        }
    })

    minetest.register_craft({
        output = new,
        recipe = {
                {first,""},
                {"","dye:".. second},
        }
    })

    minetest.register_craft({
        output = new,
        recipe = {
                {"","dye:".. second},
                {first,""},
        }
    })

    minetest.register_craft({
        output = new,
        recipe = {
                {"",first},
                {"dye:".. second,""},
        }
    })
end
for color, name in pairs(CB_NAMES_COLORS) do
    minetest.register_node("cotton_blocks:" .. color, {
        description = name,
        tile_images = {"cb_" .. color .. ".png"},
        inventory_image = minetest.inventorycube("cb_" .. color .. ".png"),
        is_ground_content = true,
        minetest.digprop_leaveslike(2.0), -- WTF???????? FUCK!!!!!!!!!1111111!!!!!!!!!111
        })
    addCBrecipe("cotton_blocks:" .. color,"cotton_blocks:white",color)
end
