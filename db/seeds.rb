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

puts 'creating 4 dog owners'

user1 = User.new(
  first_name: "Lukáš",
  last_name: "Musílek",
  email: "lukas@gmail.com",
  password: "123456"
)
user1.save!

user2 = User.new(
  first_name: "Heba",
  last_name: "Malik",
  email: "heba@gmail.com",
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

puts 'created 4 dog owners'

puts 'creating 2 dog renters'

user5 = User.new(
  first_name: "Borhan",
  last_name: "Boulandier",
  email: "padre@gmail.com",
  password: "123456"
)
user5.save!

user5 = User.new(
  first_name: "Rebecca",
  last_name: "Lim",
  email: "becca@gmail.com",
  password: "123456"
)
user5.save!

puts 'created 2 dog renters'

puts 'creating 12 dogs!'

# ------- user 1 -------
dog1 = Dog.new(
  name: "Gonzalez",
  breed: "Pug",
  location: "London",
  description: "very playful, makes odd noises",
  photo_url: "https://images.unsplash.com/photo-1518020382113-a7e8fc38eac9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=834&q=80",
  rate: "7"
)
dog1.user = user1
dog1.save!

dog2 = Dog.new(
  name: "Bruno",
  breed: "Frenchie",
  location: "London",
  description: "people person so don't let them knick him",
  photo_url: "https://images.unsplash.com/photo-1583512603805-3cc6b41f3edb?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8ZG9nfGVufDB8MnwwfHw%3D&auto=format&fit=crop&w=900&q=60",
  rate: "5"
)
dog2.user = user1
dog2.save!

dog3 = Dog.new(
  name: "Conchita",
  breed: "Chihuahua",
  location: "London",
  description: "full of herself",
  photo_url: "https://images.unsplash.com/photo-1636304128520-05dab005078e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NTB8fGNoaWh1YWh1YXxlbnwwfDF8MHx8&auto=format&fit=crop&w=900&q=60",
  rate: "3"
)
dog3.user = user1
dog3.save!

# ------- user 2 -------

dog4 = Dog.new(
  name: "Edgar",
  breed: "Mastiff",
  location: "Lisbon",
  description: "gentle giant that farts a lot",
  photo_url: "https://images.unsplash.com/photo-1600369671608-7aad7dac5236?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8N3x8ZG9nfGVufDB8MnwwfHw%3D&auto=format&fit=crop&w=900&q=60",
  rate: "9"
)
dog4.user = user2
dog4.save!

dog5 = Dog.new(
  name: "Filipe",
  breed: "Labrador",
  location: "Lisbon",
  description: "sneezes a lot, dios mio",
  photo_url: "https://images.unsplash.com/photo-1601950620185-f9c6a84b2c15?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjN8fGRvZ3xlbnwwfDJ8MHx8&auto=format&fit=crop&w=900&q=60",
  rate: "8"
)
dog5.user = user2
dog5.save!

# ------- user 3 -------

dog6 = Dog.new(
  name: "Shirley",
  breed: "Shi-tzu",
  location: "Caracas",
  description: "often runs away",
  photo_url: "https://images.unsplash.com/photo-1437957146754-f6377debe171?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8c2hpdHp1fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=900&q=60",
  rate: "7"
)
dog6.user = user3
dog6.save!

dog7 = Dog.new(
  name: "Chica",
  breed: "Whippet",
  location: "Caracas",
  description: "tone deaf, flatulence issues",
  photo_url: "https://images.unsplash.com/photo-1521231517954-1d92f2e95399?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80",
  rate: "8"
)
dog7.user = user3
dog7.save!

dog8 = Dog.new(
  name: "Romeo",
  breed: "Pitbull",
  location: "Caracas",
  description: "will eat your shoes then vomit",
  photo_url: "https://images.unsplash.com/photo-1520168133788-3c084821ec1f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NjB8fGRvZ3xlbnwwfDJ8MHx8&auto=format&fit=crop&w=900&q=60",
  rate: "8"
)
dog8.user = user3
dog8.save!

dog9 = Dog.new(
  name: "Maria",
  breed: "Border Collie",
  location: "Caracas",
  description: "only understands Spanish",
  photo_url: "https://images.unsplash.com/photo-1550952080-c2c26881b9d9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NDV8fGJsYWNrJTIwZG9nfGVufDB8MnwwfHw%3D&auto=format&fit=crop&w=900&q=60",
  rate: "8"
)
dog9.user = user3
dog9.save!

dog10 = Dog.new(
  name: "Doug",
  breed: "English Bulldog",
  location: "Caracas",
  description: "bit of a chav",
  photo_url: "https://images.unsplash.com/photo-1522260448087-a56a0fd5282e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8ZW5nbGlzaCUyMGJ1bGxkb2d8ZW58MHwyfDB8fA%3D%3D&auto=format&fit=crop&w=900&q=60",
  rate: "9"
)
dog10.user = user3
dog10.save!

# ------- user 4 -------

dog11 = Dog.new(
  name: "Indiana",
  breed: "German Shepherd",
  location: "Houston",
  description: "will walk you",
  photo_url: "https://images.unsplash.com/photo-1589391248100-0da9b7819dab?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8Z2VybWFuJTIwc2hlcGhlcmR8ZW58MHwyfDB8fA%3D%3D&auto=format&fit=crop&w=900&q=60",
  rate: "3"
)
dog11.user = user4
dog11.save!

dog12 = Dog.new(
  name: "Pootie",
  breed: "Poodle",
  location: "Houston",
  description: "controversial opinions about Ukraine",
  photo_url: "https://images.unsplash.com/photo-1625564880755-e8458e31cc7b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NzR8fGRvZ3xlbnwwfDJ8MHx8&auto=format&fit=crop&w=900&q=60",
  rate: "2"
)
dog12.user = user4
dog12.save!

puts '12 dogs created!'
