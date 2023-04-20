# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

PRODUCT_COUNT = 100
(1..PRODUCT_COUNT).each do |index|
    product = {
    name:"柳橙汁",
    description:"酸酸甜甜",
    image_url:"https://images.pexels.com/photos/96974/pexels-photo-96974.jpeg?h=350&auto=compress&cs=tinysrgb"
    }
    Product.create(product)
end

