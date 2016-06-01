# function
def fizzbuzz(x)
  if x%3 == 0 && x%5 == 0
    puts "FizzBuzz"
  elsif x%3 == 0
    puts "Fizz"
  elsif x%5 == 0
    puts "Buzz"
  else
    puts x
  end
end

# each do
array = Array(1..1000)
array.each { |x| fizzbuzz(x) }

# upto
a = 1.upto(1000) { |x| fizzbuzz(x) }

# map
array.map { |x| fizzbuzz(x) }

##############

# lambda
fblamb = lambda do |x|
  if x%3 == 0 && x%5 == 0
    puts "FizzBuzz"
  elsif x%3 == 0
    puts "Fizz"
  elsif x%5 == 0
    puts "Buzz"
  else
    puts x
  end
end

# lambda each do
array = Array(1..1000)
array.each { |x| fblamb.call(x) }

# lambda upto
a = 1.upto(1000) { |x| fblamb.call(x) }

# lamda map
array.map { |x| fblamb.call(x) }

##############

# Proc
fbproc = Proc.new do |x|
  if x%3 == 0 && x%5 == 0
    puts "FizzBuzz"
  elsif x%3 == 0
    puts "Fizz"
  elsif x%5 == 0
    puts "Buzz"
  else
    puts x
  end
end

# Proc each do
array = Array(1..1000)
array.each { |x| fbproc.call(x) }

# Proc upto
a = 1.upto(1000) { |x| fbproc.call(x) }

# Proc map
array.map { |x| fbproc.call(x) }
