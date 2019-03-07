# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
  Category.delete_all
  category1 = Category.create! name: 'Fruits'

  Product.delete_all
  Product.create! id: 1, tittle: "Banana", description: 'This is Banana', category: category1, price: 10, published: true
  Product.create! id: 2, tittle: "Apple", description: 'This is Apple', category: category1, price: 10, published: true
  Product.create! id: 3, tittle: "Strawberries", description: 'This is Strawberries', category: category1, price: 10, published: true

  OrderStatus.delete_all
  OrderStatus.create! id: 1, name: "In Progress"
  OrderStatus.create! id: 2, name: "Placed"
  OrderStatus.create! id: 3, name: "Shipped"
  OrderStatus.create! id: 4, name: "Cancelled"