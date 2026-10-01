module Discountable
  def discount
    puts "Applying discount"
  end
end

# class Product
#   include Discountable
# end

# keyboard=Product.new
# keyboard.discount

# include adds the module into the class's instance method lookup chain. include -> instances get access to the module's methods

# extend

# class Product
#   extend Discountable
# end

# Product.discount

# extend adds the modules methods to the specific object being extended

# Shortcut  include -> instance methods , extend -> class methods

# prepend

# its main purpose is to allow a module to intercept/override existing methods

module Logging
  def save
    puts "Logging save..."
    super
  end
end

class Product
  prepend Logging
  def save
    puts "Saving Product"
  end
end

keyboard=Product.new
keyboard.save