# a string represents text and a symbol represents a name or an identifier


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

# puts "price".class
# puts :price.class

# puts "price".object_id
# puts "price".object_id

# puts :price.object_id
# puts :price.object_id


name = "price"

puts name == "price"
puts :price == :price
puts "price" == :price