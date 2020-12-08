# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

5.times do
    Recipe.create({
        title: Faker::Food.dish,
        ingredients: Faker::Food.measurement + " " + Faker::Food.ingredient,
        instructions: Faker::Lorem.paragraph(sentence_count: 5),
        servings: Faker::Number.within(range: 1..10),
        timeinvest: Faker::Number.within(range: 1..11) * 5,
        source: Faker::Lorem.sentence(word_count: 2) 
    })
end