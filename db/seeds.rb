puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = {name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: "01632 960237", category: "italian"}
pizza_east =  {name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", phone_number: "01632 960834", category: "italian"}
belgian_paradise = {name: "Belgian Paradise", address: "58B Easy St, London E6 9PQ", phone_number: "01632 960243", category: "belgian"}
pizza_lore = {name: "Pizza Lore", address: "5A Cornelia St, London E1 6PQ", phone_number: "01632 960216", category: "italian"}
marrakech_service = {name: "Marrakech Service", address: "23A Nimbus High St, London 3PQ", phone_number: "01632 960248", category: "french"}

[dishoom, pizza_east, belgian_paradise, pizza_lore, marrakech_service].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
