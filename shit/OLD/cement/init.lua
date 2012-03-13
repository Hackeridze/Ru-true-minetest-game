local CEMENT = {
	"normal",
    "rose",
	"dandelion_yellow",
	"dandelion_white",
	"tulip",
	"viola",
}

minetest.alias_node("home_mod:normal_stone", "default:stone")
minetest.alias_node("home_mod:rose_stone", "home_mod:red_stone")
minetest.alias_node("home_mod:dandelion_yellow_stone", "home_mod:yellow_stone")
minetest.alias_node("home_mod:dandelion_white_stone", "home_mod:white_stone")
minetest.alias_node("home_mod:tulip_stone", "home_mod:orange_stone")
minetest.alias_node("home_mod:viola_stone", "home_mod:violet_stone")



minetest.register_craft({
	output = 'node "cement:aggregate_cement_normal" 1',
	recipe = {
		{'craft "moreores:calcium_oxide"', 'craft "moreores:calcium_oxide"', 'craft "moreores:calcium_oxide"'},
		{'craft "moarcraft:ash"', 'craft "moarcraft:ash"', 'craft "moarcraft:ash"'},
	}
})


minetest.register_craft({
	output = 'node "cement:aggregate_cement_normal" 1',
	recipe = {
		{'craft "moarcraft:ash"', 'craft "moarcraft:ash"', 'craft "moarcraft:ash"'},
		{'craft "moreores:calcium_oxide"', 'craft "moreores:calcium_oxide"', 'craft "moreores:calcium_oxide"'},
	}
})

	minetest.register_node('cement:aggregate_cement_normal', {
	    tile_images = { 'cement_normal_aggregate.png'},
	    inventory_image = minetest.inventorycube( 'cement_normal_aggregate.png'),
	    is_ground_content = true,
	    material = minetest.digprop_gravellike(1.5),
	})

-- registering falling nodes
for _, color in ipairs(CEMENT) do
    local cname = 'cement_' .. color
    default.register_falling_node("cement:aggregate_" .. cname, "cement_" .. cname .. "aggregate.png")
end -- registering falling nodes end


    minetest.register_craft({
	    output = 'craft "cement:bucket_cement_normal" 1',
	    recipe = {
		    {'node "default:gravel" 1','node "cement:aggregate_cement_normal" 1','node "default:sand" 1'},
		    {'node "default:gravel" 1','node "cement:aggregate_cement_normal"','node "default:sand" 1'},
		    {'','craft "bucket:bucket_water" 1',''},
	    }
    })

    minetest.register_craft({
	    output = 'craft "cement:bucket_cement_normal" 1',
	    recipe = {
		    {'node "default:sand" 1','node "cement:aggregate_cement_normal" 1','node "default:gravel" 1'},
		    {'node "default:sand" 1','node "cement:aggregate_cement_normal"','node "default:gravel" 1'},
		    {'','craft "bucket:bucket_water" 1',''},
	    }
    })

-- registering cement buckets crafts nodes
for _, color in ipairs(CEMENT) do
    local cname = 'cement_' .. color

    
    minetest.register_craft({
	    output = 'craft "cement:bucket_' .. cname .. '" 1',
	    recipe = {
            {'craft "home_mod:' .. color .. '_petal"'},
		    {'craft "cement:bucket_cement_normal"'},
	    }
    })
    minetest.register_craft({
	    output = 'craft "cement:bucket_' .. cname .. '" 1',
	    recipe = {
		    {'craft "cement:bucket_cement_normal"'},
            {'craft "home_mod:' .. color .. '_petal"'},	    
        }
    })
end -- registering cement buckets crafts end

-- registering cement buckets 
for _, color in ipairs(CEMENT) do
    local cname = 'cement_' .. color

    minetest.register_craftitem("cement:bucket_".. cname, {
	    image = cname .. "_bucket.png",
	    stack_max = 1,
	    on_place_on_ground = minetest.craftitem_place_item,
	    on_use = function(item, player, pointed_thing)
		    if pointed_thing.type == "node" then
			    minetest.env:add_node(pointed_thing.above, {name="cement:" .. cname .. "source"})
			    player:add_to_inventory_later('craft "bucket:bucket_empty" 1')
			    return true
		    end
		    return false
	    end,
    })
end -- registering cement buckets end


CEMENT_VISC = 20

-- registering cement sources
for _, color in ipairs(CEMENT) do
    local cname = 'cement_' .. color
    minetest.register_node("cement:" .. cname .. "source", {
	    drawtype = "liquid",
	    tile_images = {"cement_" .. color .. "_block.png"},
	    inventory_image = minetest.inventorycube("cement_" .. color .. "_block.png"),
	    walkable = false,
	    pointable = false,
	    diggable = false,
	    buildable_to = true,
	    liquidtype = "source",
	    liquid_alternative_flowing = "cement:" .. cname .. "flowing",
	    liquid_alternative_source = "cement:" .. cname .. "source",
	    liquid_viscosity = CEMENT_VISC,
	    special_materials = {
		    -- New-style cement source material (WTF does this even mean?)
		    {image= cname .. "_block.png", backface_culling=false},
	    },
    })
end -- registering cement sources end

-- registering cement flowing
for _, color in ipairs(CEMENT) do
    local cname = 'cement_' .. color
    minetest.register_node("cement:" .. cname .. "flowing", {
	    drawtype = "flowingliquid",
	    tile_images = {"cement_" .. color .. "_block.png"},
	    inventory_image = minetest.inventorycube("cement_" .. color .. "_block.png"),
	    walkable = false,
	    pointable = false,
	    diggable = false,
	    buildable_to = true,
	    liquidtype = "flowing",
	    liquid_alternative_flowing = "cement:".. cname .. "flowing",
	    liquid_alternative_source = "cement:" .. cname .. "source",
	    liquid_viscosity = CEMENT_VISC,
	    damage_per_second = CEMENT_DAMAGE,
	    special_materials = {
		    -- I do not understand this and I won't even try.
		    {image= cname .. "_block.png", backface_culling=false},
		    {image= cname .. "_block.png", backface_culling=true},
	    },
    })
end -- registering cement flowing end

-- registering cement abms flowing
for _, color in ipairs(CEMENT) do
    local cname = 'cement_' .. color

    minetest.register_abm(
    {nodenames = {"cement:" .. cname .. "flowing"},
    interval = 15.0,  -- fast-setting cement should hinder griefing
    chance = 1,
    action = function(pos, node, active_object_count, active_object_count_wider)
	    if (node.param2 > 1) then
		    minetest.env:add_node(pos, {name="home_mod:" .. color .. "_stone"})
	    end
    end
    })
end -- registering cement abms flowing end

-- registering cement abms source
for _, color in ipairs(CEMENT) do
    local cname = 'cement_' .. color

    minetest.register_abm(
    {nodenames = {"cement:" .. cname .."source"},
    interval = 15,
    chance = 1,
    action = function(pos, node, active_object_count, active_object_count_wider)
    	minetest.env:add_node(pos, {name="home_mod:" .. color .. "_stone"})
    end
    })
end -- registering cement abms flowing end
--[[
-- registering cement concrete
for _, color in ipairs(CEMENT) do
    local cname = 'cement_' .. color

    minetest.register_node("cement:concrete_" .. color .."_block", {
	    tile_images = { cname .. "_concrete.png"},
	    inventory_image = minetest.inventorycube( cname .. "_concrete.png"),
	    is_ground_content = true,
	    material = minetest.digprop_stonelike(3.0),
	    dug_item = 'node "cobble" 2',
    })
end -- registering cement concrete end ]]
print("[Cement] Loaded!")
