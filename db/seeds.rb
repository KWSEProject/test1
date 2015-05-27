# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Product.delete_all
Top.delete_all


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

Top.create!(main_title: 'TOP1',
		description: %{THIS IS TOP1},
		stock: 5,
		main_image_url: 'main_image.PNG',
		image_url1: 'image_url1.PNG',				
		image_url2: 'image_url2.PNG',
		image_url3: 'image_url3.PNG',
		image_url4: 'image_url4.PNG',
		image_url5: 'image_url5.PNG',
		price: 20000)

Top.create!(main_title: 'TOP2',
		description: %{THIS TOP2},
		stock: 10,
		main_image_url: 'Top_2_1.PNG',
		image_url1: 'Top_2_2.PNG',				
		image_url2: 'Top_2_3.PNG',
		image_url3: 'Top_2_4.PNG',
		image_url4: 'Top_2_5.PNG',
		image_url5: 'Top_2_6.PNG',
		price: 20000)
