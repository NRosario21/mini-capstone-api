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

CategoryProduct.create!(product_id: 1, category_id: 3)
CategoryProduct.create!(product_id: 2, category_id: 3)
CategoryProduct.create!(product_id: 3, category_id: 1)
CategoryProduct.create!(product_id: 3, category_id: 2)
CategoryProduct.create!(product_id: 4, category_id: 1)
CategoryProduct.create!(product_id: 5, category_id: 3)
CategoryProduct.create!(product_id: 6, category_id: 1)
CategoryProduct.create!(product_id: 7, category_id: 1)
CategoryProduct.create!(product_id: 7, category_id: 2)
