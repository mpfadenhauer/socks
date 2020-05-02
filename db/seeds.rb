require 'faker'

puts "destroying previous database"
Review.destroy_all
Transaction.destroy_all
Sock.destroy_all
User.destroy_all

puts "creating users"
url = "http://static.giantbomb.com/uploads/original/9/99864/2419866-nes_console_set.png"

user1 = User.create!(email: Faker::Internet.unique.email,
                    password:'123456',
                    username: "SockPrincess",
                    remote_photo_url: 'https://res.cloudinary.com/dugbeilxh/image/upload/v1588444800/ymsmmxvx1nfdncqdlogx.png',
                    location: "Berlin"
                    )
user2 = User.create!(email: Faker::Internet.unique.email,
                    password:'123456',
                    username: "BenCiety",
                    remote_photo_url: 'https://res.cloudinary.com/dugbeilxh/image/upload/v1588444802/eychira7zohcls7aaewt.png',
                    location: "New york"
                    )
user3 = User.create!(email: Faker::Internet.unique.email,
                    password:'123456',
                    username: "socklover123",
                    remote_photo_url: 'https://res.cloudinary.com/dugbeilxh/image/upload/v1588444805/alraoanvgvbyfqnleduq.png',
                    location: "London"
                    )

puts "creating socks"

Sock.create!(
          title: "Beer sock",
          description: "it's Blue with Yellow beer cups, i have had this pair for the past two years and lost the other",
          color: "Blue",
          pattern: "Other",
          size: "36-41",
          sock_type: "Mid-calf",
          brand: "Cozy toes",
          season: "Spring",
          age: 2,
          price: "10",
          user: user1,
          remote_photo_url: "https://res.cloudinary.com/dugbeilxh/image/upload/c_fill,h_220,w_600/v1588444807/oxck7tsuly3dl1uthgof.jpg"
        )

Sock.create!(
          title: "Green sock with herbs",
          description: "Green sock with herbs. No wonder I loose the other one..",
          color: "Green",
          pattern: "Other",
          size: "42-46",
          sock_type: "Quarter/Anklets",
          brand: "Schoenwetter",
          season: "Summer",
          age: 4,
          price: "0.5",
          user: user3,
          remote_photo_url: "https://res.cloudinary.com/dugbeilxh/image/upload/c_fill,h_220,w_600/v1588444809/gcjoaj4r7ccjbvsh6b8i.jpg"
        )

Sock.create!(
          title: "My lucky sock",
          description: "It has helped me a lot but now it's time to move on. still can't wash it though",
          color: "Blue",
          pattern: "Striped",
          size: "42-46",
          sock_type: "Mid-calf/Crew",
          brand: "adidas",
          season: "Winter",
          age: 8,
          price: "10",
          user: user3,
          remote_photo_url: "https://res.cloudinary.com/dugbeilxh/image/upload/c_fill,h_220,w_600/v1588444811/kgaanypfhfpbequx6xi4.jpg"
        )

Sock.create!(
          title: "The Emo Grandpa sock",
          description: "Lost it a few months age, glad i finally have a place to share it",
          color: "Blue",
          pattern: "Other",
          size: "42-46",
          sock_type: "Mid-calf/Crew",
          brand: "Ashmolean",
          season: "Autumn",
          age: 8,
          price: "5",
          user: user2,
          remote_photo_url: "https://res.cloudinary.com/dugbeilxh/image/upload/c_fill,h_220,w_600/v1588444812/k6gk160r2d1sfalivpnj.jpg"
        )

Sock.create!(
          title: "Striped sock",
          description: "I loved this sock while i had it but i should let it go now, it's been too lonely for too long",
          color: "White",
          pattern: "Striped",
          size: "36-41",
          sock_type: "Knee high",
          brand: "Happy socks",
          season: "Autumn",
          age: 8,
          price: "7",
          user: user1,
          remote_photo_url: "https://res.cloudinary.com/dugbeilxh/image/upload/c_fill,h_220,w_600/v1588444815/nydrlajx7kdgku77mkto.jpg"
        )

Sock.create!(
          title: "Cat Sock Mint",
          description: "Nice Mint sock to keep you warm at night",
          color: "Mint",
          pattern: "Solid",
          size: "47-51",
          sock_type: "Ped/Low cut",
          brand: "sock drawer",
          season: "Winter",
          age: 8,
          price: "7",
          user: user1,
          remote_photo_url: "https://res.cloudinary.com/dugbeilxh/image/upload/c_fill,h_220,w_600/v1588444816/j4jjgr4huz7sdjdwo0ja.png"
        )

Sock.create!(
          title: "Blue sock with red hearts",
          description: "It's 4 years old but feels brand new, great quality",
          color: "Blue",
          pattern: "Other",
          size: "36-41",
          sock_type: "Mid-calf/Crew",
          brand: "sock drawer",
          season: "Summer",
          age: 4,
          price: "2",
          user: user1,
          remote_photo_url: "https://res.cloudinary.com/dugbeilxh/image/upload/c_fill,h_220,w_600/v1588444817/qiu4adyxy5qohqqhgsuv.jpg"
        )

Sock.create!(
          title: "Yello duck sock",
          description: "My son saw the website and decided he wants to give all his lonely socks to better familys, here he is with his favorite yellow sock",
          color: "Yellow",
          pattern: "Striped",
          size: "36-41",
          sock_type: "Over the knee",
          brand: "Happy socks",
          season: "Autumn",
          age: 6,
          price: "10",
          user: user2,
          remote_photo_url: "https://res.cloudinary.com/dugbeilxh/image/upload/c_fill,h_220,w_600/v1588444819/b7duotgurapioapflp2q.jpg"
        )

Sock.create!(
          title: "Smiley red sock",
          description: "Simple single red sock ",
          color: "Red",
          pattern: "Solid",
          size: "47-51",
          sock_type: "Quarter/Anklets",
          brand: "Happy socks",
          season: "Summer",
          age: 1,
          price: "15",
          user: user1,
          remote_photo_url: "https://res.cloudinary.com/dugbeilxh/image/uploadc_fill,h_220,w_600//v1588444821/fcxspqhlxqtadrtsdljy.jpg"
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
          remote_photo_url: "https://res.cloudinary.com/dugbeilxh/image/upload/c_fill,h_220,w_600/v1588444823/dg5uchehx11flto4zwxe.jpg"
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
          remote_photo_url: "https://res.cloudinary.com/dugbeilxh/image/upload/c_fill,h_220,w_600/v1588444824/whrz6sp0i92cdbyhmkrs.jpg"
        )

# Sock.create!(
#           title: "Pink sock",
#           description: "Beautiful pink sock to upgrade your style instantly",
#           color: "Pink",
#           pattern: "Solid",
#           size: "36-41",
#           sock_type: "Quarter/Anklets",
#           brand: "Cozy toes",
#           season: "Summer",
#           age: 2,
#           price: "20",
#           user: user2,
#           remote_photo_url: "https://res.cloudinary.com/dctkoo85s/image/upload/c_fill,h_220,w_600/v1561464703/pbyyhfdtzhr6sj4lbzsf.jpg"
#         )

# Sock.create!(
#           title: "Heart sock",
#           description: "I loved this one but now it's gone, so whoever wants the other.. hit me up,it's good quality",
#           color: "White",
#           pattern: "Shape",
#           size: "36-41",
#           sock_type: "Ped/Low cut",
#           brand: "Cozy toes",
#           season: "Summer",
#           age: 2,
#           price: "20",
#           user: user1,
#           remote_photo_url: "https://res.cloudinary.com/dctkoo85s/image/upload/c_fill,h_220,w_600/v1561465180/co1auphglttfceb2jczv.jpg"
#         )

# Sock.create!(
#           title: "Bilbi sock",
#           description: "tall sock, nice for going out.. of course if you have the pair",
#           color: "Red",
#           pattern: "Striped",
#           size: "36-41",
#           sock_type: "Knee high",
#           brand: "Stance",
#           season: "Summer",
#           age: 1,
#           price: "25",
#           user: user1,
#           remote_photo_url: "https://res.cloudinary.com/dctkoo85s/image/upload/c_fill,h_180,w_280/v1561465328/hudee6vyu1tjshstvnfx.jpg"
#         )

# Sock.create!(
#           title: "Knitting soxy back",
#           description: "long sock to keep you warm",
#           color: "Black",
#           pattern: "Solid",
#           size: "47-51",
#           sock_type: "Knee high",
#           brand: "Cozy toe",
#           season: "Winter",
#           age: 1,
#           price: "25",
#           user: user3,
#           remote_photo_url: "https://res.cloudinary.com/dctkoo85s/image/upload/c_fill,h_220,w_600/v1561465699/h0cianqwfuu6xrdutu7l.jpg"
#         )
# Sock.create!(
#           title: "Stripes",
#           description: "has blue red and white srtipes",
#           color: "White",
#           pattern: "Solid",
#           size: "42-46",
#           sock_type: "Knee high",
#           brand: "Stance",
#           season: "Winter",
#           age: 1,
#           price: "17",
#           user: user3,
#           remote_photo_url: "https://res.cloudinary.com/dctkoo85s/image/upload/c_fill,h_220,w_600/v1561465797/qk7rvycfldk9jdtiu2kd.jpg"
#         )

puts ('creating reviews')

Review.create!(
         rating: 5,
         description:"this guy knows what he's doing.",
         user_reviewed_id: user2.id,
         review_giver_id: user1.id
         )

Review.create!(
         rating: 4,
         description:"amazing sock range, could be a bit pricy sometimes",
         user_reviewed_id: user1.id,
         review_giver_id: user2.id
         )

Review.create!(
         rating: 1,
         description:"sock didn't match description At all",
         user_reviewed_id: user1.id,
         review_giver_id: user3.id
         )

Review.create!(
         rating: 5,
         description:"takes great care of her socks, 10/10",
         user_reviewed_id: user2.id,
         review_giver_id: user3.id
         )

Review.create!(
         rating: 5,
         description:"i can really see your enthusiasm and love for what you do, keep on doing that!",
         user_reviewed_id: user3.id,
         review_giver_id: user1.id
         )

Review.create!(
         rating: 2,
         description:"not professional",
         user_reviewed_id: user3.id,
         review_giver_id: user2.id
         )



puts "all done!"

