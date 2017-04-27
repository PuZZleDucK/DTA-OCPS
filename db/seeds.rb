# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
User.create(name: "Ben", password: "123", password_confirmation: "123")

Order.destroy_all
Order.create(status: 0, user: User.first)

Item.destroy_all
Item.create(name: "test", unit_price: 1)

OrderLine.destroy_all
OrderLine.create(quantity: 1, order: Order.first, item: Item.first)
