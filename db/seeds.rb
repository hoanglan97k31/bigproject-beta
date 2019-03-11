# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
  OrderItem.destroy_all
  Order.destroy_all
  OrderStatus.destroy_all
  Product.destroy_all
  Category.destroy_all
  

  category1 = Category.create! id: 1, name: "Fruits"

  Product.create! id: 1, tittle: "Banana", description: 'This is Banana', category: category1, price: 10, published: true
  Product.create! id: 2, tittle: "Apple", description: 'This is Apple', category: category1, price: 10, published: true
  Product.create! id: 3, tittle: "Strawberries", description: 'This is Strawberries', category: category1, price: 10, published: true
  Product.create! id: 4, tittle: "Banana", description: 'This is Banana', category: category1, price: 10, published: true
  Product.create! id: 5, tittle: "Apple", description: 'This is Apple', category: category1, price: 10, published: true
  Product.create! id: 6, tittle: "Strawberries", description: 'This is Strawberries', category: category1, price: 10, published: true
  Product.create! id: 7, tittle: "Banana", description: 'This is Banana', category: category1, price: 10, published: true
  Product.create! id: 8, tittle: "Apple", description: 'This is Apple', category: category1, price: 10, published: true
  Product.create! id: 9, tittle: "Strawberries", description: 'This is Strawberries', category: category1, price: 10, published: true
  Product.create! id: 10, tittle: "Banana", description: 'This is Banana', category: category1, price: 10, published: true
  Product.create! id: 11, tittle: "Apple", description: 'This is Apple', category: category1, price: 10, published: true
  Product.create! id: 12, tittle: "Strawberries", description: 'This is Strawberries', category: category1, price: 10, published: true
  Product.create! id: 13, tittle: "Banana", description: 'This is Banana', category: category1, price: 10, published: true
  Product.create! id: 14, tittle: "Apple", description: 'This is Apple', category: category1, price: 10, published: true
  Product.create! id: 15, tittle: "Strawberries", description: 'This is Strawberries', category: category1, price: 10, published: true
  Product.create! id: 16, tittle: "Banana", description: 'This is Banana', category: category1, price: 10, published: true
  Product.create! id: 17, tittle: "Apple", description: 'This is Apple', category: category1, price: 10, published: true
  Product.create! id: 18, tittle: "Strawberries", description: 'This is Strawberries', category: category1, price: 10, published: true
  Product.create! id: 19, tittle: "Banana", description: 'This is Banana', category: category1, price: 10, published: true
  Product.create! id: 20, tittle: "Apple", description: 'This is Apple', category: category1, price: 10, published: true
  Product.create! id: 21, tittle: "Strawberries", description: 'This is Strawberries', category: category1, price: 10, published: true
  Product.create! id: 22, tittle: "Banana", description: 'This is Banana', category: category1, price: 10, published: true
  Product.create! id: 23, tittle: "Apple", description: 'This is Apple', category: category1, price: 10, published: true
  Product.create! id: 24, tittle: "Strawberries", description: 'This is Strawberries', category: category1, price: 10, published: true
  Product.create! id: 25, tittle: "Banana", description: 'This is Banana', category: category1, price: 10, published: true
  Product.create! id: 26, tittle: "Apple", description: 'This is Apple', category: category1, price: 10, published: true
  Product.create! id: 27, tittle: "Strawberries", description: 'This is Strawberries', category: category1, price: 10, published: true
  Product.create! id: 28, tittle: "Banana", description: 'This is Banana', category: category1, price: 10, published: true
  Product.create! id: 29, tittle: "Apple", description: 'This is Apple', category: category1, price: 10, published: true
  Product.create! id: 30, tittle: "Strawberries", description: 'This is Strawberries', category: category1, price: 10, published: true
  Product.create! id: 31, tittle: "Banana", description: 'This is Banana', category: category1, price: 10, published: true
  Product.create! id: 32, tittle: "Apple", description: 'This is Apple', category: category1, price: 10, published: true
  Product.create! id: 33, tittle: "Strawberries", description: 'This is Strawberries', category: category1, price: 10, published: true
  Product.create! id: 34, tittle: "Banana", description: 'This is Banana', category: category1, price: 10, published: true
  Product.create! id: 35, tittle: "Apple", description: 'This is Apple', category: category1, price: 10, published: true
  Product.create! id: 36, tittle: "Strawberries", description: 'This is Strawberries', category: category1, price: 10, published: true
  Product.create! id: 37, tittle: "Banana", description: 'This is Banana', category: category1, price: 10, published: true
  Product.create! id: 38, tittle: "Apple", description: 'This is Apple', category: category1, price: 10, published: true
  Product.create! id: 39, tittle: "Strawberries", description: 'This is Strawberries', category: category1, price: 10, published: true
  Product.create! id: 40, tittle: "Banana", description: 'This is Banana', category: category1, price: 10, published: true
  
  OrderStatus.create! id: 1, name: "In Progress"
  OrderStatus.create! id: 2, name: "Placed"
  OrderStatus.create! id: 3, name: "Shipped"
  OrderStatus.create! id: 4, name: "Cancelled"

  Admin.create! email: "lanlh@gmail.com", password: "12345678"
