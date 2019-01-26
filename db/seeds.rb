# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Customer.delete_all
# Issue.delete_all
# Product.delete_all
# Review.delete_all

# customers
fred = Customer.create(first_name: 'fred', last_name: 'Hans', username:'fred12', email: 'fred12@gmail.com',
                       password:'password')
ted = Customer.create(first_name: 'ted', last_name: 'Hans', username:'ted13', email: 'ted2@gmail.com',
                       password:'password')
bob = Customer.create(first_name: 'bob', last_name: 'Hans', username:'bob1232', email: 'bob@gmail.com',
                       password:'password')

# products
soap = Product.create(name:'Soap', code:'1234fd', category:'home')
table = Product.create(name:'Desck', code:'dd-12-4', category:'Furniture')
food = Product.create(name:'food', code:'1243-asd', category:'food')

# review
Review.create(customer: fred, product:soap, rating:4, comment:'That was good')
Review.create(customer: fred, product:table, rating:3, comment:'That was awful')
Review.create(customer: fred, product:table, rating:5, comment:'That was great')

#issues
Issue.create(customer: fred, product:food, severity: 'COSMETIC', comment:'Inappropriate condition')
Issue.create(customer: bob, product:table, severity: 'MINOR', comment:'Left some part')