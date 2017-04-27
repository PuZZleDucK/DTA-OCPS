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
Order.create(status: 0, user: User.first)

Item.destroy_all
data = JSON.load(open("https://api.myjson.com/bins/gx6vz"))["prices"]
data.each do |datum|
  if datum["special_qty"].nil? then
    Item.create(name: datum["name"], unit_price: datum["unit_price"])
  else
    Item.create(name: datum["name"], unit_price: datum["unit_price"], special_qty: datum["special_qty"], special_price: datum["special_price"])
  end
end

OrderLine.destroy_all
OrderLine.create(quantity: 1, order: Order.first, item: Item.first)
OrderLine.create(quantity: 1, order: Order.first, item: Item.all[1])

OrderLine.create(quantity: 4, order: Order.all[1], item: Item.all[1])
