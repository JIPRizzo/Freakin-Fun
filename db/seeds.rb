# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#
#
#
#
#

Toy.destroy_all
User.destroy_all
  users = User.create([{first_name:"Mario", last_name:"Mario", email:"mario@supermario.me", password:"123456"},
    {first_name:"Sponge", last_name:"Bob", email:"bob@squarepants.me", password:"123456"},
    {first_name:"Johnny", last_name:"Bravo", email:"johnny@johnnybravo.me", password:"123456"},
    {first_name:"Bud", last_name:"Lightyear", email:"bud@toystory.me", password:"123456"},
    {first_name:"Sheriff", last_name:"Woody", email:"sheriff@toystory.me", password:"123456"},
    {first_name:"Winnie", last_name:"Pooh", email:"winnie@pooh.me", password:"123456"},
    {first_name:"Garfield", last_name:"Cat", email:"garfield@thecat.me", password:"123456"},
    {first_name:"Scooby", last_name:"Doo", email:"scooby@doo.me", password:"123456"}])

   toys = Toy.create([{user:User.first, name:"Sky Castle", description:"Let your kids take to the skies and fly like never before", price_cents: 10000},
    {user:User.second, name:"Bowser's Jumpin' Castle", description: "Nintendo Fan? Join Yoshi, Mario and Princess Peach at Bowsers Castle!!", price_cents: 15000},
    {user:User.third, name:"Bob Square Pant's Barley", description: "Sponge up all the fun, in our most exclusive castle!", price_cents: 20000 },
    {user:User.fourth, name:"Trampoline I", description:"Small Size, Huge Bounce - Super Safe!", price_cents: 10000},
    {user:User.fifth, name:"Trampoline II", description:"#", price_cents: 15000},
    {user:User.find_by_first_name("Sheriff"), name:"Trampoline III", description:"#", price_cents: 20000},
    {user:User.find_by_first_name("Winnie"), name:"Holy Piñata", description:"#", price_cents: 10000},
    {user:User.find_by_first_name("Garfield"), name:"Smack Dat Piñata", description:"#", price_cents: 15000},
    {user:User.last, name:"Lively Piñata", description: "#", price_cents: 20000}])

    urls = [
      "http://www.perthbouncycastle.com.au/uploads/4/1/3/9/41398715/3389799_orig.jpg",
      "http://amazingjumpswekickthepartyoff.com/images/module_house_mario.jpg",
      "https://www.east-inflatables.com/neweast/images/big/E1-023.jpg",
      "http://assets.academy.com/mgen/12/10498712.jpg?is=500,500",
      "http://media.4rgos.it/i/Argos/6164469_R_Z002A?$Web$&w=570&h=513",
      "https://s-media-cache-ak0.pinimg.com/736x/b9/41/f6/b941f6cfdbc0352ab2d32efa3cabb236.jpg",
      "http://www.lacelesteblog.com/wp-content/uploads/2010/06/donkey-pinata.jpg",
      "http://www.pinatas.es/318/pinata-minion-3d-dos-ojos.jpg",
      "https://s-media-cache-ak0.pinimg.com/originals/a5/1d/15/a51d156290ea7fa566dfc2a351a8b84c.jpg",
    ]


   Toy.all.each_with_index do |toy, index|
    toy.image_url = urls[index]
    p "added #{urls[index]} to #{toy.name}"
    toy.save
   end

