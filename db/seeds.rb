  require 'open-uri'
  require 'json'
  


  OrderItem.destroy_all
  Order.destroy_all
  OrderStatus.destroy_all
  Product.destroy_all
  Category.destroy_all
  
  ActiveRecord::Base.connection.execute(
      'UPDATE sqlite_sequence SET seq = 0 WHERE name = \'products\''
      )
   
  category1 = Category.create! id: 1, name: "Fruits"


  open("http://localhost:3000/v1/products") do |products|
  data = []
  products.read.each_line do |product|
    json = JSON.parse(product)
    json.each do |f|
      object = {
        "tittle":       f["tittle"],
        "description":  f["description"],
        "price":        f["price"],
        "published":    f["published"],
        "image_url":    f["image_url"],
        "category_id":  f["category_id"]
      }
      data << object
    end
  end
  Product.create!(data)
end

=begin
  open("http://localhost:3000/v1/products") do |products|
    json = JSON.parse(products)
    json["products"].each do |product|
    Product.create!(tittle:      product.tittle,
                    description: product.description,
                    price:       product.price,
                    published:   product.published,
                    image_url:   product.image_url)
    end
  end
=end

  OrderStatus.create! id: 1, name: "In Progress"
  OrderStatus.create! id: 2, name: "Placed"
  OrderStatus.create! id: 3, name: "Shipped"
  OrderStatus.create! id: 4, name: "Cancelled"


