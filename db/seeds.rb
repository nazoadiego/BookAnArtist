
#destroy all
#create users
##create some artist
#create bookings
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Booking.destroy_all
Offer.destroy_all
User.destroy_all

10.times do
  new_user = User.new(
    first_name: Faker::Name.name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    phone_number: Faker::PhoneNumber.phone_number,
    address: Faker::Address.full_address,
    password: 123_456
  )
  new_user.save!
end

guest_user = User.new(
  first_name: "The",
  last_name: "Guest",
  email: "Guest@app.com",
  phone_number: Faker::PhoneNumber.phone_number,
  address: Faker::Address.full_address,
  password: 123_123
)
guest_user.save!

puts 'Users created'

offer1 = Offer.create(
  artist_name: 'Kanye West',
  description: 'You know you can\'t Rome without Caesar. Or without Yeezy...',
  price: 80_500,
  user: User.first
)

offer1.photos.attach(
  io: File.open(Rails.root.join('app/assets/images/seed/kw.jpeg')),
  filename: 'kw.jpeg',
  content_type: 'image/jpeg'
)

offer2 = Offer.create(
  artist_name: 'Ariana Grande',
  description: 'I am more grande than your mother and you know it. Pero like... no hate.',
  price: 1200,
  user: User.first
)

offer2.photos.attach(
  io: File.open(Rails.root.join('app/assets/images/seed/ariana.jpeg')),
  filename: 'ariana.jpeg',
  content_type: 'image/jpeg'
)

offer3 = Offer.create(
  artist_name: 'Bad Bunny',
  description: 'Yo no soy tu pana pero le vamos a dar duro a esta party.',
  price: 600,
  user: User.first
)

offer3.photos.attach(
  io: File.open(Rails.root.join('app/assets/images/seed/bad-bunny.jpeg')),
  filename: 'bad-bunny.jpeg',
  content_type: 'image/jpeg'
)

offer4 = Offer.create(
  artist_name: 'Beyonce',
  description: 'I am your Queen B and that is all you need to know.',
  price: 150_000,
  user: User.first
)

offer4.photos.attach(
  io: File.open(Rails.root.join('app/assets/images/seed/Beyonce.jpeg')),
  filename: 'Beyonce.jpeg',
  content_type: 'image/jpeg'
)

offer5 = Offer.create(
  artist_name: 'Justin Bieber',
  description: 'I am open to perform to "non-beliebers"',
  price: 1000,
  user: User.first
)

offer5.photos.attach(
  io: File.open(Rails.root.join('app/assets/images/seed/biebs.jpeg')),
  filename: 'biebs.jpeg',
  content_type: 'image/jpeg'
)

offer6 = Offer.create(
  artist_name: 'Bruno Mars',
  description: '24k Magic Payments be gucci too',
  price: 24_000,
  user: User.last
)

offer6.photos.attach(
  io: File.open(Rails.root.join('app/assets/images/seed/bruno.jpg')),
  filename: 'bruno.jpg',
  content_type: 'image/jpg'
)

offer7 = Offer.create(
  artist_name: 'BTS',
  description: 'Boys with Luv for our ARMY.',
  price: 888_000,
  user: User.last
)

offer7.photos.attach(
  io: File.open(Rails.root.join('app/assets/images/seed/bts.jpeg')),
  filename: 'bts.jpeg',
  content_type: 'image/jpeg'
)

offer8 = Offer.create(
  artist_name: 'DJ Khaled',
  description: 'Anotha One. I got the 🔑s. And you know, all that.',
  price: 2800,
  user: User.last
)

offer8.photos.attach(
  io: File.open(Rails.root.join('app/assets/images/seed/djkhaled.jpeg')),
  filename: 'djkhaled.jpeg',
  content_type: 'image/jpeg'
)

offer9 = Offer.create(
  artist_name: 'Drake',
  description: 'I am your Champagne Papi.',
  price: 2500,
  user: User.last
)

offer9.photos.attach(
  io: File.open(Rails.root.join('app/assets/images/seed/drake.jpeg')),
  filename: 'drake.jpeg',
  content_type: 'image/jpeg'
)

offer10 = Offer.create(
  artist_name: 'Elton John',
  description: 'Don\'t shoot me, I\'m just the piano player!',
  price: 1000,
  user: User.last
)

offer10.photos.attach(
  io: File.open(Rails.root.join('app/assets/images/seed/elton.jpeg')),
  filename: 'elton.jpeg',
  content_type: 'image/jpeg'
)

offer11 = Offer.create(
  artist_name: 'Eminem',
  description: 'I am the Real Slim Shady',
  price: 750,
  user: User.last
)

offer11.photos.attach(
  io: File.open(Rails.root.join('app/assets/images/seed/Eminem.jpeg')),
  filename: 'Eminem.jpeg',
  content_type: 'image/jpeg'
)

offer12 = Offer.create(
  artist_name: 'Foo Fighters',
  description: 'They are all pretenders...',
  price: 650,
  user: User.first
)

offer12.photos.attach(
  io: File.open(Rails.root.join('app/assets/images/seed/foofighters.jpeg')),
  filename: 'foofighters.jpeg',
  content_type: 'image/jpeg'
)

offer13 = Offer.create(
  artist_name: 'Jay Z',
  description: 'I got 99 problems but a b... ain\'t one',
  price: 99_000,
  user: User.first
)

offer13.photos.attach(
  io: File.open(Rails.root.join('app/assets/images/seed/jayz.jpeg')),
  filename: 'jayz.jpeg',
  content_type: 'image/jpeg'
)

offer14 = Offer.create(
  artist_name: 'Jennifer Lopez',
  description: 'Sorry Legna from the block, JLO IS HERE.',
  price: 10_800,
  user: User.first
)

offer14.photos.attach(
  io: File.open(Rails.root.join('app/assets/images/seed/jlo.jpeg')),
  filename: 'jlo.jpeg',
  content_type: 'image/jpeg'
)

offer15 = Offer.create(
  artist_name: 'Andrea Boccelli',
  description: 'The Coolest Italian there will ever be. I am sorry Filippo. #SorryNotSorry',
  price: 6_500,
  user: User.last
)
offer15.photos.attach(
  io: File.open(Rails.root.join('app/assets/images/seed/andrea.jpeg')),
  filename: 'andrea.jpeg',
  content_type: 'image/jpeg'
)

offer16 = Offer.create(
  artist_name: 'Prince',
  description: 'But life is just a party, and parties weren\'t meant to last.',
  price: 80_000,
  user: User.last
)

offer16.photos.attach(
  io: File.open(Rails.root.join('app/assets/images/seed/prince.jpeg')),
  filename: 'prince.jpeg',
  content_type: 'image/jpeg'
)

offer17 = Offer.create(
  artist_name: 'Red Hot Chili Peppers',
  description: 'By the way I tried to say I\'d be there...',
  price: 8_000,
  user: User.last
)

offer17.photos.attach(
  io: File.open(Rails.root.join('app/assets/images/seed/RHCP.jpeg')),
  filename: 'RHCP.jpeg',
  content_type: 'image/jpeg'
)

offer18 = Offer.create(
  artist_name: 'Rihanna',
  description: 'Please join me under my umbrella.',
  price: 50_000,
  user: User.last
)

offer18.photos.attach(
  io: File.open(Rails.root.join('app/assets/images/seed/rihanna.jpeg')),
  filename: 'rihanna.jpeg',
  content_type: 'image/jpeg'
)

offer19 = Offer.create(
  artist_name: 'Shawn Mendes',
  description: 'Baby there\'s nothing holding me back!',
  price: 3_000,
  user: User.last
)

offer19.photos.attach(
  io: File.open(Rails.root.join('app/assets/images/seed/shawn.jpeg')),
  filename: 'shawn.jpeg',
  content_type: 'image/jpeg'
)

offer20 = Offer.create(
  artist_name: 'Stevie Wonder',
  description: 'Part-Time... Performer?',
  price: 8_000,
  user: User.last
)

offer20.photos.attach(
  io: File.open(Rails.root.join('app/assets/images/seed/Stevie.jpeg')),
  filename: 'Stevie.jpeg',
  content_type: 'image/jpeg'
)

puts 'Offers created'

# new_booking = Booking.new(
#   start_time: Time.now,
#   end_time: Time.now + 5,
#   user: User.find(rand(1..10)),
#   offer: Offer.find(rand(1..10))
# )
# new_booking.save!
