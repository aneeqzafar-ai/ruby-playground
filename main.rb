# class Product
#   attr_reader :name,:price,:stock #getter methods
#   attr_writer :name,:price #setter methods

#   attr_accessor :name,:price #getter and setter methods
#   def initialize(name,price,stock)
#     @name=name
#     @price=price
#     @stock=stock
#   end

#   def sell(quantity)
#     raise "Not enough stock" if quantity > @stock

#     @stock-=quantity
#   end

# end

# keyboard=Product.new("Mechanical Keyboard",15_000,5)

# p keyboard

# puts keyboard.name
# keyboard.price=20_000
# puts keyboard.price

# keyboard.stock-=500

class Product
  puts self
  attr_reader :name,:price,:stock

  def initialize(name,price,stock)
    @name=name
    @price=price
    @stock=stock
  end

  def description
    "#{name} costs Rs. #{price} and has #{stock} units."
  end

  def who_am_i
    self
  end

  def show_self
    puts self
    puts self.class
  end

  def self.category
    "Electronics"
  end

  def instance_context
    self
  end

  def self.class_context
    self
  end
end

keyboard=Product.new("Mechanical Keyboard",15_000,5)
puts keyboard.description
puts keyboard.who_am_i == keyboard
puts keyboard.show_self

puts Product.category
#puts keyboard.category

puts keyboard.instance_context == keyboard
puts Product.class_context == Product