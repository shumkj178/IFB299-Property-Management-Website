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