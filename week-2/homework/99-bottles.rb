b = 99 # start with 99 bottles
while b > 1 # as long as there is at least 1 bottle left
  puts b.to_s + " bottles of beer on the wall, " + b.to_s + " bottles of beer.
  Take one down, pass it around, " + ( b - 1 ).to_s + " bottles of beer on the wall!" # sing the song
  b -= 1 # one fewer bottle now
end
puts "1 bottle of beer on the wall, 1 bottle of beer.
  Take one down, pass it around, no more bottles of beer on the wall!" # last bottle
puts "No more bottles of beer on the wall, no more bottles of beer.
  Go to the store and buy some more, 99 bottles of beer on the wall!" # buy some more
