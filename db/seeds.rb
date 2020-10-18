# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do
	Hardware.create!([{
		device_type: Faker::Device.model_name,
		sn: Faker::Device.serial,
		information_for_us: Faker::Hacker.say_something_smart,
		information_for_user: Faker::Hacker.say_something_smart,
		price: Faker::Number.between(from: 500, to: 2000),
		purchase_price: Faker::Number.between(from: 200, to: 1500),
		date_of_purchase: Faker::Date.between(from: 120.days.ago, to: Date.today),
		sale_date: Faker::Date.between(from: 60.days.ago, to: Date.today)
	}])
end
