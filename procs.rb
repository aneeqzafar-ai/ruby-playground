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
  Product.new("Mechanical Keyboard", 15_000, 5),
  Product.new("Gaming Mouse", 8_000, 0),
  Product.new("Monitor", 45_000, 3)
]

# products.each do |product|
#   puts product.name
# end

# greet=Proc.new do |name|
#   puts "Hello #{name}"
# end

# greet=Proc.new {|name| puts "Hello #{name}"}
# another_variable=greet

# greet.call("Aneeq")

# puts greet.class

# Procs + Blocks

get_name=Proc.new {|product| product.name}
products.map(&get_name)

products.map(&:name) # this is essentailly the same as the 38th line