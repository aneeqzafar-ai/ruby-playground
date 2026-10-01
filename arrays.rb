class Product
  attr_reader :name,:price,:stock

  def initialize(name,price,stock)
    @name=name
    @price=price
    @stock=stock
  end

  def description
    "#{name} costs Rs. #{price} and has #{stock} units."
  end
end

products=[
  Product.new("Mechanical Keyboard",15_000,5),
  Product.new("Gaming Mouse",8_000,0),
  Product.new("Monitor",45_000,3)
]

puts products[0].name
puts products[-1].name
puts products.length