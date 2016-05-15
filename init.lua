stoneage = {} 
stoneage.path = minetest.get_modpath("stoneage")

minetest.register_craftitem("stoneage:flint", {
	description = "Flint",
	inventory_image = "stoneage_flint.png"
})


minetest.register_craftitem("stoneage:cotton_sheet", {
	description = "Cotton Sheet",
	inventory_image = "stoneage_cotton_sheet.png",

})

minetest.register_craftitem("stoneage:fletch", {
    description = "Fletch",
    inventory_image = "stoneage_fletch.png",

})


minetest.register_craftitem("stoneage:sap", {
    description = "Sap",
    inventory_image = "stoneage_sap.png",

})


minetest.register_craftitem("stoneage:resin", {
    description = "Resin",
    inventory_image = "stoneage_resin.png",

})


minetest.register_craftitem("stoneage:arrow", {
    description = "Arrow",
    inventory_image = "stoneage_arrow.png",

})

minetest.register_craftitem("stoneage:bow", {
     description = "Bow",
     inventory_image = "stoneage_bow.png",
})

minetest.register_craftitem("stoneage:boomerang", {
     description = "Boomerang",
     inventory_image = "stoneage_boomerang.png",
})

minetest.register_craftitem("stoneage:minecart", {
     description = "Minecart",
     inventory_image = "stoneage_minecart.png",
})


minetest.register_craftitem("stoneage:flint_and_steel", {
    description = "Flint and Steel",
    inventory_image = "stoneage_flint_and_steel.png",

})

minetest.register_craft({
        output = 'stoneage:cotton_sheet',
        recipe = {
            {'farming:cotton'},
            {'farming:cotton'},
            {'farming:cotton'},
        }

})

minetest.register_craft({
    type = "cooking",
    cooktime = 10,
    output = "stoneage:resin",
    recipe = "stoneage:sap",
})

minetest.register_craft({
	output = 'stoneage:fletch 3', 
	recipe = {
		{'stoneage:resin'}, 
		{'stoneage:cotton_sheet'}, 
	} 

})

minetest.register_craft({
	output = 'stoneage:arrow 4',
	recipe = {
		{'stoneage:flint'},
		{'default:stick'},
		{'stoneage:fletch 3'},
	}

})

minetest.register_craft({
	output = 'stoneage:flint_and_steel',
	recipe = {
		{'default:steel_ingot', 'stoneage:flint'},
	}

})

minetest.register_craft({
        output = 'stoneage:bow',
        recipe = {
            {'farming:cotton', 'group:stick', ''},
            {'farming:cotton', '', 'group:stick'},
            {'farming:cotton', 'group:stick', ''},
        }

})

minetest.register_craft({
        output = 'stoneage:boomerang',
        recipe = {
            {'', 'group:stick', ''},
            {'', '', 'group:stick'},
            {'', 'group:stick', ''},
        }

})

minetest.register_craft({
        output = 'stoneage:minecart',
        recipe = {
            {'', '', ''},
            {'default:steel_ingot', '', 'default:steel_ingot'},
            {'default:steel_ingot', 'default:steel_ingot', 'default:steel_ingot'},
        }

})

minetest.register_craft({
	output = 'farming:string',
	recipe = {
		{'default:gold_ingot', 'default:gold_ingot', 'default:gold_ingot'},
	}
})

minetest.override_item("default:gravel", {drop = {
	max_items = 1,
	items = {
		{items = {'stoneage:flint', 'default:gravel'},rarity = 10},
		{items = {'default:gravel'}},
	}
}})
