# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
product = Product.new(name: "Bench", price: 299, image_url: "https://dks.scene7.com/is/image/dkscdn/17AU6UTHSTLTYBNCHWGH_is?wid=1400&fmt=jpg", description: "deluxe")
product.save
product = Product.new(name: "Dumbbell", price: 99, image_url: "https://images-na.ssl-images-amazon.com/images/I/61EK7IMDkgL._AC_SL1500_.jpg", description: "pair")
product.save
product = Product.new(name: "Barbell", price: 199, image_url: "https://freepngimg.com/thumb/gym_equipments/49525-9-barbell-image-free-transparent-image-hq.png", description: "olympic")
product.save

supplier = Supplier.new(name: "Amazon", email: "amazon@example.com", phone_number: "123456789")
supplier.save
supplier = Supplier.new(name: "Overstock", email: "overstock@example.com", phone_number: "987654321")
supplier.save
