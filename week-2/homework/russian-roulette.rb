# Introduction
puts "What's your name?"
player_name = gets.strip.chomp

puts "
You step into a dark room.
All you see is a small table lit by a spotlight, with a dark object on it.
As you step closer, you realize this object is a gun...
" + player_name.to_s + ", let's play Russian Roulette!

There are 6 barrels in this gun.
Five of these barrels are empty.
But one of these barrels contains a live bullet.
Hold the gun to your head and choose how many shots to take.
If you're still alive, I'll take the rest of the shots.
If you choose to pass, I'll select a random number of shots to take.
If I'm still alive, I'll pass the gun back to you and you'll have to take the rest of the shots.
The winner is the last person standing.
Are you feeling lucky?"

rhetorical_question = gets.downcase.chomp.strip
if rhetorical_question == "yes"
  puts "Great! You go first!
  "
else
  puts "Too bad, you're the one who chose to run my script. You go first!
  "
end

# It's game time
barrels = Array(1..6) # create array of all barrels
live_barrel = rand(0..5) # pick a random barrel
barrels[live_barrel] = "boom" # load the gun by putting a bullet in the chosen barrel

puts player_name + ", how many shots would you like you take? There are six barrels. If you'd prefer to pass, type in 0 or any non-numeric character."
player_shots_left = gets.chomp.strip.to_i # set player's shots_left equal to the number they type in

while ( player_shots_left < 0 ) || ( player_shots_left > 6 ) # edge case if string or number greater than 6 is imputted
  puts "Please enter a number between 0 and 6."
  player_shots_left = gets.chomp.strip
end

rest_of_the_shots = ( 6 - player_shots_left ) # these are the rest_of_the_shots as long as the user doesn't pass, this will be the number of shots the computer will take

# Player's turn
if ( player_shots_left > 0 ) # as long as there are player shots left
  current_shot = 1

  barrels.each do |b| # go through each item b in the barrels array
    if ( b.class != String ) && ( $status != "player_dead" ) && ( player_shots_left > 0 ) # compare b (barrel in barrels array) with the live barrel
      puts "Time for shot number " + current_shot.to_s + " .... " # tells you what shot you're on
      puts "

      Phew, that barrel was empty!
      "
      player_shots_left -= 1 # one fewer shot left
      current_shot += 1 # on to the next shot
    elsif $status != "player_dead" && ( player_shots_left > 0 )
      puts "Time for shot number " + current_shot.to_s + " .... " # tells you what shot you're on
      puts "BOOOOOOM" #dead
      $status = "player_dead"
    end

  end
end

# Computer's turn
if $status != "player_dead" # if the player isn't dead

  if rest_of_the_shots == 6 # If the user passed
    computer_shots_left = rand(1..6) # choose a random number of shots for the computer to take
    puts "So you're passing? Looks like it's my turn. I will take " + computer_shots_left.to_s + " shots."

    current_shot = 1

    barrels.each do |b| # go through each item b in the barrels array
      if b.class != String && $status != "computer_dead" && ( computer_shots_left > 0 ) # compare b (barrel in barrels array) with the live barrel
        puts "Time for shot number " + current_shot.to_s + " .... " # tells you what shot you're on
        puts "

        Phew, that barrel was empty!
        "
        computer_shots_left -= 1 # one fewer shot left
        current_shot += 1 # on to the next shot
      elsif $status != "computer_dead" && ( computer_shots_left > 0 )
        puts "Time for shot number " + current_shot.to_s + " .... " # tells you what shot you're on
        puts "BOOOOOOM
        You won!" #dead
        $status = "computer_dead"
      end
    end

    if $status != "computer_dead" # computer did not lose after its turn
        puts "You'll have to take the rest of the shots, which means you lost!"
    end

  else  # Player took their shots, computer takes rest of the shots
    puts "I'll have to take the rest of the shots, which means you won!"
  end

else
  puts "You lost!"
end
