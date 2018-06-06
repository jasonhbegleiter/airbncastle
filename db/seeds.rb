puts 'Creating your marvellous countries...'
scot = Country.create!(name: 'Scotland')
wal = Country.create!(name: 'Wales')
eng = Country.create!(name: 'England')
won = Country.create!(name: 'Wonderland')
thr = Country.create!(name: 'Land of the Thrones')
fra = Country.create!(name: 'France')
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
nev = City.new(name: 'NeverNeverLand')
nev.country = wal
nev.save
hog = City.new(name: 'Hogwarts')
hog.country = won
hog.save
nor = City.new(name: 'The North')
nor.country = thr
nor.save
norm = City.new(name: 'Normandy')
norm.country = fra
norm.save
puts 'Finished!'

puts 'Creating your marvellous users...'
u1 = User.create!(email: '1@1.com', password: '123456')
u2 = User.create!(email: '2@2.com', password: '234567')
puts 'Finished!'

puts 'Creating your MAGNIFICENT castles...'
ca1 = Castle.new(
  name: 'Hogwarts',
  summary: 'School of Witchcraft and Wizadry',
  price_per_night: 20,
  address: 'Near Hogsmeade and the Forbidden Forest',
  no_of_guests: 1000,
  no_of_bedrooms: 500,
  no_of_bathrooms: 50)
ca1.city = hog
ca1.user = u1
ca1.review = "My stay at Hogwarts was even more magical than I could ever have imagined. I recommend a day trip to Hogsmeade too - the butterbeer is delicious!"
ca1.remote_photo_url = 'http://cdn.playbuzz.com/cdn/7aa950b4-eaa0-417d-93af-3bd332dc8086/5e549d0d-aad1-4ec1-96c9-31e36f08af8c.jpg'
ca1.save
ca2 = Castle.new(
  name: 'Disney Castle',
  summary: 'The Most Magical Place On Earth',
  price_per_night: 1000,
  address: 'Disneyland, where dreams come true',
  no_of_guests: 500,
  no_of_bedrooms: 50,
  no_of_bathrooms: 50)
ca2.city = nev
ca2.user = u1
ca2.review = "The Disney Castle really is a place where dreams come true. I felt like I had been transported to another world. Wish I could have stayed for even longer!"
ca2.remote_photo_url = 'https://i.ytimg.com/vi/Z8IHW0EfhAg/maxresdefault.jpg'
ca2.save
ca3 = Castle.new(
  name: 'Winterfell',
  summary: 'Seat of the ruler of the North',
  price_per_night: 1000,
  address: 'Center of the North',
  no_of_guests: 50,
  no_of_bedrooms: 15,
  no_of_bathrooms: 3)
ca3.city = nor
ca3.user = u1
ca3.review = "My stay at Winterfell was fabulous. Expect cold nights and long winters, but if that's your cup of tea, you'll have a ball! Take furs."
ca3.remote_photo_url = 'https://i.redd.it/o43a6l05iohz.png'
ca3.save
ca4 = Castle.new(
  name: 'Windsor Castle',
  summary: 'Royal residence in the English county of Berkshire',
  price_per_night: 10000,
  address: 'The poshest part of England',
  no_of_guests: 50,
  no_of_bedrooms: 20,
  no_of_bathrooms: 20)
ca4.city = windsor
ca4.user = u2
ca4.review = "I had the absolute honour of meeting queenie herself. She's such a darling. Thanks AirbnCastle for making me feel like a true royal for my stay. Spiffingly splendid!"
ca4.remote_photo_url = 'https://45fy4cvjvn53mx1xl43gozy1-wpengine.netdna-ssl.com/wp-content/uploads/Directions-1-985x575.jpg'
ca4.save
ca5 = Castle.new(
  name: 'Edinburgh Castle',
  summary: 'Historic fortress overlooking the city',
  price_per_night: 1000,
  address: 'Castlehill',
  no_of_guests: 500,
  no_of_bedrooms: 50,
  no_of_bathrooms: 50)
ca5.city = edinburgh
ca5.user = u1
ca5.review = "Edinburgh Castle - wow. What a view over the city, I felt like a real king up there on the hill! Loved the tartan theme too, nice touch. Take earplugs though - those bagpipes get tiring after a while."
ca5.remote_photo_url = 'https://cdn.shopify.com/s/files/1/1094/1378/products/IMG_1409_1024x1024.jpg?v=1527182154'
ca5.save
ca6 = Castle.new(
  name: 'Le Mont Saint Michel',
  summary: 'UNESCO World Heritage Site',
  price_per_night: 1000,
  address: 'Set in the mesmerising bay where Normandy and Brittany merge',
  no_of_guests: 500,
  no_of_bedrooms: 50,
  no_of_bathrooms: 50)
ca6.city = norm
ca6.user = u1
ca6.review = "Merci AirbnCastle pour un sejour si fantastique. Je vais certainement y retourner l'année prochaine!"
ca6.remote_photo_url = 'http://fhmedien.de/wp-content/uploads/2012/10/MG_8440_k_2012.jpg'
ca6.save
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








