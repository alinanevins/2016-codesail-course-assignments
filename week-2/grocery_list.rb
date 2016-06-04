require 'csv'
csv = CSV.read("groceries.csv", headers: true)
puts "Here's our inventory and prices:"
puts csv.first(13) # display all foods & prices

list = []

puts "What would you like to buy? Type done when you're done adding items to your list"
item = gets.downcase.chomp.strip

# edge case: item doesn't match anything in food column

while item != 'done'
  list << item # gets shopping list and makes an array
  item = gets.downcase.chomp.strip
end

quantities = []

list.each do |thing|
    puts "How many #{thing} do you want to buy?"
  quantities << gets.chomp
end

# edge case: quantity must be a positive integer

prices = [] # new prices array

while prices.length < list.length
  csv.each do |row| # for each row of the csv
    if row['food'] == list[prices.length] # if the food matches the choice from their list
      prices << row['price'] # add the price to the prices array
    end
  end
end

total = 0
i = 0
while i < prices.length
  total = total + prices[i].to_i * quantities[i].to_i
  i = i + 1
end
puts "Your total is $" + total.to_s


# edge cases: item doesn't match anything in food column
