@tools = []

def prompt()
    print "> "
end

def tools()
    puts "You have the following tools available:"
    puts @tools
end

def earth
    puts "Cold War II has erupted between Russia and the United States"
    puts "Nuclear bombs have been released and landed in your country, wiping out cities from the thermal blast"
    puts "You suffer the effects of ionising radiation and feel ill"
    puts "Do you still stay on planet Earth, or do you go to planet Erlang in Elon Musk's SpaceX?"

    while true
        prompt;
        # converting input string to lowercase
        choice2 = $stdin.gets.chomp.downcase

        if choice2.include?("earth") 
            flood
            elsif choice2.include?("erlang") 
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

    prompt;
    # converting input string to lowercase
    gift = $stdin.gets.chomp.downcase

    if gift.include?("monkey") 
        puts "How could you give away your best friend Reece!  You animal!!"
        puts "The Erlangers are surprised at your ruthlessness and place you in their jails where you die"
        puts "The monkey lives happily in luxury amongst them."

        elsif gift.include?("apples") || gift.include?("apple")
        puts "How many apples do you give them?"


        #while loop is not comparing anything, so this is an infinite loop, which is why you need the dead method to get you out of it.


        #I Initially put print and how_much before the while loop so it didn't work - why not?
        while true
            prompt;
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

def planetchoice
    puts "You must first decide which planet to save"
    puts "Do you decide to land on planet Erlang, save Saturn or do you remain on planet Earth?"
    puts "Or would you like to go explore Jupiter? "
    puts "Or would you be brave enought to prevent the Colonization of Mars? "
    
    prompt;
    # converting input string to lowercase
    choice = $stdin.gets.chomp.downcase

    if choice.include?("erlang") 
        erlang
        elsif choice.include?("earth") 
        earth
        elsif choice.include?("saturn") 
        saturn
        elsif choice.include?("jupiter") 
        jupiter
        elsif choice.include?("mars") 
        mars
        else
        dead("You float around aimlessly in space and run out of oxygen, and die.")
    end
end

def saturn
    puts "Welcome to Saturn. The rings of Saturn are the most extensive ring system of any planet in the Solar System. They consist of countless small particles."
    sleep 2 #seconds
    puts "Your job if you choose to save this planet is to save the rings of Saturn. Do you accept?"

    prompt;
    # converting input string to lowercase
    savesaturn = $stdin.gets.chomp.downcase

    if savesaturn.include?("yes") 
        saturnrings
        elsif savesaturn.include?("no") 
        planetchoice
        else
        dead ("You could not decided if saturn should be saved and therefore ran out of oxygen. You die")
    end
end

def saturnrings
    puts "You made a brave choice to save the rings of saturn"
    sleep 2 #seconds
    puts "I hope you packed your spacesuit, to save the rings of Saturn you must orbit the planet along the rings"
    puts "Unlike earth Saturn has many moons so watch out they don't hit you"
    sleep 3 #seconds
    puts "Your riding the rings of Saturn and the moons are coming try and hit them off"
    sleep 5 #seconds
    moon_hits
end

def moon_hits
    generated_number= rand(10)
    if generated_number <= 5
        puts "You only got hit by #{generated_number} moons, nice work you've saved Saturn... which Planet will you save next?"
        planetchoice2
    else
    dead("The moons are coming hard and fast... you've been hit by #{generated_number} moons, your space suit is disintegrating and your oxygen has run out")
    end
end

def jupiter
  puts "Well done for being awesome in picking Jupiter"
  puts "Looks like you've brought more than sweat to this planet, what is that smell...."
  sleep 3 #seconds
  puts "yes yes, I'm being funny, since you've arrived on the gas giant, get it? No? Google it when you get back, if you get back muhaha"
  sleep 3 #seconds
  puts "How do you wish to proceed in this smelly environment (bear in mind, you may not be able to breathe soon)"
  puts "Option 1: Attack with stink bombs"
  sleep 2 #seconds
  puts "Option 2: Run around screaming that you can't breathe"
  sleep 2 #seconds
  puts "Or Option 3: Use the gas mask you managed to remember to bring with you"
  sleep 2 #seconds

  while true
    prompt;
    option = $stdin.gets.chomp

    if option.include?('1')
      puts "Someone was dropped as a baby..."
    elsif option.include?('2')
      puts "Really? Who is that going to truly help?"
    elsif option.include?('3')
      puts "Aren't you smart for bringing that with you? Lucky you."
      planetchoice2
    else
      planetchoice2
    end
  end
end


#mission to Mars
def mars
    puts "Welcome to the Red Planet. Mars is the most Earth-Like of all the planets. Russia is planning to colonise Mars. You must act fast!"
    sleep 3 #seconds
    puts "We understand that you had a hard time entering space and landing on Mars. Just stay focused... Crater sand buries you while you are getting distracted."
    sleep 3 #seconds
    puts "You'll be presented with two questions at once. We know, this is a poor timing, but please answer immediately."
    sleep 3 #seconds
    puts "Is there a water on Mars ? Is a day on Mars is longer than one on Earth ? [yes/no]" 
   
  
    
    prompt;
    # converting input string to lowercase
    answermars = $stdin.gets.chomp.downcase
    
    if answermars.include?("yes")
        marswinner
        elsif answermars.include?("no")
        dead ("That is not exactly true. You did not know that water on Mars is frozen in the ground, and a day on Mars is longer than one on Earth. It is time to die.")
        else
        planetchoice
    end
end

def marswinner
    puts "Congratulations for being so focused throughout."
    sleep 2 #seconds
    puts "Your children would live in piece on an independent Mars."
    planetchoice2     
end

def planetchoice2
    puts "You must decide where you would like to go next"
    puts "Would you like to go save planet Erlang, save Saturn, jump onto jupiter, mount mars or return to planet Earth?"
    prompt;
    # converting input string to lowercase
    choice = $stdin.gets.chomp.downcase

    if choice.include?("erlang") 
        erlang
        elsif choice.include?("earth") 
        earth
        elsif choice.include?("saturn") 
        saturn
        elsif choice.include?("mars")
        mars
        elsif choice.include? ("jupiter")
        jupiter
        else
        dead("You float around aimlessly in space and run out of oxygen, and die.")
    end
end

def nostart
    puts "Well you are rather boring"
    exit(0)
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
    puts "Welcome to planet Wars. An epic adventure where you have to save the solar system planet by planet."
    puts "Your task is to save all the planets before you run out of lives, are you ready to give it a go?"

    prompt;
    # converting input string to lowercase
    choice = $stdin.gets.chomp.downcase

    if choice.include?("yes") 
        planetchoice
        elsif choice.include?("no") 
        nostart
        else
        dead("None starters get nowhere, answer yes or no next time")
    end
end


start
