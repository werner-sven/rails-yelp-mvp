

Restaurant.delete_all
Review.delete_all

puts "All Restaurants and Reviews are deleted"

category = ["chinese", "italian", "japanese", "french", "belgian"]
phone_numbers = ["123123", "124323434t32r34134", "9999"]
name = ["Jonathan Restaurant", "LW", "Thre66"]

restaurants_all = []

9.times do
  restaurants_all << Restaurant.create!(name: name.sample, phone_number: phone_numbers.sample, address: "Barcelona", category: category.sample )
end

puts "Nine Restaurants created"



rating = [0, 1 , 2 ,3 ,4 ,5]
30.times do
Review.create(rating: rating.sample, content: "This is a nice restaurant Go there!", restaurant_id: restaurants_all.sample.id )
end

puts "30 Reviews created"
