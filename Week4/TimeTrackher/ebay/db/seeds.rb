# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


user1 = User.create(name: "Godzilla" , email: "destroyangry@hotmail.com" )
user2 = User.create(name: "Charlie" , email: "charliebrown@hotmail.com" )
user3 = User.create(name: "Kim Jung Un" , email: "ilovekorea@gmail.com" )
user4 = User.create(name: "Mr. Wong" , email: "hunanwok@gmail.com" )
user5 = User.create(name: "Snake" , email: "ssssssss@gmail.com" )
user6 = User.create(name: "Terminator" , email: "illbeback@aol.com" )
user7 = User.create(name: "Jason Bourne" , email: "troubleremembering@msn.com" )


Product.create(user_id: 1, title: "Deadman's Flask", description: "Upon strolling down the beach, I discovered a body with a flask next to it.", deadline: Time.now + 12.hours)




