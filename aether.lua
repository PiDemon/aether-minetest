--aether
minetest.register_node("aether_new:aether", {
		description = "Aether",
		tiles = { {name = "aether_color.png", animation = {type = "vertical_frames", aspect_w = 32, aspect_h = 32, length = 0.8}} },
		drawtype = "mesh",
		walkable = false,
		sunlight_propagates = true,
		mesh = "aether_sphere.obj",
		light_source = 14,
		groups = {oddly_breakable_by_hand=3, crumbly=3},
})
minetest.register_node("aether_new:aether4", {
		description = "Aether (4/5 Uses Left)",
		tiles = { {name = "aether_color.png", animation = {type = "vertical_frames", aspect_w = 32, aspect_h = 32, length = 0.8}} },
		drawtype = "mesh",
		walkable = false,
		sunlight_propagates = true,
		mesh = "aether_sphere.obj",
		light_source = 14,
		groups = {oddly_breakable_by_hand=3, crumbly=3, not_in_creative_inventory = 1},
})
minetest.register_node("aether_new:aether3", {
		description = "Aether (3/5 Uses Left)",
		tiles = { {name = "aether_color.png", animation = {type = "vertical_frames", aspect_w = 32, aspect_h = 32, length = 0.8}} },
		drawtype = "mesh",
		walkable = false,
		sunlight_propagates = true,
		mesh = "aether_sphere.obj",
		light_source = 14,
		groups = {oddly_breakable_by_hand=3, crumbly=3, not_in_creative_inventory = 1},
})
minetest.register_node("aether_new:aether2", {
		description = "Aether (2/5 Uses Left)",
		tiles = { {name = "aether_color.png", animation = {type = "vertical_frames", aspect_w = 32, aspect_h = 32, length = 0.8}} },
		drawtype = "mesh",
		walkable = false,
		sunlight_propagates = true,
		mesh = "aether_sphere.obj",
		light_source = 14,
		groups = {oddly_breakable_by_hand=3, crumbly=3, not_in_creative_inventory = 1},
})
minetest.register_node("aether_new:aether1", {
		description = "Aether (1/5 Uses Left)",
		tiles = { {name = "aether_color.png", animation = {type = "vertical_frames", aspect_w = 32, aspect_h = 32, length = 0.8}} },
		drawtype = "mesh",
		walkable = false,
		sunlight_propagates = true,
		mesh = "aether_sphere.obj",
		light_source = 14,
		groups = {oddly_breakable_by_hand=3, crumbly=3, not_in_creative_inventory = 1},
})
minetest.register_node("aether_new:aether0", {
		description = "Aether (0/5 Uses Left)",
		tiles = { {name = "aether_color.png", animation = {type = "vertical_frames", aspect_w = 32, aspect_h = 32, length = 0.8}} },
		drawtype = "mesh",
		walkable = false,
		sunlight_propagates = true,
		mesh = "aether_sphere.obj",
		light_source = 14,
		groups = {oddly_breakable_by_hand=3, crumbly=3, not_in_creative_inventory = 1},
})
--tools
minetest.register_tool("aether_new:stick", {
		description = "Aether Imbued Stick",
		inventory_image = "default_stick.png^[colorize:#683ab7:90",
		tool_capabilities = {
			full_punch_interval = 0.5,
			max_drop_level=3,
			groupcaps={
				cracky = {times={[1]=0.2, [5]=0.2, [3]=0.2}, uses=100, maxlevel=5},
				snappy = {times={[1]=0.2, [2]=0.2, [3]=0.2}, uses=100, maxlevel=5},
				choppy = {times={[1]=0.2, [2]=0.2, [3]=0.2}, uses=100, maxlevel=5},
				crumbly = {times={[1]=0.2, [2]=0.2, [3]=0.2}, uses=100, maxlevel=5},
				oddly_breakable_by_hand = {times={[1]=0.2, [2]=0.2, [3]=0.2}, uses=100, maxlevel=5},
			},
		damage_groups = {fleshy=12},
	}
})
minetest.register_node("aether_new:stone", {
		description = "Aether Imbued Stone",
		tiles = {"default_stone.png^[colorize:#683ab7:50"},
		after_place_node = function(pos, placer, itemstack, pointed_thing)
			minetest.get_meta(pos):set_string("owner", placer:get_player_name())
		end,
		can_dig = function(pos, player)
			if minetest.get_meta(pos):get_string("owner") == player:get_player_name() then return true else return false end
		end,
		groups = {oddly_breakable_by_hand=3, cracky = 3},
})
minetest.register_tool("aether_new:apple", {
		description = "Aether Imbued Apple (Grants Immunity and Rapid Healing)",
		inventory_image = "default_apple.png^[colorize:#683ab7:95"
})
minetest.register_tool("aether_new:paper", {
		description = "Aether Imbued Paper (Grants Flight)",
		inventory_image = "default_paper.png^[colorize:#683ab7:90"
})
minetest.register_tool("aether_new:glass", {
		description = "Aether Imbued Glass (Grants Invisibility)",
		inventory_image = "vessels_glass_fragments.png^[colorize:#683ab7:90"
})
minetest.register_tool("aether_new:sapling", {
		description = "Aether Imbued Sapling (Grants Super Speed)",
		inventory_image = "default_sapling.png^[colorize:#683ab7:90"
})
--crafting
local function aether_craft(result, craftitem)
	minetest.register_craft({
		type = "shapeless",
		output = result,
		recipe = {"aether_new:aether", craftitem},
		replacements = {{"aether_new:aether", "aether_new:aether4"}}
	})
	minetest.register_craft({
		type = "shapeless",
		output = result,
		recipe = {"aether_new:aether4", craftitem},
		replacements = {{"aether_new:aether4", "aether_new:aether3"}}
	})
	minetest.register_craft({
		type = "shapeless",
		output = result,
		recipe = {"aether_new:aether3", craftitem},
		replacements = {{"aether_new:aether3", "aether_new:aether2"}}
	})
	minetest.register_craft({
		type = "shapeless",
		output = result,
		recipe = {"aether_new:aether2", craftitem},
		replacements = {{"aether_new:aether2", "aether_new:aether1"}}
	})
	minetest.register_craft({
		type = "shapeless",
		output = result,
		recipe = {"aether_new:aether1", craftitem},
		replacements = {{"aether_new:aether1", "aether_new:aether0"}}
	})
end
aether_craft("aether_new:stick", "default:stick")
aether_craft("aether_new:stone 50", "default:stone 50")
aether_craft("aether_new:apple", "default:apple")
aether_craft("aether_new:sapling", "default:sapling")
aether_craft("aether_new:paper", "default:paper")
aether_craft("aether_new:glass", "vessels:glass_fragments")
--stuff
local time = 0
minetest.register_globalstep(function(dtime)
	time = time + dtime
	if time > 1 then
		time = 0
		for _, player in ipairs(minetest.get_connected_players()) do
			local name = player:get_player_name()
			local wield = player:get_inventory():get_stack("main", player:get_wield_index()):get_name()
			--invisibility
			if wield == "aether_new:glass" then
				player:set_properties({visual_size = {x = 0, y = 0}})
				player:set_nametag_attributes({color = {a = 0, r = 255, g = 255, b = 255}})
				player:set_attribute("aether_new:inv", 'true')
			end
			if player:get_attribute("aether_new:inv") == "true" then
				if wield ~= "aether_new:glass" then
					player:set_properties({visual_size = {x = 1, y = 1}})
					player:set_nametag_attributes({color = {a = 255, r = 255, g = 255, b = 255}})
					player:set_attribute("aether_new:inv", nil)
				end
			end
			--speed
			if wield == "aether_new:sapling" then
				player:set_physics_override({speed = 4})
				player:set_attribute("aether_new:fast", 'true')
			end
			if player:get_attribute("aether_new:fast") == "true" then
				if wield ~= "aether_new:sapling" then
					player:set_physics_override({speed = 1})
					player:set_attribute("aether_new:fast", nil)
				end
			end
			--flight
			if wield == "aether_new:paper" then
				local privs = minetest.get_player_privs(name)
				privs.fly = true
				minetest.set_player_privs(name, privs)
				player:set_attribute("aether_new:fly", "true")
			end
			if player:get_attribute("aether_new:fly") == "true" then
				if wield ~= "aether_new:paper" then
					local privs = minetest.get_player_privs(name)
					privs.fly = nil
					minetest.set_player_privs(name, privs)
				end
			end
			--healing
			if wield == "aether_new:apple" then
				if player:get_hp() < 20 and player:get_hp() > 0 then
					player:set_hp(player:get_hp()+2)
				end
			end

		end
	end
end)
minetest.register_on_punchplayer(function(player, hitter, time_from_last_punch, tool_capabilities, dir, damage)
	if player:get_inventory():get_stack("main", player:get_wield_index()):get_name() == "aether_new:apple" then return true end
end)