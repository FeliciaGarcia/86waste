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
    Business.create(
        name: 'Sevenanda',
        description: 'A natural foods grocery store in little five points. They have a great bulk section',
        street: ' 467 Moreland Ave NE',
        city: 'Atlanta',
        zipcode: '30307',
        longitude: '33.7670° N',
        latitude: '84.3485° W',
        photourl: 'http://www.sevananda.coop/wp-content/uploads/2014/04/Front-Store-605x289.jpg',
        website: 'http://www.sevananda.coop/',
        state: 'Georgia'
        )
     Business.create(
        name: 'Sprouts',
        description: 'https://www.sprouts.com/stores/details/-/store-details/view/store/519',
        street: '1845 Piedmont Ave NE #500',
        city: 'Atlanta',
        zipcode: '30324',
        longitude: '33.8060° N',
        latitude: '84.3663° W',
        photourl: 'http://www.theoryhouse.com/wp-content/uploads/2014/11/sprouts_w640.jpeg',
        website: 'https://www.sprouts.com/stores/details/-/store-details/view/store/519',
        state: 'Georgia'
        )
     Business.create(
        name: 'Rainbow Grocery',
        description: 'this store is great for vegans',
        street: '2118 N Decatur Rd',
        city: 'Decatur',
        zipcode: '30033',
        longitude: '37.7691° N',
        latitude: '122.4151° W',
        photourl: 'http://rainbowgrocery.com/wp-content/uploads/2011/04/rainbow-sign_490x275.jpg',
        website: 'http://rainbowgrocery.com/',
        state: 'Georgia'
        )


  