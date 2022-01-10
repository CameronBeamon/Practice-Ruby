require "tty-table"

table = TTY::Table.new(header: ["id", "First Name", "Second Name", "Salary", "Active"], rows: [])
puts table.render :unicode
p table.rows
# return
while true
  total = table.rows_size
  puts "EMPLOYEE's (#{total} total)"
  puts table.render :unicode
  puts "[C]reate [R]ead [U]pdate [D]elete [Q]uit"
  input = gets.chomp

  if input.upcase == "C" #create
    puts "Id:"
    id = gets.chomp.to_i
    puts "First Name:"
    first_name = gets.chomp
    puts "Second Name:"
    second_name = gets.chomp
    puts "Salary:"
    salary = gets.chomp
    puts "Active?:"
    active = gets.chomp
    table << [id, first_name, second_name, salary, active]
  elsif input.upcase == "R" #read
    puts "Please enter the ID of the employee:"
    inquiry = gets.chomp
    i = 0
    while i < table.rows_size
      if table[i, 0].to_i == inquiry.to_i
        puts "Here is your Employee's information:"
        puts table[i]
        #need to work on this, why isn't it showing?
      elsif i == table.rows_size
        puts "Employee not found."
      end
      i = i + 1
    end
  elsif input.upcase == "U" #update still needs work
    puts "Please enter the ID of the employee you'd like to update:"
    update_inquiry = gets.chomp
    i = 0
    while i < table.rows_size
      if table[i, 0].to_i == update_inquiry.to_i
        puts "What would you like to update?:"
        puts "[I]d [F]irst Name [S]econd Name S[A]lary A[C]tive"
        selection = gets.chomp
        if selection.upcase == "I"
          #the problem starts here, ask why I can't make a full edit at a specific point
          puts "Please enter a new ID"
          new_id = gets.chomp

          puts "employee has been updated: #{table[i]}"
          break
        elsif selection.upcase == "F"
          table[i, 1] = gets.chomp
          puts "employee has been updated: #{table[i]}"
          break
        elsif selection.upcase == "S"
          table[i, 2] = gets.chomp
          puts "employee has been updated: #{table[i]}"
          break
        elsif selection.upcase == "A"
          table[i, 3] = gets.chomp
          puts "employee has been updated: #{table[i]}"
          break
        elsif selection.upcase == "C"
          table[i, 4] = gets.chomp
          puts "employee has been updated: #{table[i]}"
          break
        end
      end
      i = i + 1
    end
  elsif input.upcase == "D" #delete
    #how do you delete a whole row
  elsif input.upcase == "Q" #quit
    break
  else
  end
end
