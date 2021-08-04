# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Truck.destroy_all
Reservation.destroy_all

users = [{
    username: 'ricksanchez',
    email: 'rick@rick.com',
},
{
    username: 'admin',
    email: 'admin@admin.com',
    isAdmin: true
}]

vin_numbers = [
    '1G1PF5SC1C7142797',
    'JH4DC4440RS004255',
    'JH4KA8270PC001686',
    'WBACD432XWAV64423',
    '4V4NC9JH21N322086',
    '4JGBB8GB4BA662410',
    'JH4KA2630HC019837',
    'JH4DA9460MS032070',
    '1FAFP58U0XA209159',
    '1P4GH44R0RX359386'
]

trucks = [
    {
        make: 'Ford',
        model: 'Transit-250 Cargo Van',
        year: 2017,
        image: 'https://platform.cstatic-images.com/large/in/v2/stock_photos/58b031ea-9f1d-4701-945e-6798b9739633/bfac92ee-e45e-444d-bbef-01104fa4c5a5.png',
        hourly_rate: 20,
        vin: '1P4GH44R0RX359386'
    },
    {
    make: 'GMC',
    model: 'SAVANA Light Duty Box Truck',
    year: 2017,
    image: 'https://www.penskeusedtrucks.com/media-library/eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpbWFnZSI6Imh0dHBzOi8vYXNzZXRzLnJibC5tcy8yNzA4MjI4Ni9vcmlnaW4uanBnIiwiZXhwaXJlc19hdCI6MTYzMDAwODEyNX0.n-xwVfNZFh1QUrl3Ux5ssdJqU26jimCxUpjbNowXKtQ/image.jpg?quality=80&width=744',
    hourly_rate: 23,
    vin: '1FAFP58U0XA209159'
    },
    {
    make: 'M2',
    model: 'Freighliner',
    year: 2016,
    image: 'https://cdn.ebizautos.media/used-2012-freightliner-m2-2012freightlinerm2106mediumdutyofflease6156787444-13160-17680865-1-1024.jpg',
    hourly_rate: 30,
    vin: 'JH4DA9460MS032070'
    } 
]

reservations = [
    {
        start_time: DateTime.new(2021, 8, 14, 9),
        end_time: DateTime.new(2021, 8, 14, 12),
        total_price: 60,
        user_id: 1,
        truck_id: 1
    },
    {
        start_time: DateTime.new(2021, 8, 10, 13),
        end_time: DateTime.new(2021, 8, 10, 18),
        total_price: 100,
        user_id: 1,
        truck_id: 1
    },
    {
        start_time: DateTime.new(2021, 8, 7, 6),
        end_time: DateTime.new(2021, 8, 7, 12),
        total_price: 120,
        user_id: 1,
        truck_id: 1
    }
]


users.map {|u| User.create(u)}
trucks.map {|t| Truck.create(t)}
reservations.map { |res|  Reservation.create(res) }


puts '*********** Seeding Complete ***********'