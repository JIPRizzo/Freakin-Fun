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
    {user:User.find_by_first_name("Winnie"), name:"Holy Pinata", description:"#", price_cents: 10000},
    {user:User.find_by_first_name("Garfield"), name:"Smack Dat Pinata", description:"#", price_cents: 15000},
    {user:User.last, name:"Lively Pinata", description: "#", price_cents: 20000}])

