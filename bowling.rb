def spare(score)
  score = score * 2
  return score
end
def strike(score)
  score = score + (roll * 2)

turn = 1
score = 0
while turn < 20
  puts "Please enter the number of pins you hit:"
  roll = gets.chomp.to_i
  turn = turn + 1
  if roll == 10
    while roll == 10
      puts "Your roll gets doubled! What did you roll next: "
      roll = gets.chomp.to_i
      if turn == 20
        score = score + (roll * 2)
        break
      else
        score = score + (roll * 2)
        turn = turn + 1
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
      elsif turn.even? == true && roll + spare == 10
        spare(score) = score
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
