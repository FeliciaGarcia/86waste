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
    	photourl: 'http://i.imgur.com/kVbk3cd.jpg'
    	)
    Post.create( 
    	title: 'Zero waste grocery shopping', 
    	content: 'get reusable produce bags and a reusable shopping bag instead of plastic', 
    	photourl: 'http://i.imgur.com/y4h1l5A.jpg'
    	)
    Post.create( 
    	title: 'Eat vegan without sacrificing the taste', 
    	content: 'my favorite meal to create is a grain bowl. It is an easy way to incorporate a lot of vegetables and get creative with your recipes', 
    	photourl: 'http://i.imgur.com/voz8vtV.jpg'
    	)


    