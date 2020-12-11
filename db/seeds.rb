# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# $category_ids = []

def generate_ingredients()
    ingredients = ""
    Faker::Number.within(range: 1..17).times do
        ingredients += Faker::Food.measurement + " " + Faker::Food.ingredient + "\n"
    end
    return ingredients
end



# generating categories:
# for cat in ["Breakfast", "Entrees", "Drinks", "Desserts", "Appetizers", "International", "Baked Goods"] do
#     Category.create({
#             name: cat
#         })
# end

# 15.times do
#     Recipe.create({
#         title: Faker::Food.dish,
#         description: Faker::Food.description,
#         ingredients: generate_ingredients(),
#         instructions: Faker::Lorem.paragraph(sentence_count: 5),
#         servings: Faker::Number.within(range: 1..10),
#         timeinvest: Faker::Number.within(range: 1..11) * 5,
#         source: Faker::Lorem.sentence(word_count: 2),
#         category_ids: [rand(8..14), rand(8..14)]
#         })
# end

# failed attempt at randomly assigning categories (learn more Ruby)
# def assign_categories()
#     ids = []
#     rand(1..4).times do
#         start = $category_ids[0][:id]
#         finish = $category_ids[$category_ids.length() + 1][:id]
#         puts start
#         puts "weather"
#         index = rand(start..finish)
#         ids.append($category_ids[index]) # automatically returns
#     end
# end