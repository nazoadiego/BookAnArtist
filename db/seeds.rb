
#destroy all
#create users
##create some artist
#create bookings
=======
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
  new_offer = Offer.new(
    artist_name: Faker::Music::Hiphop.artist,
    description: Faker::Music::Prince.lyric,
    user: new_user
  )
  new_offer.save!
  new_booking = Booking.new(
    start_time: Time.now,
    end_time: Time.now + 20,
    user: new_user,
    offer: new_offer
  )
  new_booking.save!
end
