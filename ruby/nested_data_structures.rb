# nested_data_structers.rb
# office technology invendory
office_inventory = {
	lobby: {
		codename: "The Lion's Den",
		pcs: 1,
		laptops: ["John Doe MBP", "Jane Smith Ubuntu"],
		tablets: ["ipad_1", "ipad2"],
		consoles:[],
		tvs: 4
	},
	main_office: {
		codename: "Brainship",
		pcs: 20,
		laptops: ["Jpepper MBP", "Johnny Tawn Ubuntu", "Sean Tao MBP", "Real Numbers MBP"],
		tablets: ["Nexus tab", "ipad23"],
		consoles:[],
		tvs: 10
	},
	break_room: {
		codename: "Playroom",
		pcs: 3,
		laptops: [],
		tablets: ["cardwars tab", "Heartstone tab", "Faeria tab"],
		consoles: ["Xbox One", "Playstation future", "Wii U2"],
		tvs: 15
	},
	cafeteria: {
		codename: "Snacknation",
		pcs: 1,
		laptops: [],
		tablets: [],
		consoles:[],
		tvs: 3
	}
}

p office_inventory[:lobby][:laptops]
puts office_inventory[:main_office][:codename]
puts office_inventory[:break_room][:consoles][1]
puts office_inventory[:cafeteria][:tvs]