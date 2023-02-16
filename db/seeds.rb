# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'

40.times do
    @group = Group.create(name: Faker::Name.name, qty: Faker::Alphanumeric.alpha(number: 10) )
end

40.times do
    @person = Person.create(name: Faker::Name.name, img: Faker::Alphanumeric.alpha(number: 10), note: Faker::Markdown.emphasis , age: Faker::Alphanumeric.alpha(number: 10), group_id: @group.id)
end

puts "done"