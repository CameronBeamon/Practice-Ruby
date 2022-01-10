def spare(score)
  score = score * 2
  return score
end

def strike(score)
  score = score + (roll * 2)
  return score
end

turn = 1
score = 0
#made it 20 for 2 rolls per 10 turns
while turn < 20
  puts "Please enter the number of pins you hit:"
  roll = gets.chomp.to_i
  turn = turn + 1
  if roll == 10
    #to check and see if they roll a 10 again
    while roll == 10
      puts "Your roll gets doubled! What did you roll next: "
      roll = gets.chomp.to_i
      #to end the game if they roll perfectly
      if turn == 20
        score = strike(score)
        break
      else
        score = strike(score)
        # increase the turn by 2 so if they roll a strike then it goes ot the next round skipping even numbers
        turn = turn + 2
      end
    end
  else
    while true
      puts "How many did you spare?:"
      spare = gets.chomp.to_i
      if spare == 0
        turn = turn + 1
        break
      elsif spare > 10 - roll
        puts "Please enter a valid value, you did not hit that much in a spare."
        #if the turn is even I am assuming that it is the second turn
      elsif turn.even? == true && roll + spare == 10
        score = spare(score)
        turn = turn + 1
        break
      else
        score = score + roll + spare
        turn = turn + 1
        break
      end
    end
  end
end
p "This is your score: #{score}"
