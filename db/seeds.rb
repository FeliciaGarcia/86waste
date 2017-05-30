# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

	Post.destroy_all
    Post.create( 
    	title: 'How to make homemade tooth paste', 
    	content: 'mix baking soda, coconut oil, and sea salt', 
    	photourl: 'http://imageshack.com/a/img922/829/Kmzeea.png'
    	)
    Post.create( 
    	title: 'Zero waste grocery shopping', 
    	content: 'get reusable produce bags and a reusable shopping bag instead of plastic', 
    	photourl: 'http://rbmtechblog.files.wordpress.com/2014/07/sustainable_grocery_merchandising.png'
    	)
    Post.create( 
    	title: 'Eat vegan without sacrificing the taste', 
    	content: 'my favorite meal to create is a grain bowl. It is an easy way to incorporate a lot of vegetables and get creative with your recipes', 
    	photourl: 'http://assets.bonappetit.com/photos/57bf27e94395c0582bb62f4e/master/w_680,h_454,c_limit/warm-kimchi-grain-bowl-farro-chard-fried-egg.jpg'
    	)

Business.destroy_all
