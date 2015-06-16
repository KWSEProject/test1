# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Product.delete_all
Top.delete_all
Pant.delete_all

Product.create!(title: 'NO BRAKE 쭈리 7부티셔츠',
		description:'남녀커플룩OK! 깔끔하고 심플한 영문으로 포인트!',
		image_url: 'main1.PNG',
		image_url2:'image1.PNG',
		price: 18000,
		BuyCount:0,
		product_id:1,
		close_type2:'Top')

Product.create!(title: 'PARIS 강아지 자수 반팔티셔츠',
		description:'영문과 강아지 자수로 포인트가 되는 베이직 티셔츠!',
		image_url: 'main2.PNG',
		image_url2:'image2.PNG',
		price: 13000,
		BuyCount:0,
		product_id:2,
		close_type2:'Top')

Product.create!(title: '베이직한 워싱 슬라브 7부티',
		description:'통기성 좋은 부드러운 슬라브소재에
6가지 다양한 컬러와 사이즈까지!
올 여름 데일리룩 완벽대비!',
		image_url: 'main3.PNG',
		image_url2:'image3.PNG',
		price: 16000,
		BuyCount:0,
		product_id:3,
		close_type2:'Top')

Product.create!(title: '슬라브 헨리넥 7부티',
		description:'헨리넥은 핏이 생명!칠부소매에 적절한 핏으로 어디든 받쳐입기 좋은 데일리 티셔츠!',
		image_url: 'main4.jpg',
		image_url2:'image4.PNG',
		price: 18000,
		BuyCount:0,
		product_id:4,
		close_type2:'Top')

Product.create!(title: 'MA-1 슬라브 워싱 반팔티',
		description:'ma-1 포켓 포인트로 데일리와 유니크함을 더한 베이직 티셔츠!',
		image_url: 'main5.jpg',
		image_url2:'image5.jpg',
		price: 23000,
		BuyCount:0,
		product_id:5,
		close_type2:'Top')

Product.create!(title: '레인보우 워싱 9부 면슬랙스',
		description:'짱짱한 스판소재로 여름철에도
활동하기 딱! 좋아요',
		image_url: 'main6.jpg',
		image_url2:'image6.jpg',
		price: 32000,
		BuyCount:0,
		product_id:6,
		close_type2:'Pant')

Product.create!(title: '스티치 스판 면반바지',
		description:'딱좋은길이! ?감기는 핏! 반바지의정석
시선강탈~!',
		image_url: 'main7.jpg',
		image_url2:'image7.jpg',
		price: 29000,
		BuyCount:0,
		product_id:7,
		close_type2:'Pant')

Product.create!(title: '바이탈 스판 밴딩팬츠',
		description:'입으면 벗기싫을 만큼 편안한 밴딩팬츠!밴딩으로 편안하면서 캐주얼한 스타일을 연출해보세요!',
		image_url: 'main8.jpg',
		image_url2:'image8.jpg',
		price: 19000,
		BuyCount:0,
		product_id:8,
		close_type2:'Pant')

Product.create!(title: '트렌디 디스트로이드 데님팬츠',
		description:'진청,중청,연청 3가지 컬러! 다양한 선택! 데님팬츠!',
		image_url: 'main9.jpg',
		image_url2:'image9.jpg',
		price: 19000,
		BuyCount:0,
		product_id:9,
		close_type2:'Pant')

Product.create!(title: '누구나 입는 기본 슬랙스',
		description:'스판이 들어있어서 굉장히 착용감이 좋은 슬랙스!',
		image_url: 'main10.jpg',
		image_url2:'image10.jpg',
		price: 29000,
		BuyCount:0,
		product_id:10,
		close_type2:'Pant')



Top.create!(main_title: 'NO BRAKE 쭈리 7부티셔츠',
		description: '남녀커플룩OK! 깔끔하고 심플한 영문으로 포인트!',	
		main_image_url: 'main1PNG',
		image_url1: 'image1.PNG',
		buy_count:0,
		product_id:1,
		color1:'Black',
		size1:'L',
		size2:'M',
		size3:'S',
		stock1:5,
		stock2:3,
		stock3:0,
		color2:'White',
		size4:'L',
		size5:'M',
		size6:'S',
		stock4:2,
		stock5:1,
		stock6:0,
		price: 18000)

Top.create!(main_title: 'PARIS 강아지 자수 반팔티셔츠',
		description: '영문과 강아지 자수로 포인트가 되는 베이직 티셔츠!',	
		main_image_url: 'main2PNG',
		image_url1: 'image2.PNG',
		buy_count:0,
		product_id:2,
		color1:'Black',
		size1:'L',
		size2:'M',
		size3:'S',
		stock1:4,
		stock2:3,
		stock3:0,
		color2:'White',
		size4:'L',
		size5:'M',
		size6:'S',
		stock4:0,
		stock5:1,
		stock6:0,
		price: 13000)

Top.create!(main_title: '베이직한 워싱 슬라브 7부티',
		description: '통기성 좋은 부드러운 슬라브소재에
6가지 다양한 컬러와 사이즈까지!
올 여름 데일리룩 완벽대비!',	
		main_image_url: 'main3PNG',
		image_url1: 'image3.PNG',
		buy_count:0,
		product_id:3,
		color1:'Navy',
		size1:'L',
		size2:'M',
		size3:'S',
		stock1:4,
		stock2:3,
		stock3:0,
		color2:'Gray',
		size4:'L',
		size5:'M',
		size6:'S',
		stock4:0,
		stock5:1,
		stock6:0,
		price: 16000)

Top.create!(main_title: '슬라브 헨리넥 7부티',
		description: '헨리넥은 핏이 생명!칠부소매에 적절한 핏으로 어디든 받쳐입기 좋은 데일리 티셔츠!',	
		main_image_url: 'main4.jpg',
		image_url1: 'image4.PNG',
		buy_count:0,
		product_id:4,
		color1:'Black',
		size1:'L',
		size2:'M',
		size3:'S',
		stock1:4,
		stock2:3,
		stock3:0,
		color2:'Gray',
		size4:'L',
		size5:'M',
		size6:'S',
		stock4:0,
		stock5:1,
		stock6:0,
		price: 18000)

Top.create!(main_title: 'MA-1 슬라브 워싱 반팔티',
		description: 'ma-1 포켓 포인트로 데일리와 유니크함을 더한 베이직 티셔츠!',	
		main_image_url: 'main5.jpg',
		image_url1: 'image5.jpg',
		buy_count:0,
		product_id:5,
		color1:'Black',
		size1:'L',
		size2:'M',
		size3:'S',
		stock1:4,
		stock2:3,
		stock3:0,
		color2:'White',
		size4:'L',
		size5:'M',
		size6:'S',
		stock4:0,
		stock5:1,
		stock6:0,
		price: 23000)

Pant.create!(main_title: '레인보우 워싱 9부 면슬랙스',
		description: '짱짱한 스판소재로 여름철에도
활동하기 딱! 좋아요',	
		main_image_url: 'main6.jpg',
		image_url1: 'image6.jpg',
		buy_count:0,
		product_id:6,
		color1:'Black',
		size1:'L',
		size2:'M',
		size3:'S',
		stock1:4,
		stock2:3,
		stock3:0,
		color2:'Navy',
		size4:'L',
		size5:'M',
		size6:'S',
		stock4:0,
		stock5:1,
		stock6:0,
		price: 32000)

Pant.create!(main_title: '스티치 스판 면반바지',
		description: '딱좋은길이! ?감기는 핏! 반바지의정석
시선강탈~!',	
		main_image_url:'main7.jpg',
		image_url1:'image7.jpg',
		buy_count:0,
		product_id:7,
		color1:'Khaki',
		size1:'L',
		size2:'M',
		size3:'S',
		stock1:4,
		stock2:3,
		stock3:0,
		color2:'Blue',
		size4:'L',
		size5:'M',
		size6:'S',
		stock4:0,
		stock5:1,
		stock6:0,
		price: 29000)

Pant.create!(main_title:'바이탈 스판 밴딩팬츠',
		description: '입으면 벗기싫을 만큼 편안한 밴딩팬츠!밴딩으로 편안하면서 캐주얼한 스타일을 연출해보세요!',	
		main_image_url:'main8.jpg',
		image_url1:'image8.jpg',
		buy_count:0,
		product_id:8,
		color1:'Black',
		size1:'L',
		size2:'M',
		size3:'S',
		stock1:4,
		stock2:3,
		stock3:0,
		color2:'Beige',
		size4:'L',
		size5:'M',
		size6:'S',
		stock4:0,
		stock5:1,
		stock6:0,
		price: 19000)

Pant.create!(main_title:'트렌디 디스트로이드 데님팬츠',
		description: '진청,중청,연청 3가지 컬러! 다양한 선택! 데님팬츠!',	
		main_image_url:'main9.jpg',
		image_url1:'image9.jpg',
		buy_count:0,
		product_id:9,
		color1:'WhiteBlue',
		size1:'L',
		size2:'M',
		size3:'S',
		stock1:4,
		stock2:3,
		stock3:0,
		color2:'WhiteSky',
		size4:'L',
		size5:'M',
		size6:'S',
		stock4:0,
		stock5:1,
		stock6:0,
		price: 19000)

Pant.create!(main_title:'누구나 입는 기본 슬랙스',
		description: '스판이 들어있어서 굉장히 착용감이 좋은 슬랙스!',	
		main_image_url:'main10.jpg',
		image_url1:'image10.jpg',
		buy_count:0,
		product_id:10,
		color1:'Black',
		size1:'L',
		size2:'M',
		size3:'S',
		stock1:4,
		stock2:3,
		stock3:0,
		color2:'White',
		size4:'L',
		size5:'M',
		size6:'S',
		stock4:0,
		stock5:1,
		stock6:0,
		price: 29000)






