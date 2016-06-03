b = 99 # start with 99 bottles
while b > 1 # as long as there is at least 1 bottle left
  puts b.to_s + " bottles of beer on the wall, " + b.to_s + " bottles of beer take one down, pass it around, " + ( b - 1 ).to_s + " bottles of beer on the wall!" # sing the song
  b -= 1 # one fewer bottle now
end
puts "1 bottle of beer on the wall, 1 bottle of beer take one down, pass it around, no more bottles of beer on the wall!" # last bottle
