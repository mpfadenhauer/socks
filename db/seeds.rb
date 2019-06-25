puts "destroying database"
Transaction.destroy_all
Sock.destroy_all


puts "Database empty, creating 3 seeds"

puts "first"

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)






Sock.create!(
          title: "Red and white polka sock",
          description: "it's white with red polka dots, i have had this pair for the past two years and lost the other",
          color: "white",
          pattern: "Polka dots",
          size: '36-41',
          sock_type: "Knee high",
          brand: "Puka",
          season: "summer",
          age: 2,
          price: "10",
          user: User.last,
          remote_photo_url: "https://www.google.com/url?sa=i&source=images&cd=&ved=2ahUKEwjj-ZzByYTjAhUL3xoKHTIyB1sQjRx6BAgBEAU&url=https%3A%2F%2Fwww.zumiez.com%2Fhuf-green-buddy-black-crew-socks.html&psig=AOvVaw1oZWEqKeszWnda6634f66S&ust=1561550028730340"
        )

puts "second"

Sock.create!(
          title: "White Nike socks",
          description: "Simple white sock with the Nike logo cause we all lose those ",
          color: "white",
          pattern: "None",
          min_size: '42-46',
          sock_type: "Liner/Extra low cut",
          brand: "Nike",
          season: "summer",
          age: 1,
          price: "0.5",
          user: User.last,
          remote_photo_url: "https://www.google.com/url?sa=i&source=images&cd=&ved=2ahUKEwjj-ZzByYTjAhUL3xoKHTIyB1sQjRx6BAgBEAU&url=https%3A%2F%2Fwww.zumiez.com%2Fhuf-green-buddy-black-crew-socks.html&psig=AOvVaw1oZWEqKeszWnda6634f66S&ust=1561550028730340"
        )

puts "third"

Sock.create!(
          title: "My lucky sock",
          description: "It has helped me a lot but now it's time to move on. still can't wash it though",
          color: "black",
          pattern: "None",
          size: '36-41'
          sock_type: "Mid-calf/Crew",
          brand: "adidas",
          season: "winter",
          age: 8,
          price: "10",
          user: User.last,
          remote_photo_url: "https://www.google.com/url?sa=i&source=images&cd=&ved=2ahUKEwjj-ZzByYTjAhUL3xoKHTIyB1sQjRx6BAgBEAU&url=https%3A%2F%2Fwww.zumiez.com%2Fhuf-green-buddy-black-crew-socks.html&psig=AOvVaw1oZWEqKeszWnda6634f66S&ust=1561550028730340"
        )

puts "all done!"

