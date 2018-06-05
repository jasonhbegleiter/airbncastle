puts 'Creating your marvellous countries...'
scot = Country.create!(name: 'Scotland')
wal = Country.create!(name: 'Wales')
eng = Country.create!(name: 'England')
puts 'Finished!'

puts 'Creating your marvellous cities...'
edinburgh = City.new(name: 'Edinburgh')
edinburgh.country = scot
edinburgh.save
windsor = City.new(name: 'Windsor')
windsor.country = eng
windsor.save
aber = City.new(name: 'Abergavenny')
aber.country = wal
aber.save
puts 'Finished!'

puts 'Creating your marvellous users...'
u1 = User.create!(email: '123@743s', password: '1231f23')
u2 = User.create!(email: '456s@1323', password: '456f456')
puts 'Finished!'

puts 'Creating your MAGNIFICENT castles...'
ca1 = Castle.new(
  name: 'Edinburgh Castle',
  summary: 'Och Aye',
  price_per_night: 1000,
  address: 'On top of the hill',
  no_of_guests: 500,
  no_of_bedrooms: 50,
  no_of_bathrooms: 50)
ca1.city = edinburgh
ca1.user = u1
ca1.save
ca2 = Castle.new(
  name: 'Hogwarts',
  summary: 'Expelliarmus',
  price_per_night: 2,
  address: 'Platform 9 & 3/4',
  no_of_guests: 1000,
  no_of_bedrooms: 500,
  no_of_bathrooms: 50)
ca2.city = aber
ca2.user = u1
ca2.save
ca3 = Castle.new(
  name: 'Windsor Castle',
  summary: 'Afternoon tea every day',
  price_per_night: 10000,
  address: 'The poshest part of England',
  no_of_guests: 50,
  no_of_bedrooms: 20,
  no_of_bathrooms: 20)
ca3.city = windsor
ca3.user = u2
ca3.save
puts 'Finished!'

puts 'Creating those key amenities...'
wifi = Amenity.create!(name: 'Wifi')
pool = Amenity.create!(name: 'Swimming pool')
quid = Amenity.create!(name: 'Quidditch pitch')
kilts = Amenity.create!(name: 'Kilts')
puts 'Finished!'


puts 'Creating castle_amenities links...'
a = CastleAmenity.new
b = CastleAmenity.new
c = CastleAmenity.new
a.castle = ca1
a.amenity = wifi
b.castle = ca1
b.amenity = kilts
c.castle = ca2
c.amenity = quid
a.save
b.save
c.save
puts 'Finished!'

puts 'Creating bookings...'
book1 = Booking.create!(price: 100,
                        accepted: true,
                        start_date: DateTime.now.to_date,
                        no_of_nights: 4,
                        completed: false,
                        no_confirmed_guests: 5,
                        castle: ca1,
                        user: u1)
book2 = Booking.create!(price: 250,
                        accepted: false,
                        start_date: DateTime.yesterday.to_date,
                        no_of_nights: 3,
                        completed: true,
                        no_confirmed_guests: 3,
                        castle: ca2,
                        user: u1)
book3 = Booking.create!(price: 400,
                        accepted: true,
                        start_date: DateTime.tomorrow.to_date,
                        no_of_nights: 1,
                        completed: false,
                        no_confirmed_guests: 2,
                        castle: ca2,
                        user: u2)
puts 'Done!'








