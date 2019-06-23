puts "creating 3 seeds"
user = User.create!(email:"mayaa@email.com", password:'123456')


puts "first"
Sock.create!(
          title: "Red and white polka sock",
          description: "it's white with red polka dots, i have had this pair for the past two years and lost the other",
          color: "white",
          pattern: "ploka dots",
          min_size: 39,
          max_size: 46,
          sock_type: "knee-high",
          brand: "Puka",
          season: "summer",
          age: 2,
          price: "10",
          user: user
        )
puts "second"
Sock.create!(
          title: "White Nike socks",
          description: "Simple white sock with the Nike logo cause we all lose those ",
          color: "white",
          pattern: "none",
          min_size: 39,
          max_size: 46,
          sock_type: "liner",
          brand: "Nike",
          season: "summer",
          age: 1,
          price: "0.5",
          user: user
        )

puts "third"
Sock.create!(
          title: "My lucky sock",
          description: "It has helped me a lot but now it's time to move on. still can't wash it though",
          color: "black",
          pattern: "none",
          min_size: 36,
          max_size: 38,
          sock_type: "mid calf",
          brand: "adidas",
          season: "winter",
          age: 8,
          price: "10",
          user: user
        )
puts "all done!"
