# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(first_name: 'David', last_name: 'Tao', email: 'davidtao@gmail.com', password: '123456', user_type: 'owner', contact_number: '0434022011')
User.create(first_name: 'Gary', last_name: 'Neville', email: 'gary2@mufc.com', password: '123456', user_type: 'customer', contact_number: '0402022022')
User.create(first_name: 'Danny', last_name: 'Ings', email: 'dannyings9@lfc.com', password: '123456', user_type: 'employee', contact_number: '0402111222')
User.create(first_name: 'Brendan', last_name: 'Rodgers', email: 'br@jebaited.com', password: '123456', user_type: 'property_owner', contact_number: '0434077088')

Property.create(house_no: '15', street: 'First Street', suburbs: 'Virginia', region: 'QLD', postcode: '4014', price: 560, bedroom_no: 4, bathroom_no: 2, garage_no: 2, picture_path: '/properties/1.jpg')
Property.create(house_no: '1', street: 'Portrush Way', suburbs: 'Mindarie', region: 'WA', postcode: '6030', price: 595, bedroom_no: 4, bathroom_no: 2, garage_no: 2, picture_path: '/properties/2.jpg')
Property.create(house_no: '57', street: 'Twyname Street', suburbs: 'Belmont', region: 'QLD', postcode: '4153', price: 540, bedroom_no: 3, bathroom_no: 2, garage_no: 2, picture_path: '/properties/3.jpg')
Property.create(house_no: '32', street: 'Gordon Street', suburbs: 'Greenslopes', region: 'QLD', postcode: '4120', price: 700, bedroom_no: 5, bathroom_no: 2, garage_no: 2, picture_path: '/properties/4.jpg')
Property.create(house_no: '38', street: 'Cricket Street', suburbs: 'Petrie Terrace', region: 'QLD', postcode: '4000', price: 1200, bedroom_no: 9, bathroom_no: 3, garage_no: 2, picture_path: '/properties/5.jpg')
Property.create(house_no: '408', street: 'Chalk Street', suburbs: 'Lutwyche', region: 'QLD', postcode: '4030', price: 675, bedroom_no: 2, bathroom_no: 2, garage_no: 1, picture_path: '/properties/6.jpg')
Property.create(house_no: '78', street: 'Marshall Lane', suburbs: 'Kenmore', region: 'QLD', postcode: '4069', price: 1250, bedroom_no: 6, bathroom_no: 6, garage_no: 3, picture_path: '/properties/7.jpg')
Property.create(house_no: '314', street: 'Beatty Road', suburbs: 'Rocklea', region: 'QLD', postcode: '4106', price: 400, bedroom_no: 1, bathroom_no: 1, garage_no: 1, picture_path: '/properties/8.jpg')
Property.create(house_no: '75', street: 'Munro Street', suburbs: 'St Lucia', region: 'QLD', postcode: '4067', price: 2530, bedroom_no: 12, bathroom_no: 8, garage_no: 6, picture_path: '/properties/9.jpg')
Property.create(house_no: '6', street: 'Lower Clifton Terrace', suburbs: 'Red Hill', region: 'QLD', postcode: '4069', price: 1320, bedroom_no: 6, bathroom_no: 2, garage_no: 2, picture_path: '/properties/10.jpg')
Property.create(house_no: '194', street: 'Windsor Road', suburbs: 'Kelvin Grove', region: 'QLD', postcode: '4059', price: 1550, bedroom_no: 6, bathroom_no: 2, garage_no: 3, picture_path: '/properties/11.jpg')
Property.create(house_no: '30', street: 'Coolinda Street', suburbs: 'Sunnybank', region: 'QLD', postcode: '4109', price: 510, bedroom_no: 3, bathroom_no: 3, garage_no: 1, picture_path: '/properties/12.jpg')
Property.create(house_no: '27', street: 'Enoggera Terrace', suburbs: 'Kelvin Grove', region: 'QLD', postcode: '4059', price: 910, bedroom_no: 5, bathroom_no: 4, garage_no: 2, picture_path: '/properties/13.jpg')
Property.create(house_no: '26', street: 'Prospect Street', suburbs: 'Wilston', region: 'QLD', postcode: '4051', price: 600, bedroom_no: 3, bathroom_no: 2, garage_no: 1, picture_path: '/properties/14.jpg')
Property.create(house_no: '205/6', street: 'Exford Street', suburbs: 'Brisbane', region: 'QLD', postcode: '4069', price: 550, bedroom_no: 2, bathroom_no: 2, garage_no: 0, picture_path: '/properties/15.jpg')