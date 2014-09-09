# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

PetType.create([
	{ animal: "dog",
		photo_url_4: "http://media-cache-ak0.pinimg.com/736x/1f/79/80/1f7980a9f3677c44f627f21c5bdc96ee.jpg",
		photo_url_3: "http://4.bp.blogspot.com/-pfDXevZKguQ/Tah91Hd9ffI/AAAAAAAAAOA/K0_oHi1tH28/s220/bohdi.jpg",
		photo_url_2: "http://media-cache-ak0.pinimg.com/236x/29/26/f7/2926f7d33e649127f034de140dcf32e9.jpg",
		photo_url_1: "http://shibainudog.net/wp-content/uploads/shiba-inu-puppies2.jpg"
	},
	{ animal: "cat",
		photo_url_4: "http://images4.wikia.nocookie.net/__cb20120130003442/wubbzy/images/thumb/3/3d/Happycat.gif/400px-Happycat.gif",
		photo_url_3: "http://thumbs.dreamstime.com/z/lovely-grey-cat-banner-2961103.jpg",
		photo_url_2: "http://www.iconiccanvasart.co.uk/wp-content/uploads/2012/03/2050-Cat-Colour-1024x731.jpg",
		photo_url_1: "http://www.cat-behavior-explained.com/images/grey-cat-asleep.jpg"
	}
])

# Pet.create([
# 	{ name: "Kuma", pet_type: 1, user: 1 }
# ])
