# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

dataload = ActiveSupport::JSON.decode(File.read('db/seeds/data.json'))
dataload.each do |data|
	p data
	Subscription.create!(name: data['name'], amount: data['amount'], payment_date: data['date'])
     # Subscription.create!(data['data'], without_protection: true)
end