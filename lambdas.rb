# a special kind of proc

multiply=lambda do |a,b|
  a*b
end

p multiply.call(5,3)

# shorter equivalent
multiply =-> (a,b) {a*b}
p multiply.call(4,5)

p multiply.class