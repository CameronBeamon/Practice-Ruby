array = []

5.times do
  puts "Please enter the first name:"
  first_name = gets.chomp
  puts "Please enter the last name:"
  last_name = gets.chomp
  while true
    puts "Please enter the email:"
    email = gets.chomp
    if email.end_with?(".com") && email.include?("@")
      break
    else
      puts "Invalide input please try again."
    end
  end
  ran_num = rand(10 ** 10)
  array << { :first_name => first_name, :last_name => last_name, :email => email, :account_num => ran_num }
  p array
end

i = 0

while i < array.length
  puts "FIRST NAME: #{array[i][:first_name]}"
  puts "LAST NAME: #{array[i][:last_name]}"
  puts "EMAIL: #{array[i][:email]}"
  puts "ACCT: #{array[i][:account_num]}"
  puts " "
  i = i + 1
end

puts "Please enter account number:"
inquiry = gets.chomp

j = 0

while j < array.length
  if inquiry.to_i == array[j][:account_num]
    p array[j]
    break
  end
  j = j + 1
end
