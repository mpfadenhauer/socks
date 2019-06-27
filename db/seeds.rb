require 'faker'

puts "destroying previous database"
Transaction.destroy_all
Sock.destroy_all


puts "creating users"
url = "http://static.giantbomb.com/uploads/original/9/99864/2419866-nes_console_set.png"

user1 = User.create!(email: Faker::Internet.unique.email,
                    password:'123456',
                    username: "SockPrincess",
                    photo: 'https://kitt.lewagon.com/placeholder/users/random',
                    location:Faker::Address.unique.city)
user2 = User.create!(email: Faker::Internet.unique.email,
                    password:'123456',
                    username: "BenCiety",
                    photo: 'https://kitt.lewagon.com/placeholder/users/random',
                    location:Faker::Address.unique.city)

user3 = User.create!(email: Faker::Internet.unique.email,
                    password:'123456',
                    username: "socklover123",
                    photo: 'https://kitt.lewagon.com/placeholder/users/random',
                    location:Faker::Address.unique.city)


puts "creating socks"

Sock.create!(
          title: "Purple and blue polka sock",
          description: "it's Purple with blue polka dots, i have had this pair for the past two years and lost the other",
          color: "Purple",
          pattern: "Polka dots",
          size: "36-41",
          sock_type: "Quarter/Anklets",
          brand: "Cozy toes",
          season: "Spring",
          age: 2,
          price: "10",
          user: user1,
          remote_photo_url: "https://www.cosytoes.co.nz/ic/2027616930/merino_wool_socks_purple_polka_dot_cosy_toes.jpg"
        )

Sock.create!(
          title: "White Nike sock",
          description: "Simple white sock with the Nike logo cause we all lose those ",
          color: "White",
          pattern: "Solid",
          size: "42-46",
          sock_type: "Quarter/Anklets",
          brand: "Nike",
          season: "Summer",
          age: 4,
          price: "0.5",
          user: user3,
          remote_photo_url: "https://pbs.twimg.com/media/B2mMiUlCcAABgKr.jpg"
        )

Sock.create!(
          title: "My lucky sock",
          description: "It has helped me a lot but now it's time to move on. still can't wash it though",
          color: "Blue",
          pattern: "Solid",
          size: "42-46",
          sock_type: "Mid-calf/Crew",
          brand: "adidas",
          season: "Winter",
          age: 8,
          price: "10",
          user: user3,
          remote_photo_url: "https://cdn-images-1.medium.com/max/2600/1*cnwA0czVCFfk-88L6AYdCQ.jpeg"
        )

Sock.create!(
          title: "The Emo Grandpa sock",
          description: "Lost it a few months age, glad i finally have a place to share it",
          color: "Black",
          pattern: "Solid",
          size: "42-46",
          sock_type: "Mid-calf/Crew",
          brand: "Ashmolean",
          season: "Autumn",
          age: 8,
          price: "5",
          user: user2,
          remote_photo_url: "https://shop.ashmolean.org/pub/media/catalog/product/cache/e4d64343b1bc593f1c5348fe05efa4a6/h/t/httpclientfileuploads.s3-eu-west-1.amazonaws.comash-m2andy-sock-hole-socks.jpg"
        )

Sock.create!(
          title: "Striped sock",
          description: "I loved this sock while i had it but i should let it go now, it's been too lonely for too long",
          color: "Black",
          pattern: "Striped",
          size: "36-41",
          sock_type: "Knee high",
          brand: "Happy socks",
          season: "Autumn",
          age: 8,
          price: "7",
          user: user1,
          remote_photo_url: "https://pbs.twimg.com/media/B-KtigqIQAE06pX.jpg"
        )

Sock.create!(
          title: "Red wool sock",
          description: "Nice red sock to keep you warm at night",
          color: "Red",
          pattern: "Solid",
          size: "47-51",
          sock_type: "Ped/Low cut",
          brand: "sock drawer",
          season: "Winter",
          age: 8,
          price: "7",
          user: user1,
          remote_photo_url: "https://pbs.twimg.com/profile_images/292984568/DSC00323_400x400.jpg"
        )

Sock.create!(
          title: "White and blue sock",
          description: "It's 4 years old but feels brand new, great quality",
          color: "Blue",
          pattern: "Striped",
          size: "36-41",
          sock_type: "Mid-calf/Crew",
          brand: "sock drawer",
          season: "Summer",
          age: 4,
          price: "2",
          user: user1,
          remote_photo_url: "https://stodmor.files.wordpress.com/2010/04/spring-break-2010-018.jpg"
        )

Sock.create!(
          title: "Black red&green stripes",
          description: "My son saw the website and decided he wants to give all his lonely socks to better familys, here he is with his favorite sock striped",
          color: "Red",
          pattern: "Striped",
          size: "36-41",
          sock_type: "Over the knee",
          brand: "Happy socks",
          season: "Autumn",
          age: 6,
          price: "10",
          user: user2,
          remote_photo_url: "https://scontent.cdninstagram.com/vp/8bd3f59055029b0b7d01fc45e258c27c/5D3E2EF8/t51.2885-15/e35/c0.134.1080.1080a/s480x480/13267516_1471632016187413_335657113_n.jpg?_nc_ht=scontent-sea1-1.cdninstagram.com"
        )

Sock.create!(
          title: "Smiley sock",
          description: "Yellow ",
          color: "Yellow",
          pattern: "Solid",
          size: "47-51",
          sock_type: "Quarter/Anklets",
          brand: "Happy socks",
          season: "Summer",
          age: 1,
          price: "15",
          user: user1,
          remote_photo_url: "https://i.pinimg.com/736x/0a/ca/0d/0aca0d33cf1f262db0776ca37786fc0e.jpg"
        )

Sock.create!(
          title: "Shark sock",
          description: "Baby shark todo todo todo to do, stay on barnd, get it now",
          color: "Blue",
          pattern: "Shape",
          size: "42-46",
          sock_type: "Mid-calf/Crew",
          brand: "Teeturtle",
          season: "Summer",
          age: 2,
          price: "20",
          user: user3,
          remote_photo_url: "https://cdn.shopify.com/s/files/1/1194/9756/products/Mens_Shark_Model_1400x.jpg?v=1461898467"
        )

Sock.create!(
          title: "Space sock",
          description: "I am giving away the right one (i lost the left)",
          color: "Blue",
          pattern: "Shape",
          size: "42-46",
          sock_type: "Mid-calf/Crew",
          brand: "Good luck sock",
          season: "Summer",
          age: 2,
          price: "8",
          user: user3,
          remote_photo_url: "https://cdn.shopify.com/s/files/1/1415/1894/products/1204-Good_Luck_Sock-Space_Crew_Socks-v2.jpg?v=1533497951"
        )

Sock.create!(
          title: "Pink sock",
          description: "Beautiful pink sock to upgrade your style instantly",
          color: "Pink",
          pattern: "Solid",
          size: "36-41",
          sock_type: "Quarter/Anklets",
          brand: "Cozy toes",
          season: "Summer",
          age: 2,
          price: "20",
          user: user2,
          remote_photo_url: "https://res.cloudinary.com/dctkoo85s/image/upload/c_fill,h_220,w_600/v1561464703/pbyyhfdtzhr6sj4lbzsf.jpg"
        )

Sock.create!(
          title: "Heart sock",
          description: "I loved this one but now it's gone, so whoever wants the other.. hit me up,it's good quality",
          color: "White",
          pattern: "Shape",
          size: "36-41",
          sock_type: "Ped/Low cut",
          brand: "Cozy toes",
          season: "Summer",
          age: 2,
          price: "20",
          user: user1,
          remote_photo_url: "https://res.cloudinary.com/dctkoo85s/image/upload/c_fill,h_220,w_600/v1561465180/co1auphglttfceb2jczv.jpg"
        )

Sock.create!(
          title: "Bilbi sock",
          description: "tall sock, nice for going out.. of course if you have the pair",
          color: "Red",
          pattern: "Striped",
          size: "36-41",
          sock_type: "Knee high",
          brand: "Stance",
          season: "Summer",
          age: 1,
          price: "25",
          user: user1,
          remote_photo_url: "https://res.cloudinary.com/dctkoo85s/image/upload/c_fill,h_180,w_280/v1561465328/hudee6vyu1tjshstvnfx.jpg"
        )

Sock.create!(
          title: "Knitting soxy back",
          description: "long sock to keep you warm",
          color: "Black",
          pattern: "Solid",
          size: "47-51",
          sock_type: "Knee high",
          brand: "Cozy toe",
          season: "Winter",
          age: 1,
          price: "25",
          user: user3,
          remote_photo_url: "https://res.cloudinary.com/dctkoo85s/image/upload/c_fill,h_180,w_280/v1561465328/hudee6vyu1tjshstvnfx.jpg"
        )
Sock.create!(
          title: "Stripes",
          description: "has blue red and white srtipes",
          color: "White",
          pattern: "Solid",
          size: "42-46",
          sock_type: "Knee high",
          brand: "Stance",
          season: "Winter",
          age: 1,
          price: "17",
          user: user3,
          remote_photo_url: "https://res.cloudinary.com/dctkoo85s/image/upload/c_fill,h_220,w_600/v1561465797/qk7rvycfldk9jdtiu2kd.jpg"
        )

puts ('creating reviews')

Review.create!(
         rating: 5,
         description:"this guy knows what he's doing.",
         user_reviewed_id: 2,
         review_giver_id: 1
         )

Review.create!(
         rating: 4,
         description:"amazing sock range, could be a bit pricy sometimes",
         user_reviewed_id: 1,
         review_giver_id: 2
         )

Review.create!(
         rating: 1,
         description:"sock didn't match description At all",
         user_reviewed_id: 1,
         review_giver_id: 3
         )

Review.create!(
         rating: 5,
         description:"takes great care of her socks, 10/10",
         user_reviewed_id: 2,
         review_giver_id: 3
         )

Review.create!(
         rating: 5,
         description:"i can really see your enthusiasm and love for what you do, keep on doing that!",
         user_reviewed_id: 3,
         review_giver_id: 1
         )

Review.create!(
         rating: 2,
         description:"not proffesional",
         user_reviewed_id: 3,
         review_giver_id: 2
         )



puts "all done!"

