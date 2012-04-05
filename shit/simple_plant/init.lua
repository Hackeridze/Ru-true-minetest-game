minetest.register_craftitem('simple_plant:seed0', {
    inventory_image = 'seed0.png',
    stack_max = 99,
    usable = true,
    on_use = function(itemstack, user, pointed_thing)
        -- Must be pointing to node
        if pointed_thing.type == 'node' then
            n = minetest.env:get_node(pointed_thing.under)
            if n.name == 'default:dirt_with_grass' then
                minetest.env:add_node(pointed_thing.above, {name='simple_plant:splant1'})
            end
            itemstack:take_item()
        end
        return itemstack
    end,
})

register_plant_with_full_stages({
    {   
        name = 'simple_plant:splant1',
        time = 0.5,
        image = 'stage1.png',
        drop = '',
        groups = {snappy=3},
        chance = 0.7
    },
    {   
        name = 'simple_plant:splant2',
        time = 0.5,
        image = 'stage2.png',
        drop = 'default:iron_lump',
        groups = {snappy=3},
        chance = 0.7
    },
    {   
        name = 'simple_plant:splant3',
        time = 0.5,
        image = 'stage3.png',
        drop = '',
        groups = {snappy=3},
        chance = 0.7
    },            
    {
        name = 'simple_plant:splant4',
        time = 0.5,
        image = 'stage4.png',
        drop = 'default:clay_brick 4',
        groups = {snappy=3},
        chance = 0.4
    },
})
---------------------
register_simple_plant('simple_plant:n', 'Odd flower', 6, 0.5, 'n', 'simple_plant:n_seed 5')

minetest.register_craftitem('simple_plant:n_seed', {
    description = 'N seed',
    inventory_image = 'n_seed.png',
    stack_max = 99,
    usable = true,
    on_use = function(itemstack, user, pointed_thing)
        -- Must be pointing to node
        if pointed_thing.type == 'node' then
            n = minetest.env:get_node(pointed_thing.under)
            if n.name == 'default:dirt_with_grass' then
                minetest.env:add_node(pointed_thing.above, {name='simple_plant:n1'})
            end
            itemstack:take_item()
        end
        return itemstack
    end,
})