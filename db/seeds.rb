# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#

clothes = Category.create(name: 'Clothes')
furniture = Category.create(name: 'Furniture')
groceries = Category.create(name: 'Groceries')
electronics = Category.create(name: 'Electronics')

rug = Product.new(name: 'rug', price: 100)
rug.category = clothes
rug.save
bowl = Product.new(name: 'bowl', price: 20.95)
bowl.category = furniture
bowl.save
pillow = Product.new(name: 'pillow', price: 90)
pillow.category = clothes
pillow.save
light = Product.new(name: 'light', price: 10.95)
light.category = electronics
light.save