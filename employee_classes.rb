class Item
  attr_reader :name, :color, :price, :rating
  attr_writer :name, :color, :price, :rating

  def initialize(describe_hash)
    @name = describe_hash[:name]
    @color = describe_hash[:color]
    @price = describe_hash[:price]
    @rating = describe_hash[:rating]
  end

  def output_item_info
    puts "#{@name} is #{@color}. The price is $#{@price} and it has a rating of #{@rating}"
  end
end

apple = Item.new name: "Apple", color: "Red", price: 1.99, rating: 10
orange = Item.new name: "Orange", color: "Tangerine", price: 0.98, rating: 8.5
banana = Item.new name: "Banana", color: "Yellow", price: 2.00, rating: 10
apple.output_item_info
orange.output_item_info
banana.output_item_info

puts apple.name
puts apple.name = "New Apple!"
puts apple.name
