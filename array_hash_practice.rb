#  2. Convert an array of hashes into a hash using the :id key from the array's hashes as the keys in the new hash.
#     For example, [{id: 1, color: "blue", price: 32}, {id: 2, color: "red", price: 12}] becomes {1 => {id: 1, color: "blue", price: 32}, 2 => {id: 2, color: "red", price: 12}}.

array = [{ id: 1, color: "blue", price: 32 }, { id: 2, color: "red", price: 12 }]
new_hash = {}

i = 0

while i < array.length
  new_hash[array[i][:id]] = array[i]
  i = i + 1
end

pp new_hash

# 10. Start with an array of numbers and create a new array with each number converted into a string.
#     For example, [1, 2, 3] becomes ["1", "2", "3"].

first_array = [1, 2, 3]
second_array = []
i = 0

while i < first_array.length
  second_array << first_array[i].to_s
  i = i + 1
end

p second_array
