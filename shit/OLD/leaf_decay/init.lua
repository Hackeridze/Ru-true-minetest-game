-- leaf_decay (Minetest 0.4 mod)
-- Decaying leaves after a tree is chopped down
-- Copyright 2011 Mark Holmquist, licensed under the GPLv3

-- NOTE: It is recommended that you add a line to your mapgen.cpp
--       if you want leaf decay to work with sapling-grown trees.
--       Specifically, under the following line:
--           MapNode applenode(LEGN(ndef, "CONTENT_APPLE"));
--       in mapgen.cpp, the function make_tree, you should add:
--           leavesnode.param2 = 1;

math.randomseed(os.time())

tree_types = {}
tree_distance = {}

register_tree_type = function(type, distance)
   tree_types[type] = true
   tree_distance[type] = distance
end

register_tree_type("default:tree", 2)
register_tree_type("default:jungletree", 3)

minetest.register_on_generated(function(minp, maxp)
				  for x=minp.x,maxp.x do
				     for y=minp.y,maxp.y do
					for z=minp.z,maxp.z do
					   local test_p = {x=x, y=y, z=z}
					   local test_node = minetest.env:get_node(test_p)
					   if not test_node.param2 == 1 and test_node.name == "default:leaves" then
					      test_node.param2 = 1
					      minetest.env:add_node(test_p, test_node)
					   end
					end
				     end
				  end
			       end
			      )

minetest.register_entity("leaf_decay:sapling",
             {
                physical = true,
                collisionbox = {-0.5, -0.5, -0.5, 0.5, 0.5, 0.5},
                visual = "sprite",
                textures = {"default_sapling.png"},
		on_activate = function(self, staticdata) self.object:setacceleration({x=0, y=-4, z=0}) end,
		on_punch = function(self, hitter)
		   self.object:remove()
		   hitter:add_to_inventory("node default:sapling 1")
		end,
             })

minetest.register_entity("leaf_decay:apple",
             {
                physical = true,
                collisionbox = {-0.5, -0.5, -0.5, 0.5, 0.5, 0.5},
                visual = "sprite",
                textures = {"default_apple.png"},
		on_activate = function(self, staticdata) self.object:setacceleration({x=0, y=-4, z=0}) end,
		on_punch = function(self, hitter)
		   self.object:remove()
		   hitter:add_to_inventory("craft default:apple 1")
		end,
             })

minetest.register_abm({
			 nodenames = {"default:leaves"},
			 interval = 30.0,
			 chance = 20,
			 action = function(pos, node, active_object_count, active_object_count_wider)
             if (math.random(1,5) > 2) then return 0; end
			    --if not (node.param2 == 1) then
			    --   return false
			    --end
			    local DISTANCE = 3
			    local found_tree = false

			    for x=-DISTANCE,DISTANCE do
			       for y=-DISTANCE,DISTANCE do
				  for z=-DISTANCE,DISTANCE do
				     local test_p = {x=pos.x+x, y=pos.y+y, z=pos.z+z}
				     local test_node = minetest.env:get_node(test_p)
				     if tree_types[test_node.name] then
                                        local nx = x < 0 and -x or x
                                        local ny = y < 0 and -y or y
                                        local nz = z < 0 and -z or z
                                        local maxd = tree_distance[test_node.name]
                                        if nx <= maxd and ny <= maxd and nz <= maxd then
                                        found_tree = true
                                           break
                                        end
				     end
				  end
				  if found_tree then break end
			       end
			       if found_tree then break end
			    end
			    if not found_tree then
			       minetest.env:remove_node(pos)
			       if math.random(1,100) <= 5 then
				  local new_p = {x=(pos.x + (math.random(1,100)*.01)), y=(pos.y + (math.random(1,100)*.01)), z=(pos.z + (math.random(1,100)*.01))}
				  minetest.env:add_entity(new_p, "leaf_decay:sapling")
			       end
			    end
			 end,
		      })

minetest.register_abm({
			 nodenames = {"default:apple"},
			 interval = 30.0,
			 chance = 15,
			 action = function(pos, node, active_object_count, active_object_count_wider)
			    local DISTANCE = 1
			    local found_leaf = false
			    for x=-DISTANCE,DISTANCE do
			       for y=-DISTANCE,DISTANCE do
				  for z=-DISTANCE,DISTANCE do
				     local test_p = {x=pos.x+x, y=pos.y+y, z=pos.z+z}
				     local test_node = minetest.env:get_node(test_p)
				     if test_node.name == "default:leaves" then
					found_leaf = true
					break
				     end
				  end
				  if found_leaf then break end
			       end
			       if found_leaf then break end
			    end
			    if not found_leaf then
			       minetest.env:remove_node(pos)
			       local new_p = {x=(pos.x + (math.random(1,100)*.003)), y=(pos.y + (math.random(1,100)*.003)), z=(pos.z + (math.random(1,100)*.003))}
			       minetest.env:add_entity(new_p, "leaf_decay:apple")
			    end
			 end,
		      })


print("[Leaf Decay] Loaded!")
