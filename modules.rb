# suppose you have:
# class Product
#   def description
#     "#{name} costs #{price}"
#   end
# end

# and later you create:
class Service
end

# and let's say both of these need some shared behaviour: discount, calculate_tax, format_price
# now you don't want to duplicate those methods across classes. To solve this Ruby gives you modules

module Discountable
  def discounted?
    true
  end
end

# a module is a container for methods and constants, but unlike a normal class you don't instantiate it -> Discountable.new x
# instead one major use of modules is to share behaviour between classes

# mixin: simply a technique of taking a module and mixing its behaviour into a class

class Product
  include Discountable
  def initialize(name,price,stock)
    @name=name
    @price=price
    @stock=stock
  end
  def description
    "#{name} costs #{price}"
  end
end

keyboard=Product.new("Mechanical Keyboard",15000,5)
p keyboard.discounted?

