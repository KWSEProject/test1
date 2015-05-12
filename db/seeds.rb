# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Product.delete_all

Product.create!(title: '1st cloth',
		description:
		%{<p>this is green T-shirt. It has 95, 100 size.</p>},		
		image_url: 'green_cloth.PNG',
		price: 5000)

Product.create!(title: '2nd cloth',
		description: %{<p>this is pink skirt. It has free size</p>},
		image_url: 'pink_skirt.PNG',
		price: 7000)

Product.create!(title: '3rd cloth',
		description: %{<p>this is jin for man. Is has 30 to 35 size</p>},
		image_url: 'jin.PNG',
		price: 20000)
