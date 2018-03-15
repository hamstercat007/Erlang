
def earth
  puts "Cold War II has erupted between Russia and the United States"
  puts "Nuclear bombs have been released and landed in your country, wiping out cities from the thermal blast"
  puts "You suffer the effects of ionising radiation and feel ill"
  puts "Do you still stay on planet Earth, or do you go to planet Erlang in Elon Musk's SpaceX?"

    while true 
      print "> "
    choice2 = $stdin.gets.chomp

    if choice2.include?("Earth") || choice2.include?("earth")
      flood 
    elsif choice2.include?("Erlang") || choice2.include?("erlang")
      puts "That's another £150,000 to pay out - you end up selling all of your assets, house and family treasures"
      erlang
    else 
      puts "I don't recognise that, please try again"
    end
  end  #why do I need this end statement - is that for the while loop?
end

def erlang
  puts "You land safely on the planet"
  puts "There is a rocky crater surface"
  puts "It's just you and your pet monkey, and 5 apples in the space capsule"
  puts "The species on planet Erlang are called Erlangers"
  puts "It is customary for strangers to give the Erlangers a gift"
  puts "What do you give them as a gift, your monkey or the apples"
  
  print "> "
  gift = $stdin.gets.chomp

  if gift.include?("monkey") || gift.include?("Monkey")
    puts "How could you give away your best friend Reece!  You animal!!"
    puts "The Erlangers are surprised at your ruthlessness and place you in their jails where you die"
    puts "The monkey lives happily in luxury amongst them."

  elsif gift.include?("apples") || gift.include?("Apples") || gift.include?("apple") || gift.include?("Apple")
    puts "How many apples do you give them?"
      
      
      #while loop is not comparing anything, so this is an infinite loop, which is why you need the dead method to get you out of it.  
      
       
      #I Initially put print and how_much before the while loop so it didn't work - why not?
      while true
        print "> "
        how_much = $stdin.gets.chomp.to_i
      
        
      
          if how_much > 3 && how_much <= 5
          puts "That's very generous of you.  The Erlangers are pleased with your gifts"
          puts "They take you into their palace and provide a banquet for you"
          win
          elsif how_much >= 0 && how_much < 3
          dead("The Erlangers are unimpressed with your presents.  They banish you from the planet.")
          else
          puts "That's not a number! Try again"
          end
        end
    end
  end

def dead(why)
  puts why, "Game over. It was a valient death.  Better luck next time."
  exit(0)
end

def win
  puts "You live happily ever after.  Well done on conducting intergalactic diplomacy!"
  exit(0)
end

def flood
  puts "Global warming melts the ice caps and floods planet Earth"
  puts "You drown and the human race is wiped out"
  dead("The human race was warned for centuries but ignored it")
end 

def start
  puts "You go up into Elon Musk's Space X aircraft to the unchartered planet Erlang"
  puts "Do you decide to land on planet Erlang or do you go back to planet Earth?"

  print "> "
  choice = $stdin.gets.chomp

  if choice.include?("Erlang") || choice.include?("erlang")
    erlang
  elsif choice.include?("Earth") || choice.include?("earth")
    earth
  else 
    dead("You float around aimlessly in space and run out of oxygen, and die.")
  end
end 

start
  
