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
                    remote_photo_url: 'https://pickaface.net/gallery/avatar/unr_example_161122_0416_qss004g.png',
                    location: "Berlin"
                    )
user2 = User.create!(email: Faker::Internet.unique.email,
                    password:'123456',
                    username: "BenCiety",
                    remote_photo_url: 'http://vietplace.com/Portals/0/Upload/avatar6_86142c6e-63e2-4700-89bf-e3804a75526a.png',
                    location: "New york"
                    )
user3 = User.create!(email: Faker::Internet.unique.email,
                    password:'123456',
                    username: "socklover123",
                    remote_photo_url: 'http://demo.powowbox.com/powowbox/avatar_demo/Jane_0001.png',
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
          remote_photo_url: "https://www.schoenwetterfront.de/wp-content/uploads/2019/10/socken-bembel-1024x1024.jpg"
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
          remote_photo_url: "https://www.schoenwetterfront.de/wp-content/uploads/2019/10/socken-griesoss-1024x1024.jpg"
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
          remote_photo_url: "https://www.abc-kinder.de/wp-content/uploads/2019/02/bigstock-Maks08-44480329-700x469-653x393.jpg"
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
          remote_photo_url: "https://www.schoenwetterfront.de/wp-content/uploads/2019/10/socken-hopfen-1024x1024.jpg"
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
          remote_photo_url: "https://cdn2.familie.de/46/d6/46/bf7435bcfd7d957cb3bbbdb7fd_cmUgOTUwIDQ3NQM0NmI0YmQ5Y2JkZg==_gestreifte-socken-pastell-410-250770.jpg"
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
          remote_photo_url: "https://cdn.shopify.com/s/files/1/0332/8943/7317/products/image_f59be39c-38d5-41fd-aa5e-f7e667a96545_500x.png?v=1585681891"
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
          remote_photo_url: "https://www.hollywoodsuits.com/media/catalog/product/cache/e782613fbf37faddbcd4c46c206dd1bf/5/g/5g16-1032-02-navy-a_1_1.jpg"
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
          remote_photo_url: "https://static.vangraaf.com/img/unabux-feinstrick-socken_pdstandard_461900-0001_stillfront_1.jpg"
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
          remote_photo_url: "https://fabletics-us-cdn.justfab.com/media/images/products/AC1828841-2480/AC1828841-2480-1_998x1498.jpg"
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

