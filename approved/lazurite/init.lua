addore("lazurite","lazurite_ore","Lazurite ore",
                "default_stone.png^lazurite_ore.png",minetest.digprop_stonelike(1.6),
                {"default:pick_steel","gold:pick_gold", "default:pick_mese"},
                10,
                15,{
                    x = 4,
                    y = 2,
                    z = 2,
                },
                -31000,-300,
                "lazurite", "Lazurite", "dye_blue.png", 4)
                
minetest.register_node("lazurite:lazurite_block", {
    description = "Block of lazurite",
    tile_images = {"lazurite_block.png"},
    is_ground_content = true,
    material = minetest.digprop_stonelike(1.2),
})

minetest.register_craft({
    output = 'lazurite:lazurite_block',
    recipe = {
        { 'lazurite:lazurite','lazurite:lazurite','lazurite:lazurite'},
        { 'lazurite:lazurite','lazurite:lazurite','lazurite:lazurite'},
        { 'lazurite:lazurite','lazurite:lazurite','lazurite:lazurite'},
    }
})
