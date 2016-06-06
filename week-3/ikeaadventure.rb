puts "\n
 _         _   _                     _          ___ _  _______    _    _
| |    ___| |_( )___    __ _  ___   | |_ ___   |_ _| |/ / ____|  / \\  | |
| |   / _ \\ __|// __|  / _` |/ _ \\  | __/ _ \\   | || ' /|  _|   / _ \\ | |
| |__|  __/ |_  \\__ \\ | (_| | (_) | | || (_) |  | || . \\| |___ / ___ \\|_|
|_____\\___|\\__| |___/  \\__, |\\___/   \\__\\___/  |___|_|\\_\\_____/_/   \\_(_)
                      |___/
\nHey, I have a great idea- let's go to IKEA!! What do you think? \nAnswer y or n."
answer = gets.chomp.strip

if answer != "y"
  puts "\nBut I really need an ALSARP for my TORBJORN!!!! Come on, you don't have anything else to do today."
end

puts "\nLet's go, you drive!"
puts "
  ______
 /|_||_\\`.__
(   _    _ _\\
=`-(_)--(_)-'
\nCool, we're here. Are you hungry? We could get Swedish meatballs! \nAnswer y or n.\n"
hungry_options = ["y", "n"]
hungry = gets.chomp.strip.downcase

while ( hungry_options.include? hungry ) == false
  puts "\nThat's not one of your choices!\nAnswer y or n."
  hungry = gets.chomp.strip.downcase
end

if hungry == "y"
  puts "\nYum, let's eat! How many meatballs do you want? \nChoose 8 or 12."
  meatball_options = [8, 12]
  meatballs = gets.chomp.strip.to_i
  puts meatballs

  while ( meatball_options.include? meatballs ) == false
    if ( meatballs == 8 )
      break
    elsif ( meatballs == 12 )
      break
    else
      puts "\nSeriously, how many do you want?"
      puts meatballs
      meatballs = gets.chomp.strip.to_i
    end
  end

  if meatballs == 8
    print "\nHere you go, 8 meatballs:
     ooo
    ooooo
    \\___/
    "
  else
    print "\nHere you go, 12 meatballs:
     ooooo
    ooooooo
    \\_____/
"
  end
else
  puts "\nWe'll get metballs some other time then."
end

puts "\nOk, let's check out the showroom upstairs. \nLook at this amazing deal on a RINGSKAAR couch!
\n    ___.--------'``````:``````'--------.___
   (   |               :               |   )
    \\ ,;,,,            :               |  /
     |\\%%%%\\___________:__________/~~~~~/|
    / ,\\%%%%\\          |         / @*@ /, \\
   /_ / `````          |         ~~~~~~ \\ _\\
  (@l)                 |                 (@l)
   ||__________________|__________________||
   ||_____________________________________||
  /_|_____________________________________|_\\
\nI'm going to buy it.\nWhat color should I get it in?"
color = gets.chomp.strip
puts "\nI think that " + color.to_s + " is a perfect color for the RINGSKAAR! \nHow many pillows should I get?"
pillows = gets.chomp.strip.to_i

while pillows == 0 || pillows < 1
  puts "\nCome on, how many should I get?"
  pillows = gets.chomp.strip.to_i
end

if pillows > 3
  puts "\nDon't you think that " + pillows.to_s + " pillows is too many? \nI mean, where will we sit? \nAnswer y or n"
  pillow_approval = ["y", "n"]

  # verfy include?
  answer = gets.chomp.strip.downcase
  if answer == "y"
    puts "\nOk, how many should I get then?"
    pillows = gets.chomp.strip.to_i
    while pillows == 0 || pillows < 1
      puts "\nCome on, how many should I get?"
      pillows = gets.chomp.strip.to_i
    end
  elsif answer == "n"
    puts "\nFine, I guess that " + pillows.to_s + " pillows isn't too many.
    "
  end
end
puts "\nThen I'll buy " + pillows.to_s + " pillows for the couch.

"

puts "\nShould we go to the kitchen area, past to the garden area, or just straight to checkout?
Answer k, g, or c."
glasses = 0
dept_options = ["k", "g", "c"]
dept = gets.chomp.strip.downcase

while ( dept_options.include? dept ) == false
  puts "\nThat's not one of your choices!\nAnswer k, g, or c."
  dept = gets.chomp.strip.downcase
end

if dept == "k"
  puts "\n\nGreat, off to the kitchen area. I need some of those wine glasses. I keep breaking mine.\nHow many should I buy?"
  glasses = gets.chomp.strip.to_i

  while glasses == 0
    puts "\nCome on, how many should I get?"
    glasses = gets.chomp.strip.to_i
  end

  puts "\nOk, " + glasses.to_s + " glasses it is."

  put_glass = "
  \\  /
   \\/
  _||_ \n"
  puts put_glass * glasses

  puts "\nShould we go to the garden area next, or just checkout?\nAnswer g, or c."
  dept_options = ["g", "c"]
  dept = gets.chomp.strip.downcase

  while ( dept_options.include? dept ) == false
    puts "\nThat's not one of your choices!\nAnswer g, or c."
    answer = gets.chomp.strip.downcase
  end
end

if dept == "g"
puts "\nTime to look at the garden area. Since I seem to kill all my live plants, I should get some fake ones.
Ooooh, these flowers are pretty, should I buy the rose or the daffodil?\nAnswer r or d"
flower_options = ["r", "d"]
flower = gets.chomp.strip.downcase

  while ( flower_options.include? flower ) == false
    puts "You're not helping. Which flower should I get? \nAnswer r or d"
    flower = gets.chomp.strip.downcase
  end

  if flower == "r"
    puts "\n
         , .-.-,_,
         )`-.>'` (
        /     `\\  |
        |       | |
         \\     / /
         `=(\\ /.=`
          `-;`.-'
            `)|     ,
             ||  .-'|
           ,_||  \\_,/
     ,      \\|| .'
     |\\|\\  , ||/
    ,_\\` |/| |Y_,
     '-.'-._\\||/
        >_.-`Y|
        ` .--||--.
          \\'----'/
           |:.  |
           |::. |
          /::::  \\
        .:::'     '.
       /:::         \\
      ;:::'          ;
      |:::           |
      |:::           |
      |:::           |
      ;:::           ;
      \\:::.          /
       ':::..      .'
        `------- `
\nThe rose was a good choice.\n\n"

  else
    puts "
                               _..
                      ;-._   .'   `\\
                    .'    `\\/       ;
                    |       `\\.---._|
                 .--;   . ( .'      '.
                / _  \\_  './ _.       `-._
               ( = \\  )`""'\\;--.         /
               {= (|  )     /`.         /     .'|
               ( =_/  )__..-\\         .'     / /
                \\    }/    / ;.____.-;/\\   .` /
                 '--' |  .'   |       \\ \\  |  ;
                      \\  '    /       |. ;  \\/
                       )    .'`-.    / ; |  /\\
                      /__.-'   , \\_.'  | | ;  ;
                               |\\      |`| |  |
                                \\`\\    | | |  |
                                 \\ `\\  | | ;  ;
                                  |  ; | | /  /
                                  |  | | |/  /
                                  ;  | | /  /
                                   \\  \\;/  /
                                    \\  \\  /
                                     \\  Y/
                                      |  |
                                      |  |
                                      |  |
                                      |  |
                                      \\  |
                                       \\_/
\nI love daffodils!"

  end
  puts "\nSo I guess it's on to the register."

end

# Register
  puts "\nWe've been here awhile, let's checkout.
  So I'm buying:
  1 RINGSKAAR couch
  " + pillows.to_s + " pillows
  " + glasses.to_s + " wine glasses"
  if flower == "r"
    puts "  1 rose"
  elsif flower == "d"
    puts "  1 daffodil"
  end
