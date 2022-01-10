array = []

i = 0
ran_num = Random.new
ran_num.rand(100)
while i < 10
  array << ran_num
  i = i + 1
end
p array

j = 0
while j < array.length
  array[i] = array[i] * 3
  j = j + 1
end

p array
