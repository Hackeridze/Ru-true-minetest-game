addore("gold","gold_ore","Gold ore",
                "default_stone.png^gold_ore.png",minetest.digprop_stonelike(0.9),
                {"default:pick_steel","gold:pick_gold", "default:pick_mese"},
                1,
                10,{
                    x = 4,
                    y = 2,
                    z = 4,
                },
                -31000,-200,
                "gold_nugget", "Gold Nugget", "gold_nugget.png", 1)

register_tool_type("gold", "Gold", "gold", "gold:gold_ingot", 0.5, 80, {sword_speed = -0.4})

minetest.register_craftitem("gold:gold_ingot", {
    description = "Gold Ingot",
    image = "gold_ingot.png"
})
minetest.register_node("gold:gold_block", {
    description = "Gold Block",
    tile_images = {"gold_block.png"},
    is_ground_content = true,
    material = minetest.digprop_stonelike(0.8),
})
minetest.register_craft({
    output = 'gold:gold_block',
    recipe = {
        { 'gold:gold_ingot','gold:gold_ingot','gold:gold_ingot'},
        { 'gold:gold_ingot','gold:gold_ingot','gold:gold_ingot'},
        { 'gold:gold_ingot','gold:gold_ingot','gold:gold_ingot'},
    }
})
minetest.register_craft({
    type = "shapeless",
    type = "cooking",
    output = "gold:gold_ingot",
    recipe = "gold:gold_nugget",
    cooktime = 7,
})
minetest.register_craft({
    output = 'gold:gold_ingot 9',
    recipe = {
        { 'gold:gold_block'},
    }
})

minetest.register_craft({
    output = 'default:steel_ingot 9',
    recipe = {
        { 'default:steel_block'},
    }
})
