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

# def run_something
#   puts "Before"

#   yield("Mechanical Keyboard")

#   puts "After"
# end

# run_something do |name|
#   puts "Product: #{name}"
# end

products=[
  Product.new("Mechanical Keyboard", 15_000, 5),
  Product.new("Gaming Mouse", 8_000, 0),
  Product.new("Monitor", 45_000, 3)
]

# products.each {|product| puts product.name}

# result=products.each do |product|
#   puts product.name
# end

# puts result == products

# def for_each_product(products)
#   index = 0

#   while index < products.length
#     yield(products[index])
#     index += 1
#   end

#   products
# end

# for_each_product(products) do |product|
#   puts product.name
# end

# def twice
#   yield(1)
#   yield(2)
# end

# twice do |number|
#   puts number * 10
# end


#map

# names = products.map do |product|
#   product.name
# end

# p names

# prices = products.map do |product|
#   product.price * 2
#   product.name
# end

# p prices

# select

# in_stock_products = products.select do |product|
#   product.stock > 0
# end
#products.select(&:in_stock?)

# p in_stock_products

# reject
# out_of_stock_products = products.reject do |product|
#   product.stock > 0
# end
#products.reject(&:in_stock?)


# reduce

# numbers = [10, 20, 30]

# total = numbers.reduce(0) do |sum, number|
#   sum + number
# end

# puts total

# inventory_value = products.reduce(0) do |total, product|
#   total + (product.price * product.stock)
# end

# puts inventory_value

#each_with_object

# looks similar to reduce but it's especially convenient when you're building a Hash or Array

# stock_by_product = products.each_with_object({}) do |product, result|
#   result[product.name] = product.stock
# end

# result = products.each_with_object({}) do |product, hash|
#   hash[product.name] = product.price
# end

# p result

# sortby

sorted_products = products.sort_by do |product|
  product.price
end

names = sorted_products.map do |product|
  product.name
end

p names

p sorted_products