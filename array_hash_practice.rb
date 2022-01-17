# #  2. Convert an array of hashes into a hash using the :id key from the array's hashes as the keys in the new hash.
# #     For example, [{id: 1, color: "blue", price: 32}, {id: 2, color: "red", price: 12}] becomes {1 => {id: 1, color: "blue", price: 32}, 2 => {id: 2, color: "red", price: 12}}.

# array = [{ id: 1, color: "blue", price: 32 }, { id: 2, color: "red", price: 12 }]
# new_hash = {}

# i = 0

# while i < array.length
#   new_hash[array[i][:id]] = array[i]
#   i = i + 1
# end

# pp new_hash

# # 10. Start with an array of numbers and create a new array with each number converted into a string.
# #     For example, [1, 2, 3] becomes ["1", "2", "3"].

# first_array = [1, 2, 3]
# second_array = []
# i = 0

# while i < first_array.length
#   second_array << first_array[i].to_s
#   i = i + 1
# end

# p second_array

# #  8. Start with an array of strings and create a new array with each string's first letter only.
# #     For example, ["hello", "goodbye"] becomes ["h", "g"].

# word_array = ["hello", "goodbye"]
# first_letter = []

# i = 0
# while i < word_array.length
#   first_letter << word_array[i][0]
#   i = i + 1
# end

# p first_letter

#  4. Start with an array of numbers and create a new array with only the even numbers.
#     For example, [2, 4, 5, 1, 8, 9, 7] becomes [2, 4, 8].
array = [2, 4, 5, 1, 8, 9, 7]
# new_array = []
# array.each do |number|
#   if number % 2 == 0
#     new_array << number
#   end
# end
# p new_array
e = array.select { |even_num| even_num.even? }
p e
