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

product_data={
  name: "Mechanical Keyboard", # shorthand for :name => "Mechanical Keyboard"
  price: 15_000,
  stock: 5
}

puts product_data[:name]
puts product_data["name"]
puts product_data[:price]

counts = Hash.new(0)

puts counts[:ruby]
puts counts.length

counts[:ruby] += 1

puts counts[:ruby]
puts counts.length