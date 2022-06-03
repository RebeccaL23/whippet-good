# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# in order of depedency, destroy then recreate
Dog.destroy_all
User.destroy_all
Review.destroy_all

puts 'creating 5 dog owners'

user1 = User.new(
  first_name: "Lukáš",
  last_name: "Musílek",
  email: "lukas@gmail.com",
  password: "123456"
)
user1.save!

user2 = User.new(
  first_name: "Giorgio",
  last_name: "Gristina",
  email: "gman@gmail.com",
  password: "123456"
)
user2.save!

user3 = User.new(
  first_name: "Roel",
  last_name: "De Jong",
  email: "roel@gmail.com",
  password: "123456"
)
user3.save!

user4 = User.new(
  first_name: "Alán",
  last_name: "Rodriguez",
  email: "alan@gmail.com",
  password: "123456"
)
user4.save!

user5 = User.new(
  first_name: "Heba",
  last_name: "Malik",
  email: "heba@gmail.com",
  password: "123456"
)
user5.save!

puts 'created 5 dog owners'

puts 'creating 2 dog renters'

user6 = User.new(
  first_name: "Borhan",
  last_name: "Boulandier",
  email: "padre@gmail.com",
  password: "123456"
)
user6.save!

user7 = User.new(
  first_name: "Rebecca",
  last_name: "Lim",
  email: "becca@gmail.com",
  password: "123456"
)
user7.save!


puts 'created 2 dog renters'
puts "that's #{User.count} users total"

puts 'now creating 24 dogs!'

puts "#{user1.first_name} has 3 dogs"

dog = Dog.new(
  name: "Gonzalez",
  breed: "Pug",
  location: "Westminster",
  description: "makes odd noises",
  photo_url: "https://images.unsplash.com/photo-1518020382113-a7e8fc38eac9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=834&q=80",
  rate: "7"
)
dog.user = user1
dog.save!

dog = Dog.new(
  name: "Bruno",
  breed: "Frenchie",
  location: "Westminster",
  description: "was a Frenchie before it was cool",
  photo_url: "https://images.unsplash.com/photo-1583512603805-3cc6b41f3edb?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8ZG9nfGVufDB8MnwwfHw%3D&auto=format&fit=crop&w=900&q=60",
  rate: "5"
)
dog.user = user1
dog.save!

dog = Dog.new(
  name: "Conchita",
  breed: "Chihuahua",
  location: "Westminster",
  description: "full of herself",
  photo_url: "https://images.unsplash.com/photo-1636304128520-05dab005078e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NTB8fGNoaWh1YWh1YXxlbnwwfDF8MHx8&auto=format&fit=crop&w=900&q=60",
  rate: "3"
)
dog.user = user1
dog.save!

puts "#{user2.first_name} has 2 dogs"

dog = Dog.new(
  name: "Edgar",
  breed: "Mastiff",
  location: "Islington",
  description: "gentle giant but farts a lot",
  photo_url: "https://images.unsplash.com/photo-1600369671608-7aad7dac5236?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8N3x8ZG9nfGVufDB8MnwwfHw%3D&auto=format&fit=crop&w=900&q=60",
  rate: "9"
)
dog.user = user2
dog.save!

dog = Dog.new(
  name: "Filipe",
  breed: "Labrador",
  location: "Islington",
  description: "has seen stuff",
  photo_url: "https://images.unsplash.com/photo-1601950620185-f9c6a84b2c15?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjN8fGRvZ3xlbnwwfDJ8MHx8&auto=format&fit=crop&w=900&q=60",
  rate: "8"
)
dog.user = user2
dog.save!

puts "#{user3.first_name} has 5 dogs"

dog = Dog.new(
  name: "Shirley",
  breed: "Shi-tzu",
  location: "Brixton",
  description: "often runs away",
  photo_url: "https://images.unsplash.com/photo-1437957146754-f6377debe171?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8c2hpdHp1fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=900&q=60",
  rate: "7"
)
dog.user = user3
dog.save!

dog = Dog.new(
  name: "Chica",
  breed: "Whippet",
  location: "Brixton",
  description: "tone deaf with flatulence issues",
  photo_url: "https://images.unsplash.com/photo-1521231517954-1d92f2e95399?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80",
  rate: "8"
)
dog.user = user3
dog.save!

dog = Dog.new(
  name: "Romeo",
  breed: "Pitbull",
  location: "Brixton",
  description: "old soul",
  photo_url: "https://images.unsplash.com/photo-1520168133788-3c084821ec1f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NjB8fGRvZ3xlbnwwfDJ8MHx8&auto=format&fit=crop&w=900&q=60",
  rate: "8"
)
dog.user = user3
dog.save!

dog = Dog.new(
  name: "Maria",
  breed: "Border Collie",
  location: "Brixton",
  description: "only understands Spanish",
  photo_url: "https://images.unsplash.com/photo-1550952080-c2c26881b9d9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NDV8fGJsYWNrJTIwZG9nfGVufDB8MnwwfHw%3D&auto=format&fit=crop&w=900&q=60",
  rate: "8"
)
dog.user = user3
dog.save!

dog = Dog.new(
  name: "Doug",
  breed: "English Bulldog",
  location: "Brixton",
  description: "bit of a chav",
  photo_url: "https://images.unsplash.com/photo-1522260448087-a56a0fd5282e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8ZW5nbGlzaCUyMGJ1bGxkb2d8ZW58MHwyfDB8fA%3D%3D&auto=format&fit=crop&w=900&q=60",
  rate: "9"
)
dog.user = user3
dog.save!

puts "#{user4.first_name} has 6 dogs"

dog = Dog.new(
  name: "Indiana",
  breed: "German Shepherd",
  location: "Hackney",
  description: "former drug sniffer that sniffed a little too much",
  photo_url: "https://images.unsplash.com/photo-1589391248100-0da9b7819dab?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8Z2VybWFuJTIwc2hlcGhlcmR8ZW58MHwyfDB8fA%3D%3D&auto=format&fit=crop&w=900&q=60",
  rate: "3"
)
dog.user = user4
dog.save!

puts "creating 5 reviews for #{dog.name}!"

users = [user1, user2, user3, user4, user6, user7]

review = Review.new(
  rating: rand(4..5),
  content: "I had a great time with Indi; we went to the park to get some ice cream, to the lake for a swim and then we watched the sun go down over the heath ...",
  user: users.sample,
  dog: dog
)
review.save!

review = Review.new(
  rating: rand(4..5),
  content: "At first I was afraid, I was petrified. But then he wagged his tail and I felt love inside. I rented him for so many nights but now he's gone, now I don't how I'll survive!",
  user: users.sample,
  dog: dog
)
review.save!

review = Review.new(
  rating: rand(4..5),
  content: "Great dog, super cute, but sniffed my crotch a bit too much.",
  user: users.sample,
  dog: dog
)
review.save!

review = Review.new(
  rating: rand(4..5),
  content: "Complete babe magnet. Would rent again",
  user: users.sample,
  dog: dog
)
review.save!

review = Review.new(
  rating: rand(4..5),
  content: "OMG so cute!!! I could eat him alive I COULD EAT HIM ALIVE",
  user: users.sample,
  dog: dog
)
review.save!

puts "#{Review.count} reviews created for #{dog.name}!"

dog = Dog.new(
  name: "Pootie",
  breed: "Poodle",
  location: "Hackney",
  description: "controversial opinions",
  photo_url: "https://images.unsplash.com/photo-1625564880755-e8458e31cc7b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NzR8fGRvZ3xlbnwwfDJ8MHx8&auto=format&fit=crop&w=900&q=60",
  rate: "2"
)
dog.user = user4
dog.save!

dog = Dog.new(
  name: "Roberto",
  breed: "Poodle",
  location: "Hackney",
  description: "recovering alcoholic",
  photo_url: "https://images.unsplash.com/photo-1524549110215-6624d76a0b0b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=987&q=80",
  rate: rand(2...10)
)
dog.user = user4
dog.save!

dog = Dog.new(
  name: "Lady",
  breed: "Husky",
  location: "Hackney",
  description: "run run run run run sleep run run run run run",
  photo_url: "https://images.unsplash.com/photo-1561297108-a47d55d96a19?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTR8fGh1c2t5fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=900&q=60",
  rate: rand(2...10)
)
dog.user = user4
dog.save!

dog = Dog.new(
  name: "Ella",
  breed: "Whippet",
  location: "Hackney",
  description: "alpha female",
  photo_url: "https://images.unsplash.com/photo-1564067934826-445d6d4e22ed?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fHdoaXBwZXR8ZW58MHx8MHx8&auto=format&fit=crop&w=900&q=60",
  rate: rand(2...10)
)
dog.user = user4
dog.save!

dog = Dog.new(
  name: "Musashi",
  breed: "Shiba Inu",
  location: "Hackney",
  description: "superiority complex",
  photo_url: "https://images.unsplash.com/photo-1618173745201-8e3bf8978acc?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8c2hpYmElMjBpbnV8ZW58MHx8MHx8&auto=format&fit=crop&w=900&q=60",
  rate: rand(2...10)
)
dog.user = user4
dog.save!

puts "#{user5.first_name} has 8 dogs"

dog = Dog.new(
  name: "Paulo",
  breed: "Pug",
  location: "Shoreditch",
  description: "likes to bully larger dogs",
  photo_url: "https://images.unsplash.com/photo-1512356587788-4f5ad49c16e9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjB8fGRvZyUyMGJyZWVkfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=900&q=60",
  rate: rand(2...10)
)
dog.user = user5
dog.save!

dog = Dog.new(
  name: "Hans",
  breed: "Dachshund",
  location: "Shoreditch",
  description: "complete crypto bro",
  photo_url: "https://images.unsplash.com/photo-1641256979141-c643aba90d7c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8ZGFjaHN1bmR8ZW58MHx8MHx8&auto=format&fit=crop&w=900&q=60",
  rate: rand(2...10)
)
dog.user = user5
dog.save!

dog = Dog.new(
  name: "Karen",
  breed: "Cocker Spaniel",
  location: "Shoreditch",
  description: "mother of thirty",
  photo_url: "https://images.unsplash.com/photo-1588943211346-0908a1fb0b01?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTd8fGZ1bm55JTIwZG9nfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=900&q=60",
  rate: rand(2...10)
)
dog.user = user5
dog.save!

dog = Dog.new(
  name: "El Diablo",
  breed: "Jack Russell Terrier",
  location: "Shoreditch",
  description: "sponsored by Red Bull",
  photo_url: "https://images.unsplash.com/photo-1597513901462-48cb0a4055f8?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8amFjayUyMHJ1c3NlbHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=900&q=60",
  rate: rand(2...10)
)
dog.user = user5
dog.save!

dog = Dog.new(
  name: "Frank",
  breed: "Belgian Shepherd",
  location: "Shoreditch",
  description: "hits on dogs that are much younger",
  photo_url: "https://images.unsplash.com/photo-1606391274526-7d13559df5e6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTh8fG9sZCUyMGRvZ3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=900&q=60",
  rate: rand(2...10)
)
dog.user = user5
dog.save!

dog = Dog.new(
  name: "Apple",
  breed: "Chihuahua",
  location: "Shoreditch",
  description: "constantly going on about how well travelled they are (🇯🇵 🇰🇷 🇩🇪 🇨🇳 🇺🇸 🇫🇷 🇪🇸 🇮🇹 🇷🇺 🇬🇧)",
  photo_url: "https://images.unsplash.com/photo-1566793849773-e1375992cd59?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fGNoaWh1YWh1YXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=800&q=60",
  rate: rand(2...10)
)
dog.user = user5
dog.save!

dog = Dog.new(
  name: "Schmidt",
  breed: "Dobermann",
  location: "Shoreditch",
  description: "often seen with a thousand-yard stare",
  photo_url: "https://images.unsplash.com/photo-1615347657696-0144a9249d9b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8ZG9iZXJtYW58ZW58MHx8MHx8&auto=format&fit=crop&w=900&q=60",
  rate: rand(2...10)
)
dog.user = user5
dog.save!

dog = Dog.new(
  name: "Momo",
  breed: "Welsh Corgi",
  location: "Shoreditch",
  description: "former owner died, doesn't seem to like me very much",
  photo_url: "https://images.unsplash.com/photo-1600077106724-946750eeaf3c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8d2Vsc2glMjBjb3JnaXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=900&q=60",
  rate: "2"
)
dog.user = user5
dog.save!

puts "#{Review.count} reviews created for #{dog.name}!"

puts "creating 5 reviews for #{dog.name}!"

users = [user1, user2, user3, user4, user6, user7]

review = Review.new(
  rating: rand(1..3),
  content: "Just walked this yesterday. My husband and I were truly surprised,
  as it was much deeper a dog than the page let onto.
  It was, to me, a serious dog framed as a doggo.",
  user: users.sample,
  dog: dog
)
review.save!

review = Review.new(
  rating: rand(1..3),
  content: "This is my doggo. There are many like it, but this one is mine.
  My doggo is my best friend. It is my life. I must master it as I must master my life.",
  user: users.sample,
  dog: dog
)
review.save!

review = Review.new(
  rating: 1,
  content: "Do not borrow this dog! Far too sassy. Didn't understand my accent, dios mio",
  user: users.sample,
  dog: dog
)
review.save!

review = Review.new(
  rating: rand(1..3),
  content: "Stopped walking after 5 minutes; I had to carry it the rest of the way.",
  user: users.sample,
  dog: dog
)
review.save!

review = Review.new(
  rating: rand(1..3),
  content: "Rarely made eye contact during conversations; I felt like they never really listened to me.",
  user: users.sample,
  dog: dog
)
review.save!

puts "#{Review.count} reviews created for #{dog.name}!"

puts "#{Dog.count} dogs created!"
