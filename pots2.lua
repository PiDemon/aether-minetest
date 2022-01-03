local function particle2(pos)
			minetest.add_particlespawner({
				amount = 50,
				time = 2,
				minpos = {x=pos.x-0.5, y=pos.y, z=pos.z-0.5},
				maxpos = {x=pos.x+0.5, y=pos.y+3, z=pos.z+0.5},
				minvel = {x=0, y=-0.5, z=-0},
				maxvel = {x=0, y=2, z=0},
				minexptime=3,
				maxexptime=5,
				minsize=1,
				maxsize=6,
				texture = "aether_smoke.png",
			})
end
--mese pots
--95
minetest.register_node("aether_new:pot_m_95", {
		description = "Obsidian Pot (95% Pure Mese)",
		tiles = {{name = "aether_obsidian.png^(aether_pot.png^[colorize:#ffeb3b:90)", animation = {type = "vertical_frames", aspect_w = 16, aspect_h = 16, length = 2}},"default_obsidian.png", "default_obsidian.png","default_obsidian.png","default_obsidian.png","default_obsidian.png"},
		drawtype = "nodebox",
		node_box = {
			type = "fixed",
			fixed = {
				{-0.5, -0.5, -0.5, 0.5, 6/16, 0.5},
				{-0.5, -0.5, -0.5, 0.5, 0.5, -7/16},
				{0.5, 0.5, 0.5, -0.5, -0.5, 7/16},
				{0.5, 0.5, 0.5, 7/16, -0.5, -0.5},
				{-0.5, -0.5, -0.5, -7/16, 0.5, 0.5},
			},
		},
		groups = {cracky = 1},
		on_construct = function(pos)
				local check = pos
				local thing = "false"
				check.z=check.z+1
				if minetest.get_node(check).name ~= "default:lava_source" then  thing = "true"  end
				check.x=check.x+1
				if minetest.get_node(check).name ~= "default:lava_source" then  thing = "true"  end
				check.z=check.z-1
				if minetest.get_node(check).name ~= "default:lava_source" then  thing = "true"  end
				check.z=check.z-1
				if minetest.get_node(check).name ~= "default:lava_source" then  thing = "true"  end
				check.x=check.x-1
				if minetest.get_node(check).name ~= "default:lava_source" then  thing = "true"  end
				check.x=check.x-1
				if minetest.get_node(check).name ~= "default:lava_source" then  thing = "true"  end
				check.z=check.z+1
				if minetest.get_node(check).name ~= "default:lava_source" then  thing = "true"  end
				check.z=check.z+1
				if minetest.get_node(check).name ~= "default:lava_source" then  thing = "true"  end
				pos.x = pos.x+1
				pos.z = pos.z-1
				if thing == "true" then
					minetest.dig_node(pos)
				else 
					local timer = minetest.get_node_timer(pos)
					timer:start(10)			
				end
		end,
		on_timer = function(pos)
			particle2(pos)
			minetest.set_node(pos, {name = "aether_new:pot_m_96_2"})
		end
})
--96
minetest.register_node("aether_new:pot_m_96_2", {
		description = "Obsidian Pot (96% Pure Mese, Half Full)",
		tiles = {{name = "aether_obsidian.png^(aether_pot.png^[colorize:#ffeb3b:70)", animation = {type = "vertical_frames", aspect_w = 16, aspect_h = 16, length = 2}},"default_obsidian.png", "default_obsidian.png","default_obsidian.png","default_obsidian.png","default_obsidian.png"},
		drawtype = "nodebox",
		node_box = {
			type = "fixed",
			fixed = {
				{-0.5, -0.5, -0.5, 0.5, 3/16, 0.5},
				{-0.5, -0.5, -0.5, 0.5, 0.5, -7/16},
				{0.5, 0.5, 0.5, -0.5, -0.5, 7/16},
				{0.5, 0.5, 0.5, 7/16, -0.5, -0.5},
				{-0.5, -0.5, -0.5, -7/16, 0.5, 0.5},
			},
		},
		groups = {cracky = 1},
		on_construct = function(pos)
				local check = pos
				local thing = "false"
				check.z=check.z+1
				if minetest.get_node(check).name ~= "default:lava_source" then  thing = "true"  end
				check.x=check.x+1
				if minetest.get_node(check).name ~= "default:lava_source" then  thing = "true"  end
				check.z=check.z-1
				if minetest.get_node(check).name ~= "default:lava_source" then  thing = "true"  end
				check.z=check.z-1
				if minetest.get_node(check).name ~= "default:lava_source" then  thing = "true"  end
				check.x=check.x-1
				if minetest.get_node(check).name ~= "default:lava_source" then  thing = "true"  end
				check.x=check.x-1
				if minetest.get_node(check).name ~= "default:lava_source" then  thing = "true"  end
				check.z=check.z+1
				if minetest.get_node(check).name ~= "default:lava_source" then  thing = "true"  end
				check.z=check.z+1
				if minetest.get_node(check).name ~= "default:lava_source" then  thing = "true"  end
				pos.x = pos.x+1
				pos.z = pos.z-1	
				if thing == "true" then
					minetest.dig_node(pos)
				end				
		end,
		on_rightclick = function(pos, node, clicker, itemstack)
			if itemstack:get_name() == "aether_new:pot_m_96_2" then 
				local inv = clicker:get_inventory()
				itemstack:take_item()
				inv:add_item("main", "aether_new:pot")
				minetest.set_node(pos, {name = "aether_new:pot_m_96"}) 
			end
		end
})
minetest.register_node("aether_new:pot_m_96", {
		description = "Obsidian Pot (96% Pure Mese)",
		tiles = {{name = "aether_obsidian.png^(aether_pot.png^[colorize:#ffeb3b:70)", animation = {type = "vertical_frames", aspect_w = 16, aspect_h = 16, length = 2}},"default_obsidian.png", "default_obsidian.png","default_obsidian.png","default_obsidian.png","default_obsidian.png"},
		drawtype = "nodebox",
		node_box = {
			type = "fixed",
			fixed = {
				{-0.5, -0.5, -0.5, 0.5, 6/16, 0.5},
				{-0.5, -0.5, -0.5, 0.5, 0.5, -7/16},
				{0.5, 0.5, 0.5, -0.5, -0.5, 7/16},
				{0.5, 0.5, 0.5, 7/16, -0.5, -0.5},
				{-0.5, -0.5, -0.5, -7/16, 0.5, 0.5},
			},
		},
		groups = {cracky = 1},
		on_construct = function(pos)
				local check = pos
				local thing = "false"
				check.z=check.z+1
				if minetest.get_node(check).name ~= "default:lava_source" then  thing = "true"  end
				check.x=check.x+1
				if minetest.get_node(check).name ~= "default:lava_source" then  thing = "true"  end
				check.z=check.z-1
				if minetest.get_node(check).name ~= "default:lava_source" then  thing = "true"  end
				check.z=check.z-1
				if minetest.get_node(check).name ~= "default:lava_source" then  thing = "true"  end
				check.x=check.x-1
				if minetest.get_node(check).name ~= "default:lava_source" then  thing = "true"  end
				check.x=check.x-1
				if minetest.get_node(check).name ~= "default:lava_source" then  thing = "true"  end
				check.z=check.z+1
				if minetest.get_node(check).name ~= "default:lava_source" then  thing = "true"  end
				check.z=check.z+1
				if minetest.get_node(check).name ~= "default:lava_source" then  thing = "true"  end
				pos.x = pos.x+1
				pos.z = pos.z-1
				if thing == "true" then
					minetest.dig_node(pos)
				else 
					local timer = minetest.get_node_timer(pos)
					timer:start(10)			
				end
		end,
		on_timer = function(pos)
			particle2(pos)
			minetest.set_node(pos, {name = "aether_new:pot_m_97_2"})
		end
})
--97
minetest.register_node("aether_new:pot_m_97_2", {
		description = "Obsidian Pot (97% Pure Mese, Half Full)",
		tiles = {{name = "aether_obsidian.png^(aether_pot.png^[colorize:#ffeb3b:50)", animation = {type = "vertical_frames", aspect_w = 16, aspect_h = 16, length = 2}},"default_obsidian.png", "default_obsidian.png","default_obsidian.png","default_obsidian.png","default_obsidian.png"},
		drawtype = "nodebox",
		node_box = {
			type = "fixed",
			fixed = {
				{-0.5, -0.5, -0.5, 0.5, 3/16, 0.5},
				{-0.5, -0.5, -0.5, 0.5, 0.5, -7/16},
				{0.5, 0.5, 0.5, -0.5, -0.5, 7/16},
				{0.5, 0.5, 0.5, 7/16, -0.5, -0.5},
				{-0.5, -0.5, -0.5, -7/16, 0.5, 0.5},
			},
		},
		groups = {cracky = 1},
		on_construct = function(pos)
				local check = pos
				local thing = "false"
				check.z=check.z+1
				if minetest.get_node(check).name ~= "default:lava_source" then  thing = "true"  end
				check.x=check.x+1
				if minetest.get_node(check).name ~= "default:lava_source" then  thing = "true"  end
				check.z=check.z-1
				if minetest.get_node(check).name ~= "default:lava_source" then  thing = "true"  end
				check.z=check.z-1
				if minetest.get_node(check).name ~= "default:lava_source" then  thing = "true"  end
				check.x=check.x-1
				if minetest.get_node(check).name ~= "default:lava_source" then  thing = "true"  end
				check.x=check.x-1
				if minetest.get_node(check).name ~= "default:lava_source" then  thing = "true"  end
				check.z=check.z+1
				if minetest.get_node(check).name ~= "default:lava_source" then  thing = "true"  end
				check.z=check.z+1
				if minetest.get_node(check).name ~= "default:lava_source" then  thing = "true"  end
				pos.x = pos.x+1
				pos.z = pos.z-1	
				if thing == "true" then
					minetest.dig_node(pos)
				end				
		end,
		on_rightclick = function(pos, node, clicker, itemstack)
			if itemstack:get_name() == "aether_new:pot_m_97_2" then 
				local inv = clicker:get_inventory()
				itemstack:take_item()
				inv:add_item("main", "aether_new:pot")
				minetest.set_node(pos, {name = "aether_new:pot_m_97"}) 
			end
		end
})
minetest.register_node("aether_new:pot_m_97", {
		description = "Obsidian Pot (97% Pure Mese)",
		tiles = {{name = "aether_obsidian.png^(aether_pot.png^[colorize:#ffeb3b:50)", animation = {type = "vertical_frames", aspect_w = 16, aspect_h = 16, length = 2}},"default_obsidian.png", "default_obsidian.png","default_obsidian.png","default_obsidian.png","default_obsidian.png"},
		drawtype = "nodebox",
		node_box = {
			type = "fixed",
			fixed = {
				{-0.5, -0.5, -0.5, 0.5, 6/16, 0.5},
				{-0.5, -0.5, -0.5, 0.5, 0.5, -7/16},
				{0.5, 0.5, 0.5, -0.5, -0.5, 7/16},
				{0.5, 0.5, 0.5, 7/16, -0.5, -0.5},
				{-0.5, -0.5, -0.5, -7/16, 0.5, 0.5},
			},
		},
		groups = {cracky = 1},
		on_construct = function(pos)
				local check = pos
				local thing = "false"
				check.z=check.z+1
				if minetest.get_node(check).name ~= "default:lava_source" then  thing = "true"  end
				check.x=check.x+1
				if minetest.get_node(check).name ~= "default:lava_source" then  thing = "true"  end
				check.z=check.z-1
				if minetest.get_node(check).name ~= "default:lava_source" then  thing = "true"  end
				check.z=check.z-1
				if minetest.get_node(check).name ~= "default:lava_source" then  thing = "true"  end
				check.x=check.x-1
				if minetest.get_node(check).name ~= "default:lava_source" then  thing = "true"  end
				check.x=check.x-1
				if minetest.get_node(check).name ~= "default:lava_source" then  thing = "true"  end
				check.z=check.z+1
				if minetest.get_node(check).name ~= "default:lava_source" then  thing = "true"  end
				check.z=check.z+1
				if minetest.get_node(check).name ~= "default:lava_source" then  thing = "true"  end
				pos.x = pos.x+1
				pos.z = pos.z-1
				if thing == "true" then
					minetest.dig_node(pos)
				else 
					local timer = minetest.get_node_timer(pos)
					timer:start(10)			
				end
		end,
		on_timer = function(pos)
			particle2(pos)
			minetest.set_node(pos, {name = "aether_new:pot_m_98_2"})
		end
})
--98
minetest.register_node("aether_new:pot_m_98_2", {
		description = "Obsidian Pot (98% Pure Mese, Half Full)",
		tiles = {{name = "aether_obsidian.png^(aether_pot.png^[colorize:#ffeb3b:30)", animation = {type = "vertical_frames", aspect_w = 16, aspect_h = 16, length = 2}},"default_obsidian.png", "default_obsidian.png","default_obsidian.png","default_obsidian.png","default_obsidian.png"},
		drawtype = "nodebox",
		node_box = {
			type = "fixed",
			fixed = {
				{-0.5, -0.5, -0.5, 0.5, 3/16, 0.5},
				{-0.5, -0.5, -0.5, 0.5, 0.5, -7/16},
				{0.5, 0.5, 0.5, -0.5, -0.5, 7/16},
				{0.5, 0.5, 0.5, 7/16, -0.5, -0.5},
				{-0.5, -0.5, -0.5, -7/16, 0.5, 0.5},
			},
		},
		groups = {cracky = 1},
		on_construct = function(pos)
				local check = pos
				local thing = "false"
				check.z=check.z+1
				if minetest.get_node(check).name ~= "default:lava_source" then  thing = "true"  end
				check.x=check.x+1
				if minetest.get_node(check).name ~= "default:lava_source" then  thing = "true"  end
				check.z=check.z-1
				if minetest.get_node(check).name ~= "default:lava_source" then  thing = "true"  end
				check.z=check.z-1
				if minetest.get_node(check).name ~= "default:lava_source" then  thing = "true"  end
				check.x=check.x-1
				if minetest.get_node(check).name ~= "default:lava_source" then  thing = "true"  end
				check.x=check.x-1
				if minetest.get_node(check).name ~= "default:lava_source" then  thing = "true"  end
				check.z=check.z+1
				if minetest.get_node(check).name ~= "default:lava_source" then  thing = "true"  end
				check.z=check.z+1
				if minetest.get_node(check).name ~= "default:lava_source" then  thing = "true"  end
				pos.x = pos.x+1
				pos.z = pos.z-1	
				if thing == "true" then
					minetest.dig_node(pos)
				end				
		end,
		on_rightclick = function(pos, node, clicker, itemstack)
			if itemstack:get_name() == "aether_new:pot_m_98_2" then 
				local inv = clicker:get_inventory()
				itemstack:take_item()
				inv:add_item("main", "aether_new:pot")
				minetest.set_node(pos, {name = "aether_new:pot_m_98"}) 
			end
		end
})
minetest.register_node("aether_new:pot_m_98", {
		description = "Obsidian Pot (98% Pure Mese)",
		tiles = {{name = "aether_obsidian.png^(aether_pot.png^[colorize:#ffeb3b:30)", animation = {type = "vertical_frames", aspect_w = 16, aspect_h = 16, length = 2}},"default_obsidian.png", "default_obsidian.png","default_obsidian.png","default_obsidian.png","default_obsidian.png"},
		drawtype = "nodebox",
		node_box = {
			type = "fixed",
			fixed = {
				{-0.5, -0.5, -0.5, 0.5, 6/16, 0.5},
				{-0.5, -0.5, -0.5, 0.5, 0.5, -7/16},
				{0.5, 0.5, 0.5, -0.5, -0.5, 7/16},
				{0.5, 0.5, 0.5, 7/16, -0.5, -0.5},
				{-0.5, -0.5, -0.5, -7/16, 0.5, 0.5},
			},
		},
		groups = {cracky = 1},
		on_construct = function(pos)
				local check = pos
				local thing = "false"
				check.z=check.z+1
				if minetest.get_node(check).name ~= "default:lava_source" then  thing = "true"  end
				check.x=check.x+1
				if minetest.get_node(check).name ~= "default:lava_source" then  thing = "true"  end
				check.z=check.z-1
				if minetest.get_node(check).name ~= "default:lava_source" then  thing = "true"  end
				check.z=check.z-1
				if minetest.get_node(check).name ~= "default:lava_source" then  thing = "true"  end
				check.x=check.x-1
				if minetest.get_node(check).name ~= "default:lava_source" then  thing = "true"  end
				check.x=check.x-1
				if minetest.get_node(check).name ~= "default:lava_source" then  thing = "true"  end
				check.z=check.z+1
				if minetest.get_node(check).name ~= "default:lava_source" then  thing = "true"  end
				check.z=check.z+1
				if minetest.get_node(check).name ~= "default:lava_source" then  thing = "true"  end
				pos.x = pos.x+1
				pos.z = pos.z-1
				if thing == "true" then
					minetest.dig_node(pos)
				else 
					local timer = minetest.get_node_timer(pos)
					timer:start(10)			
				end
		end,
		on_timer = function(pos)
			particle2(pos)
			minetest.set_node(pos, {name = "aether_new:pot_m_99_2"})
		end
})
--99
minetest.register_node("aether_new:pot_m_99_2", {
		description = "Obsidian Pot (99% Pure Mese, Half Full)",
		tiles = {{name = "aether_obsidian.png^(aether_pot.png^[colorize:#ffeb3b:15)", animation = {type = "vertical_frames", aspect_w = 16, aspect_h = 16, length = 2}},"default_obsidian.png", "default_obsidian.png","default_obsidian.png","default_obsidian.png","default_obsidian.png"},
		drawtype = "nodebox",
		node_box = {
			type = "fixed",
			fixed = {
				{-0.5, -0.5, -0.5, 0.5, 3/16, 0.5},
				{-0.5, -0.5, -0.5, 0.5, 0.5, -7/16},
				{0.5, 0.5, 0.5, -0.5, -0.5, 7/16},
				{0.5, 0.5, 0.5, 7/16, -0.5, -0.5},
				{-0.5, -0.5, -0.5, -7/16, 0.5, 0.5},
			},
		},
		groups = {cracky = 1},
		on_construct = function(pos)
				local check = pos
				local thing = "false"
				check.z=check.z+1
				if minetest.get_node(check).name ~= "default:lava_source" then  thing = "true"  end
				check.x=check.x+1
				if minetest.get_node(check).name ~= "default:lava_source" then  thing = "true"  end
				check.z=check.z-1
				if minetest.get_node(check).name ~= "default:lava_source" then  thing = "true"  end
				check.z=check.z-1
				if minetest.get_node(check).name ~= "default:lava_source" then  thing = "true"  end
				check.x=check.x-1
				if minetest.get_node(check).name ~= "default:lava_source" then  thing = "true"  end
				check.x=check.x-1
				if minetest.get_node(check).name ~= "default:lava_source" then  thing = "true"  end
				check.z=check.z+1
				if minetest.get_node(check).name ~= "default:lava_source" then  thing = "true"  end
				check.z=check.z+1
				if minetest.get_node(check).name ~= "default:lava_source" then  thing = "true"  end
				pos.x = pos.x+1
				pos.z = pos.z-1	
				if thing == "true" then
					minetest.dig_node(pos)
				end				
		end,
		on_rightclick = function(pos, node, clicker, itemstack)
			if itemstack:get_name() == "aether_new:pot_m_99_2" then 
				local inv = clicker:get_inventory()
				itemstack:take_item()
				inv:add_item("main", "aether_new:pot")
				minetest.set_node(pos, {name = "aether_new:pot_m_99"}) 
			end
		end
})
minetest.register_node("aether_new:pot_m_99", {
		description = "Obsidian Pot (99% Pure Mese)",
		tiles = {{name = "aether_obsidian.png^(aether_pot.png^[colorize:#ffeb3b:15)", animation = {type = "vertical_frames", aspect_w = 16, aspect_h = 16, length = 2}},"default_obsidian.png", "default_obsidian.png","default_obsidian.png","default_obsidian.png","default_obsidian.png"},
		drawtype = "nodebox",
		node_box = {
			type = "fixed",
			fixed = {
				{-0.5, -0.5, -0.5, 0.5, 6/16, 0.5},
				{-0.5, -0.5, -0.5, 0.5, 0.5, -7/16},
				{0.5, 0.5, 0.5, -0.5, -0.5, 7/16},
				{0.5, 0.5, 0.5, 7/16, -0.5, -0.5},
				{-0.5, -0.5, -0.5, -7/16, 0.5, 0.5},
			},
		},
		groups = {cracky = 1},
		on_construct = function(pos)
				local check = pos
				local thing = "false"
				check.z=check.z+1
				if minetest.get_node(check).name ~= "default:lava_source" then  thing = "true"  end
				check.x=check.x+1
				if minetest.get_node(check).name ~= "default:lava_source" then  thing = "true"  end
				check.z=check.z-1
				if minetest.get_node(check).name ~= "default:lava_source" then  thing = "true"  end
				check.z=check.z-1
				if minetest.get_node(check).name ~= "default:lava_source" then  thing = "true"  end
				check.x=check.x-1
				if minetest.get_node(check).name ~= "default:lava_source" then  thing = "true"  end
				check.x=check.x-1
				if minetest.get_node(check).name ~= "default:lava_source" then  thing = "true"  end
				check.z=check.z+1
				if minetest.get_node(check).name ~= "default:lava_source" then  thing = "true"  end
				check.z=check.z+1
				if minetest.get_node(check).name ~= "default:lava_source" then  thing = "true"  end
				pos.x = pos.x+1
				pos.z = pos.z-1
				if thing == "true" then
					minetest.dig_node(pos)
				else 
					local timer = minetest.get_node_timer(pos)
					timer:start(10)			
				end
		end,
		on_timer = function(pos)
			particle2(pos)
			minetest.set_node(pos, {name = "aether_new:pot_m_100_2"})
		end
})
--100
minetest.register_node("aether_new:pot_m_100_2", {
		description = "Obsidian Pot (100% Pure Mese, Half Full)",
		tiles = {{name = "aether_obsidian.png^(aether_pot.png^[colorize:#ffeb3b:0)", animation = {type = "vertical_frames", aspect_w = 16, aspect_h = 16, length = 2}},"default_obsidian.png", "default_obsidian.png","default_obsidian.png","default_obsidian.png","default_obsidian.png"},
		drawtype = "nodebox",
		node_box = {
			type = "fixed",
			fixed = {
				{-0.5, -0.5, -0.5, 0.5, 3/16, 0.5},
				{-0.5, -0.5, -0.5, 0.5, 0.5, -7/16},
				{0.5, 0.5, 0.5, -0.5, -0.5, 7/16},
				{0.5, 0.5, 0.5, 7/16, -0.5, -0.5},
				{-0.5, -0.5, -0.5, -7/16, 0.5, 0.5},
			},
		},
		groups = {cracky = 1},
		on_construct = function(pos)
				local check = pos
				local thing = "false"
				check.z=check.z+1
				if minetest.get_node(check).name ~= "default:lava_source" then  thing = "true"  end
				check.x=check.x+1
				if minetest.get_node(check).name ~= "default:lava_source" then  thing = "true"  end
				check.z=check.z-1
				if minetest.get_node(check).name ~= "default:lava_source" then  thing = "true"  end
				check.z=check.z-1
				if minetest.get_node(check).name ~= "default:lava_source" then  thing = "true"  end
				check.x=check.x-1
				if minetest.get_node(check).name ~= "default:lava_source" then  thing = "true"  end
				check.x=check.x-1
				if minetest.get_node(check).name ~= "default:lava_source" then  thing = "true"  end
				check.z=check.z+1
				if minetest.get_node(check).name ~= "default:lava_source" then  thing = "true"  end
				check.z=check.z+1
				if minetest.get_node(check).name ~= "default:lava_source" then  thing = "true"  end
				pos.x = pos.x+1
				pos.z = pos.z-1	
				if thing == "true" then
					minetest.dig_node(pos)
				end				
		end,
		on_rightclick = function(pos, node, clicker, itemstack)
			if itemstack:get_name() == "aether_new:pot_m_100_2" then 
				local inv = clicker:get_inventory()
				itemstack:take_item()
				inv:add_item("main", "aether_new:pot")
				minetest.set_node(pos, {name = "aether_new:pot_m_100"}) 
			end
		end
})
minetest.register_node("aether_new:pot_m_100", {
		description = "Obsidian Pot (100% Pure Mese)",
		tiles = {{name = "aether_obsidian.png^(aether_pot.png^[colorize:#ffeb3b:0)", animation = {type = "vertical_frames", aspect_w = 16, aspect_h = 16, length = 2}},"default_obsidian.png", "default_obsidian.png","default_obsidian.png","default_obsidian.png","default_obsidian.png"},
		drawtype = "nodebox",
		node_box = {
			type = "fixed",
			fixed = {
				{-0.5, -0.5, -0.5, 0.5, 6/16, 0.5},
				{-0.5, -0.5, -0.5, 0.5, 0.5, -7/16},
				{0.5, 0.5, 0.5, -0.5, -0.5, 7/16},
				{0.5, 0.5, 0.5, 7/16, -0.5, -0.5},
				{-0.5, -0.5, -0.5, -7/16, 0.5, 0.5},
			},
		},
		groups = {cracky = 1},
		on_construct = function(pos)
				local check = pos
				local thing = "false"
				check.z=check.z+1
				if minetest.get_node(check).name ~= "default:ice" then  thing = "true"  end
				check.x=check.x+1
				if minetest.get_node(check).name ~= "default:ice" then  thing = "true"  end
				check.z=check.z-1
				if minetest.get_node(check).name ~= "default:ice" then  thing = "true"  end
				check.z=check.z-1
				if minetest.get_node(check).name ~= "default:ice" then  thing = "true"  end
				check.x=check.x-1
				if minetest.get_node(check).name ~= "default:ice" then  thing = "true"  end
				check.x=check.x-1
				if minetest.get_node(check).name ~= "default:ice" then  thing = "true"  end
				check.z=check.z+1
				if minetest.get_node(check).name ~= "default:ice" then  thing = "true"  end
				check.z=check.z+1
				if minetest.get_node(check).name ~= "default:ice" then  thing = "true"  end
				pos.x = pos.x+1
				pos.z = pos.z-1
				if thing == "true" then
					
				else 
					minetest.set_node(pos, {name = "aether_new:pot"})
					minetest.add_item(pos, "aether_new:mese")
				end
		end
})