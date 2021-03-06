# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
10.times do |i|
  Diary.create!(
    name: Faker::Lorem.sentence, # a random sentence from the lorem set in faker
    servings: (1..3).to_a.sample,
    calories: (200..250).to_a.sample,
    category: ['Lunch', 'Dinner'].sample,
    date: Faker::Date.forward(90)
  )
end
