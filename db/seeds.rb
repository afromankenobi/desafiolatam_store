# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Category.destroy_all
Product.destroy_all

cat1 = Category.create(name: 'categoria1', discount: 0)
cat2 = Category.create(name: 'categoria2', discount: 0)
cat3 = Category.create(name: 'categoria3', discount: 0)

cat1.products.create(
  [
    {
      name: 'p1',
      price: 100
    },
    {
      name: 'p2',
      price: 123
    },
    {
      name: 'p3',
      price: 1000
    }
  ]
)
cat1.products.last.destroy

cat2.products.new(name: 'pc1', price: 1231)
cat2.products.build(name: 'pc2', price: 1233)
cat2.products.new(name: 'pc3', price: 1221)
cat2.save
cat2.products.last.destroy

cat3.products.new(name: 'pw1', price: 312)
cat3.products.build(name: 'pw2', price: 312)
cat3.products.build(name: 'pw3', price: 312)
cat3.save
cat3.products.last.destroy

# Product.last.update_attributes!(premium: true)
premium = Product.last
premium.premium = true
premium.save

# Category.all.each { |c| c.name.upcase! }
Category.all.each do |c|
  c.name.upcase!
end
# Category.all.each do |c|
#   c.name.upcase
#   c.save
# end
