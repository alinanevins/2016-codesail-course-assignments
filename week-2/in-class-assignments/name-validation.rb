puts "Hi, what's your name?"
user_input = gets
if user_input.downcase.chomp.strip == "alina"
  puts "Hi Alina, you are the awesomest person ever!!!"
elsif user_input.downcase.chomp.strip == "emilia" || user_input.downcase.chomp.strip == "neils"
  puts "Hi neighbor!"
else
  puts "Hey! This message is for Alina's eyes only!!!"
end
