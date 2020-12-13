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

# actually creating the real categories
# Category.create({name: "Breakfast", imageURL: "https://d39l2hkdp2esp1.cloudfront.net/img/photo/118547/118547_00_2x.jpg"})
# Category.create({name: "Dinner", imageURL: "https://images.immediate.co.uk/production/volatile/sites/30/2019/12/tandoori-trout-bb9fe6c.jpg?quality=90&resize=960,872"})
# Category.create({name: "Entrees", imageURL: "https://www.feastingathome.com/wp-content/uploads/2019/01/collard-greens-wraps-100.jpg"})
# Category.create({name: "Drinks", imageURL: "data:image/jpeg;base64,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"})
# Category.create({name: "Bread", imageURL: "https://media2.s-nbcnews.com/j/newscms/2020_13/1552784/breadbaking_3eea3dc71fddb8ad629ceb76dbc447db.today-inline-small2x.jpg"})
# Category.create({name: "Spreads", imageURL: "https://www.gettystewart.com/wp-content/uploads/2018/12/three-dips-1.jpg"})
# Category.create({name: "Desserts", imageURL: "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/20200205-samoa-dessert-lasagna-ehg-9761-jpg-1582826734.jpg"})
# Category.create({name: "Appetizers", imageURL: "https://www.glutenfreepalate.com/wp-content/uploads/2016/10/Sausage-and-Bacon-Appetizers-7.2-720x720.jpg"})

# actually creating the real recipes
Recipe.create({
    title: "Fruit Pizza",
    description: "This simple recipe will transform the way you view fruit. It cleverly blends a pleasantly\ncrunchy crust with various sweet, refreshing fruits to give you the perfect meal or dessert.\nMoreover, this ingenious twist on pizza is incredibly healthy. Fruit pizza incorporates three of the foods groups that we\nwere originally intended to eat and it helps clean out you r digestive tract. I’m not kidding\nguys, this is as healthy as it is delicioius.",
    ingredients: "½ cup of honey\n½ cup of oil\n½ cup of soymilk\n1 Tbsp. of Molasses\n1 tsp. of vanilla\n½ tsp. of lemon extract (optional)\n1 tsp. of salt\nDry Ingredients\n34⁄cups of chopped walnuts\n2 ½ cups of Quick oats\n¼ cups of whole wheat flour\n¼ cups of unbleached white flour",
    instructions: "1. Begin by setting the oven at 350F° to bake the crust. Mix the wet and dry\ningredients in separate bowls.\n2. Mix the dry and wet ingredients in a medium bowl and let the mixture sit for\n10 minutes.\n3. Press the dough into a baking pan sprayed with non stick cooking spray.\nPreferably use a circular pan, about one foot in diameter, that you plan to\nserve from.\n4. Bake for about 23 minutes or until the edges begin to brown.\n5. Once the crust has cooled, apply the mixture of cream cheese and honey.\nSpread it evenly.\n6. Finally, decorate your pizza with various fruits of your choice. For the style\nabove , arrange the fruit in a circular\n7. You can serve this delectable treat with some homemade whip cream and\nmake a fruit salad with the leftovers.",
    servings: 8,
    timeinvest: 110,
    source: "Renaty Recepty",
    category_ids: [1],
    imageURL: "https://pinchofyum.com/wp-content/uploads/Fruit-Pizza-Design-Square.jpg"
})

Recipe.create({
    title: "Raw Apple Dip",
    description: "This is a sweet dip to make your fruit really pop!",
    ingredients: "apples\nalmonds\ndates",
    instructions: "1. Soak the almonds and the dates in water overnight. Use enough dates to sweeten the almonds when processed into a sweet paste.\n2. In the morning process the almonds and the dates together, adding dates and almonds until you reach the desired texture, amount and taste.\n3. Slice apples and enjoy them with the processed almonds and dates. This is perfect as an easy breakfast and it is about as healthy as tasty food gets.",
    servings: 5,
    timeinvest: 110,
    source: "Renaty Recepty",
    category_ids: [6],
    imageURL: "data:image/jpeg;base64,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"
})

Recipe.create({
    title: "Peach Crisp",
    description: "A tasty peach crisp",
    ingredients: "Liquid\nPeach & White Grape Concentrate 1 Can\nLemon Juice 2 T\nSolid\nCornstarch 1/4 C\nPeaches 8 C Sliced",
    instructions: "1. Boil liquid ingredients\n2. Once boiling, add cornstarch\n3. Then add in peaches and stir\n4. Finally, put into a casserole-type dish\n5. Sprinkle all the Crisp Crumbs on Top",
    servings: 15,
    timeinvest: 45,
    source: "Renaty Recepty",
    category_ids: [1],
    imageURL: "https://www.jessicagavin.com/wp-content/uploads/2019/08/peach-crisp-10-1200.jpg"
})

Recipe.create({
    title: "Bisquick",
    description: "Quick, easy biscuits! (Not in english)",
    ingredients: "Un. Flour 1 C\nWW Flour 1 C\nSul 1 t\nPrášek do Pečiva 2 t\nMléko 1 C\nOlej 5 T",
    instructions: "1. Stir all together but add milk and oil in lastly\n2. Mix again and bake 25-30 minutes at 350 F",
    servings: 6,
    timeinvest: 35,
    source: "Renaty Recepty",
    category_ids: [1],
    imageURL: "https://kristineskitchenblog.com/wp-content/uploads/2020/04/biscuits-1200-1-of-1.jpg"
})

Recipe.create({
    title: "Jelly Muffins",
    description: "Delicious Muffins full of sticky goodness.",
    ingredients: "1 1/2 cups all-purpose flour\n3/4 teaspoon baking powder\n1/2 teaspoon baking soda\n1/2 teaspoon ground nutmeg\n1/2 teaspoon fine salt\n1 cup plain soy or rice milk\n1 teaspoon cider vinegar\n2 tablespoons cornstarch\n3/4 cup plus 2 tablespoons\ngranulated sugar\n1/3 cup vegetable oil\n2 teaspoons vanilla extract\n1/3 cup raspberry, strawberry,\nor grape jam or preserves",
    instructions: "1. Heat the oven to 350°F. Line a 12-well (1/2 cup)\nmuffin pan with paper liners; set aside.\n2Sift the flour, baking powder, baking soda, nutmeg,\nand salt into a large bowl. Make a well in the center of\nthe mixture; set aside.\n3In a medium bowl, whisk together the soymilk,\nvinegar, and cornstarch until the cornstarch has\ndissolved. Pour this into the well in the flour mixture. Add\nthe granulated sugar, oil, and vanilla and stir with a rubber\nspatula until combined (there will be a few lumps).\n4Fill each muffin well about three-quarters full. Put a\nspoonful of jam into each muffin and cover the top. Repeat in\neach well.",
    servings: 12,
    timeinvest: 35,
    source: "Hell Yeah It's Vegan!",
    category_ids: [1],
    imageURL: "https://chowhound3.cbsistatic.com/resize/5e6e39a0dc4123cf05063d5ff29000a8f18f8060/recipe_photos/29434_vegan_jelly_muffins.jpg?fit=bounds&height=800&width=1280"
})

Recipe.create({
    title: "Blueberry Muffins",
    description: "Healthy and Delicious! These muffins are my favourites!",
    ingredients: "Soymilk 3/4 C\nOlej 1/3 C\nSuconaut 1 C\nFlax Seed 1 T\n+1/4 C Water\nVanilla 1 t\nBaking Soda 1 t\nSul špetka\nWW Flour 1 1/2 C\nBoruvky 2 C",
    instructions: "1. Preheat to\n350 F\n2.Whisk oil,\nsuconaut,\nmilk, flax mix and\nvanilla\n3. Sprinkle in baking\nsoda and salt\n4. Mix in flour\n5. Add blueberries\n6. Pour into a sprayed\nmuffin tin and bake\n30 minutes",
    servings: 12,
    timeinvest: 20,
    source: "Renaty Recepty",
    category_ids: [1],
    imageURL: "https://i2.wp.com/smittenkitchen.com/wp-content/uploads//2010/08/perfect-blueberry-muffins.jpg?fit=1200%2C800&ssl=1"
})

Recipe.create({
    title: "Lemon Poppy Seed Muffins",
    description: "These scrumptious muffins are best served warm with a layer of sugar frosting on top.",
    ingredients: "Ingredients Dry Ingredients\n2 cups & 2 Tbsp whole wheat pastry flour 1/2 cup cane juice crystals 1 1/2 Tbsp poppy seeds 1 Tbsp baking powder 1/2 t salt Wet Ingredients\n3/4 cup non-dairy milk 1/3 cup oil 1/4 cup fresh lemon juice 2 Tbsp lemon zest 2 tsp vanilla extract Glaze (optional)\n2/3 cup powdered sugar 1 Tbsp fresh lemon juice",
    instructions: "1. Preheat oven to 375. 2. Coat muffin pans with nonstick cooking spray. Mix dry ingredients together in a large bowl. 3. Make a well in the center of the dry ingredients; add wet ingredients. Mix until combined. 4. Fill each muffin cup 3/4 full bake 23 to 27 minutes, until toothpick inserted in the middle comes out clean. 5. Cool on wire racks. Top with glaze before serving if desired. 1. Mix powdered sugar and lemon juice together in a small bowl. 2. Dip the top of each cooled muffin and glaze. 3. Store in an airtight container for 2 to 3 days.",
    servings: 10,
    timeinvest: 25,
    source: "Something Better Cookbook",
    category_ids: [1],
    imageURL: "https://i2.wp.com/www.sugarspunrun.com/wp-content/uploads/2016/03/lemon-poppy-seed-muffin-1-of-1.jpg"
})

Recipe.create({
    title: "Cinnamon Rolls",
    description: "Sweet Rolls for Sabbath Morning. You can make these whole weat, gluten free, or white . . . however you like them.",
    ingredients: "Unbleached Flour 2 Cups\nWhole Wheat Flour 2 Cups\nWarm Water 1 1/2 C\nHoney 2 T\nYeast. 2 t\nSalt 1 t\nOlive oil 2 T\nSuconaut or Sugar 1/2 C\nCinnamon 1/2 t",
    instructions: "1.Mix the yeast with water and honey and let\nsit for 5 minutes.\n2.Mix all ingredients together.\n3.Let the dough rise.\n4. Roll the dough out to 1 cm thickness.\n5. Spread oil over the rectangular dough.\n6. Heavily sprinkle cinnamon and sugar.\n7. Roll the rectangular dough into a tube and\ncut at 1 in. intervals. Put on sprayed baking\nsheet.\n8. Let it rise 20-25 minutes.\n9. Bake 14 -15 minutes. It is done when the sugar\ncrystallizes.\n10.Re-heat for breakfast the next day at 350 F.",
    servings: 14,
    timeinvest: 40,
    source: "Renaty Recepty",
    category_ids: [1],
    imageURL: "https://www.cookingclassy.com/wp-content/uploads/2020/09/mini-cinnamon-rolls-21.jpg"
})

Recipe.create({
    title: "Hairy Dumplings",
    description: "A tradiditonal Czech dish. These dumplings take some effort, but are pretty fun to make!",
    ingredients: "Dumplings\n5 red potatoes\n1 1/2 cups bread crumbs,\nhard & dry\n2-3 tsp salt\nsalt for the boiling water\nSides\n2 onions, sautéed\nfried mushrooms or sausage\nsauerkraut",
    instructions: "1. Peel all your potatoes and grate them finely and mix salt\ninto them.\n2. Boil a large pot of water and add in a tablespoon or two of\nsalt.\n3. Once the potatoes let some water out, mix in the bread\ncrumbs and flour.\n4. Form a dumpling with a spoon (in this case a chicken\nnugget shape) and toss it into the boiling water. If it\ndissolves, add in more flour. If it nicely cooks in the water\nand stays together then continue.\n5. Form all of the potato mixture into dumplings and, in\nbatches, cook in the water. Boil for 8-10 minutes, take the\ndumplings out and then let them drip in a sieve.\n6. Serve with sautéed onion, sausage or mushrooms on top\nand with sauerkraut on the side.",
    servings: 7,
    timeinvest: 180,
    source: "Renaty Recepty",
    category_ids: [3],
    imageURL: "data:image/jpeg;base64,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"
})

Recipe.create({
    title: "Rissoto",
    description: "This rice really pops if you put fresh home-grown herbs in it.",
    ingredients: "3 tablespoons olive oil, divided\n1 small yellow onion, chopped\n2 cloves garlic, pressed or minced\n5 cups (40 ounces) vegetable broth, divided\n1 ½ cups brown Arborio/short-grain brown rice\n12 to 14 ounces sliced Cremini (baby portobello) mushrooms, washed\n1 cup vegan meltable cheese (optional)\n3 tablespoons unsalted butter, diced\n2 teaspoons tamari (optional)\n1 teaspoon sea salt, more to taste\nFreshly ground black pepper, to taste\n4 sprigs fresh oregano, chopped",
    instructions: "1. Make sure your oven rack is in the middle position. Preheat oven to 375 degrees.\n2. Heat 1 tablespoon olive oil in a medium Dutch oven over medium heat until shimmering. Add onion and a pinch of salt. Cook, stirring occasionally, for ten minutes, then add the minced garlic. Cook for another 2 to 4 minutes, until the onions are well browned.\n3. Add 4 cups broth (or 3 cups broth and 1 cup water), cover, and bring to a boil over medium-high heat. Remove from heat and stir in the rice. Cover the pot and bake until rice is tender and cooked through, about 65 to 70 minutes. It will seem pretty dry when you take off the lid, but don’t worry!\n4. During the last 20 minutes of baking time, prepare the mushrooms. Warm 2 tablespoons olive oil in a large skillet until shimmering. Add the cleaned, sliced mushrooms to the pot with a dash of salt. Cook, stirring occasionally, until the mushrooms are darker in color, fragrant and have soaked up most of their own juices, about 13 minutes.\n5. Remove the pot from the oven. Pour in the remaining cup of broth, the cheese, butter, tamari, salt, and a generous amount of pepper. Stir vigorously for 2 to 3 minutes, until the rice is thick and creamy. Stir in the mushroom mixture and any remaining juices. Season to taste with salt and pepper, divide into bowls and top with a generous sprinkling of torn, fresh oregano leaves.",
    servings: 16,
    timeinvest: 120,
    source: "Italy",
    category_ids: [3],
    imageURL: "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/delish-191112-risotto-rice-0151-landscape-pf-1574723947.jpg"
})

Recipe.create({
    title: "Indian Rice",
    description: "Serve this rice with your choice of curry and indian naan bread.",
    ingredients: "1 ½ c basmati rice\n1 can coconut milk\n3 cloves, whole\n½ t salt\n2 T lemon juice\n¼ c butter\n2 t chicken seasoning\n1 cinnamon stick\n½ t turmeric",
    instructions: "1. Place rice in a pan. Put milk, melted butter and lemon juice in a 4 c measuring container. Add enough water to make it 4 cups.\n2. Pour over rice and add spices.\n3. Bring to a boil and reduce heat to medium-high. Cook for 8 minutes, stirring constantly.\n4. Pour into a pre-sprayed 9x13” pan and cover with aluminum foil.\n5. Bake at 350 degrees for 30 minutes.\n6. Serve with Indian Curry and Naan bread.",
    servings: 6,
    timeinvest: 100,
    source: "Renaty Recepty",
    category_ids: [3],
    imageURL: "https://www.simplyrecipes.com/wp-content/uploads/2010/06/indian-rice-horiz-a-1600.jpg"
})

Recipe.create({
    title: "Pizza Turn-Over",
    description: "Basically Pizza Slices in a pocket! These pockets are filled with an exquisite tomatoe sauce, cheese (as much cheese as you want!) and your choice of veggies.",
    ingredients: "Spaghetti sauce 1 1/2 C\nTofu 1 C\nPepper 1/2 C\nMushrooms 1/2 C\nSalt 1 t\nPizza seasoning 2 t\nBlack olives 3/4 C\nWhole Wheat flour 1 C\nOatmeal flour 1/2 C\nUnbleached flour 1/2 C\nSalt 1 t\nOil 1/3\nHot water 1/2 C",
    instructions: "Directions - Crust\n1. Form square pieces of rolled-out dough.\n2. Put filling into squares to form triangular turnovers.\n3. Bake on sprayed sheets at 370F until corners turn light\nbrown.",
    servings: 10,
    timeinvest: 35,
    source: "Original",
    category_ids: [2],
    imageURL: "https://images-gmi-pmc.edge-generalmills.com/8830acec-ef80-4bc2-aac8-6795a78b9f76.jpg"
})

Recipe.create({
    title: "Sun-Dried Tomato and Spinach Quiche",
    description: "Though this takes a bit of time to make, it's my fam's favourite dish. Feel free to make two at a time. You'll want more when you finish one.",
    ingredients: "¾ c flour/n1 c whole wheat flour/n1 tsp salt/n½ tsp dried rosemary/n¼ tsp dried oregano/n¼ tsp dried thyme/n¼ c olive oil, partially frozen/n½ c ice water/nFilling/n2 c firm tofu/n¼ c unsweetened vegan milk/n1 Tbsp cornstarch/n1 Tbsp olive oil/n1 yellow onion, sliced thinly/n3 garlic cloves, minced/n1½ c spinach/n½ c basil leaves, chiffonaded/n⅓ c sun-dried tomatoes packed in/noil - drained - not rinsed/n2 Tbsp nutritional yeast/n1 tsp fresh oregano/n1 tsp fresh thyme/n1 tsp fresh rosemary/n¾ tsp salt/n¼ tsp black pepper",
    instructions: "1. Place olive oil in freezer about an\nhour before preparing the crust.\nIt's ready when it's practically\nsolid, but still malleable.\n2. To make the pastry, sift together\nflours, salt, and herbs in a large\nbowl.\n3. Working quickly with a pastry\ncutter or two knives, cut in olive oil.\n4. Sprinkle mixture with water,\nstirring gently until incorporated.\n5. Knead lightly until ball forms.\n6. Divide dough into four equal\npieces.\n7. Flatten dough into discs, then roll\nout pieces until each one is\nroughly 6\" in diameter.\n8. Arrange dough in four 4\" tartlet\npans, or on larger pan and crimple\nthe edges.\n9. Prick the dough generously and\nrefrigerate in pans for 1 hour or\novernight.\n10.To prepare filling, process tofu,\nvegan milk, and cornstarch in a\nblender until completely smooth.\nSet aside.\n11. In a frying pan over medium\nheat, saute onion in olive oil until\ntranslucent.\n12. Add garlic and stir for a few\nseconds until fragrant.\n13. Add remaining ingredients and\nstir until distributed.\n14. Continue cooking until greens\nhave wilted.\n15.Pour in tofu mixture and mix well.\n16.Distribute mixture between tart\npans, filling all the way to the\ncrust's upper edge.\n17.Place pans on a baking sheet and\nbake at 375° for 33-37 minutes, or\nuntil golden and firm to the touch.\n18.Cool 10 minutes before slicing or\nserving.",
    servings: 5,
    timeinvest: 200,
    source: "Oh She Glows",
    category_ids: [2],
    imageURL: "https://skinnyms.com/wp-content/uploads/2016/01/Spinach-Quiche-with-Sun-Dried-Tomatoes-e1452000599450.jpg"
})

Recipe.create({
    title: "Glowing Green Smoothie",
    description: "This smoothie is tart and full of healthy things. It does wonder for your skin, really!",
    ingredients: "7 cups chopped spinach\n6 cups chopped romaine lettuce (about 1 small head)\n2 cups cold filtered water\n1½ cups chopped celery (about 2 medium stalks)\n1 medium apple, coarsely chopped\n1 medium pear, coarsely chopped\n1 medium banana, in thirds\n2 tablespoons freshly squeezed lemon juice\n1⁄2 cup minced fresh cilantro\n1⁄2 cup minced fresh parsley",
    instructions: "1. Combine the spinach, romaine and water in a blender and begin processing on low. Gradually move to higher speeds and blend until smooth.\n2. Next, add the celery, apple, pear, cilantro and parsley (if using). Lastly, add the banana, lemon juice and ice (if using), and blend until smooth. Serve at once or refrigerate, covered, for up to 2½- 3 days.",
    servings: 2,
    timeinvest: 10,
    source: "Oh She Glows",
    category_ids: [4],
    imageURL: "https://www.vitamix.com/media/recipe/rcpGlowingGreenSmoothie/images/500xNxglowinggreensmoothiemainjpg.jpg.pagespeed.ic.049Tp2n0AN.jpg"
})

Recipe.create({
    title: "Homemade Larabars",
    description: "Cheaper and tastier from your own kitchen.",
    ingredients: "1 1/4 cups packed, pitted, soft whole dates\n1 cup warm water\n1/2 cup raw almonds\n1/2 cup raw cashews\n2 tablespoons fresh lemon juice\n2 teaspoons finely grated lemon zest\n1/8 teaspoon fine sea salt (optional)",
    instructions: "1. Rip off a large piece of plastic wrap, press it into a 9-by-5-inch loaf pan, and slick the plastic wrap with a little oil.\n2. Combine the dates and warm water in a small bowl (feel free to add cranberries). Let stand for 5 to 10 minutes, until the fruit is soft. The exact timing will vary according to the dryness of the fruit. Drain the fruit and pat it dry with paper towels. (If the dried fruit you’re using is already super soft and moist, you can skip the soaking step.)\n3. Meanwhile, place the almonds and cashews in a food processor and process until finely chopped but not paste-like.\n4. Add the drained fruit, lemon and salt, to the food processor and pulse until the fruit is finely chopped and the larabar mixture begins to stick together and clump against the sides of the bowl and your processor starts hopping on the counter just a little. This could take up to 2 minutes.\n5. Transfer the larabar mixture to the prepared loaf pan. Place a large piece of parchment paper, wax paper, or plastic wrap slicked with oil atop the bar mixture and use it to spread and flatten the mixture evenly in the pan. Leave the paper or plastic wrap in place. (Alternatively, you can form the mixture into any size or shape you can imagine. Go a little crazy.) Refrigerate for 30 minutes.\n6. Using the paper or plastic lining the pan, lift the bar mixture from the pan and transfer it to a cutting board. Discard the paper or plastic and cut the rectangle into 6 bars. Tightly wrap each bar in plastic wrap. The bars will keep at room temperature for up to 3 days, in the refrigerator for up to 3 weeks, or in the freezer for up to 3 months (let the frozen bar thaw for 1 hour before attempting to bite into it).",
    servings: 4,
    timeinvest: 25,
    source: "leitesculinaria.com",
    category_ids: [7],
    imageURL: "https://glutenfreeonashoestring.com/_main_site/wp-content/uploads/2019/04/Homemade-Larabar-Recipe-master-stack.jpg"
})

Recipe.create({
    title: "Cheddar and Onion Rye Rolls",
    description: "This bread is great for dinner parties, thanksgiving and giving out to homeless folks.",
    ingredients: "2 2/3 cups bread flour plus\nextra as needed\n3/4 cup medium rye flour\n2 tsp active dry yeast\n1 1/2 cups roomtemperature\nwater\n2 tsp salt\n2 tsp sugar\n1 Tbsp molasses\n1 Tbsp vegetable oil, plus\nextra for greasing\n1 cup diced vegan cheese\n(or shredded)\n1 cup coarsely diced onion\nCornmeal for dusting",
    instructions: "1. Combine the flours and yeast in the bowl of a stand mixer\nfitted with the dough hook. Add the water, salt, sugar, molasses\nand oil and mix on low speed for 4 minutes. Increase the speed\nto medium, kneed for 2 minutes. Add the cheese and onion, then\nknead on medium speed 1 minute more. The dough should be\ntight and very springy.\n2. Transfer the dough to a lightly oiled bowl, turn to coat,\ncover with plastic or a damp towel, and let rise in a warm place\nuntil nearly doubled in size, about 75 minutes. Fold the dough\nover gently. Cover the dough and let rest until relaxed, 15-20\nminutes.\n3. Prepare 2 baking sheets, scattering them with cornmeal.\n4. Turn the dough out onto a lightly floured work surface,\npress into a rectangle and divide into 24 equal pieces, about 2 oz\neach. Cover and let rest 10 minutes. Press each piece of dough\nlightly with your fingertips to make a square shape. Fold the top\nto the center of the dough pressing lightly with your fingertips\nto tighten the outer layer. Rotate the dough 90 degrees, fold the\ndough in half from top to bottom and use the heel of your hand\nto seal the two edges together to make a sphere, pinching the\nseams together at the bottom of the ball.\n5. Transfer the rolls seam-sides down to the prepared baking\nsheets. Mist or brush them with water. Cover loosely with\nplastic wrap or a clean damp towel and let rise until nearly\ndouble in size and the dough springs back slowly to the touch\nbut does not collapse, about 40 minutes.\n6. Make a shallow, straight cut down the center of each roll\nand mist evenly with water.\n7. Bake the rolls until they have a golden-brown crust and\nsound hollow when tapped on the bottom, 15-20 minutes. For a\nvery crisp crust, mist the rolls one or two more times during the\nfirst 5 minutes of baking time. Let cool slightly before serving.",
    servings: 24,
    timeinvest: 60,
    source: "Original",
    category_ids: [5],
    imageURL: "https://i.ytimg.com/vi/6M4ydW1d86s/maxresdefault.jpg"
})

Recipe.create({
    title: "Grilled Ratatouille Tartines",
    description: "A perfect side to hamburgers or mashed potatoes.",
    ingredients: "1 zucchini, sliced in half lengthwise\n1 medium eggplant, sliced into ¼-inch thick rounds\n1 red bell pepper, halved, ribs and seeds removed\n3 whole scallions\nextra-virgin olive oil, for drizzling\nsea salt\n1 cup halved cherry tomatoes\n1 garlic clove, minced\n1 teaspoon sherry vinegar\n1 teaspoon herbs de Provence\n¼ cup chopped fresh basil\n8 slices of good bread, toasted\nhummus or goat cheese",
    instructions: "Preheat a grill or grill pan over medium heat.\nDrizzle the zucchini, eggplant, red pepper and scallions with olive oil and a few pinches of salt. Grill until charred, about 3 minutes per side.\nRemove the vegetables from the grill, let cool slightly, then chop everything into 1-inch pieces. Toss them in a mixing bowl with the cherry tomatoes, garlic, sherry vinegar, herbs de Provence and basil.\nSeason to taste, then serve on toasted bread with a spread of goat cheese or hummus.",
    servings: 4,
    timeinvest: 25,
    source: "loveandlemons.com",
    category_ids: [8],
    imageURL: "https://cdn.loveandlemons.com/wp-content/uploads/2017/06/IMG_2017_06_05_10370.jpg"
})

Recipe.create({
    title: "Awesome Pancake Mix",
    description: "This mix can be pre-made and then used easily in the mornings when you just want a few quick and fluffy pancakes.",
    ingredients: "Premix Dry Ingredients\nWhole wheat pastry flour 4 1/2 cups\nUnbleached white flour 1 1/2 cups\nCornmeal 1 1/2\nNon-dairy milk powder 1/3 cup\nCane juice crystals 1/3\nAluminum-free baking powder 3\nTbsp\nSalt 1/2 t\nWet Ingredients\nWater 2 Cups\nOil 1/4 cup",
    instructions: "1. Mix all dry ingredients in a large airtight container. You\ncan make this mix months in advance.\n2. To make pancakes add 2 1/2 cups of mix to 2 cups water\nand 1/4 cup oil. Mix well.\n3. Use a cup measure to pour desired amount of batter onto\na hot griddle.\n4. When the batter starts to bubble on top and the edges\nlook dry, flip over the pancake and cook until golden.\nCook other side until golden.",
    servings: 6,
    timeinvest: 15,
    source: "Something Better Cookbook",
    category_ids: [1],
    imageURL: "https://images-gmi-pmc.edge-generalmills.com/df109202-f5dd-45a1-99b4-f10939afd509.jpg"
})

Recipe.create({
    title: "Scottish Oat Cakes",
    description: "An oatmeal-based cake served with a thick dried-fruit sauce.",
    ingredients: "1/4 C WW pastry flour\n1 C Walnuts or Brazil nuts\n1 C quick oats\n1 t salt\n1/4 C honey, warmed",
    instructions: "1. Place flour and nuts into a good processor and whiz for 1 minute or until the nuts are as fine as the flour. Pour into a mixing bowl and add oats and salt.\n2. Stir in warm honey and, using your hands, form a compact mixture of dough that you can then form into 12 walnut-sized spheres.\n3. Put the balls onto baking sheets (on the bottom if the sheets have deep edges.\n4. Roll out with a rolling pin - using plastic wrap in between - to 2-3 mm. (very thin)\n5. Bake 5-8 minutes at 325. Watch for pink edges carefully. These burn easily.\n6. Serve with thick dried fruit sauce (below)",
    servings: 12,
    timeinvest: 25,
    source: "Renaty Recepty",
    category_ids: [1],
    imageURL: "https://larderlove.com/wp-content/uploads/2020/04/Easy-Oatcakes-4-by-larderlove.jpg"
})

Recipe.create({
    title: "Scrambled Tofu",
    description: "This tofu is great on its own, but even better when served over biscuits and gravy.",
    ingredients: "1 pack extra firm tofu (1 lb) 2 Tbsp of premixed Tofu Seasoning 1 Tbsp Braggs Tofu Seasoning 1/2 cup McKay’s Chicken Seasoning 1 1/4 cups yeast flakes 1/4 cup garlic powder 3/4 cup onion powder 3/4 t turmeric",
    instructions: "1. Crumble the tofu in a bowl and mix with bragg’s. Add tofu seasoning into the bowl, or into the pan when frying the tofu.\n2. Scramble the tofu and cook until dry and well combined with the seasoning.",
    servings: 4,
    timeinvest: 30,
    source: "Renaty Recepty",
    category_ids: [1],
    imageURL: "https://www.elephantasticvegan.com/wp-content/uploads/2014/11/vegan-tofu-scramble-mushrooms-bell-pepper-2.jpg"
})

Recipe.create({
    title: "Kolace",
    description: "A traditional european tart often served at weddings (but I like to make it all the time). These take a while to make, but are absolutely delicious.",
    ingredients: "400 g 300 g unbleached white flour whole wheat flour 300 g wondra flour 150 g sugar 50 g yeast 600 ml warm milk 1 1/2 Tbsp soy flour or ground flax 1 Tbsp lemon zest 1 tsp vanilla 6 Tbsp oil 3 Tbsp melted margarine 1 tsp salt",
    instructions: "1. Mix flour in a large bowl and, into a well, add in milk & flax or soy flour. Mix.\n2. Add in flax yeast milk sugar margarine oil lemon zest vanilla and salt.\n3. In a bowl knead the silky dough. Let it rise.\n4. Roll the dough out to one 1/2 cm thickness. Cut out circles 6 cm in diameter. Make large wells in each circle and fill with poppy seed filling prune filling or tvaroh (recipe in this book).\n5. Put on a sprayed pan and bake at 350 degrees until the edges of the koláče turn golden.",
    servings: 15,
    timeinvest: 180,
    source: "",
    category_ids: [7],
    imageURL: "https://www.poetscornerhostel.com/wp-content/uploads/2018/05/Czech-kol%C3%A1%C4%8D-e1534168390184.jpg"
})

Recipe.create({
    title: "Buchty",
    description: "A traditional eastern European breakfast.",
    ingredients: "1 1/2 Tbsp čerstvého droždí\n400 ml mandlového mléka\n75 g cukru krupice\n750 g hladké mouky\n1 1/2 Lžíce sójové mouky\nšpetka soli\nkůra z 1 citrónu\n2 lžíce vanilkového extraktu\n90 g rozpuštěného rostlinného\nmásla + další na potření buchet\n2 lžíce rumu\n1 lžíce moučkového cukru\nPovidlová a maková náplň",
    instructions: "1. Droždí rozdrobte do\nmisky, zalijte 100 ml vlažného\nmléka, přidejte lžičku cukru a\nrozmíchejte na kaši. Zakryjte a\nv teple nechte vzejít kvásek.\n2. Do mísy dejte cukr a\ndobře ho prsty promněte s\ncitrónovou kůrou. Do stejné mísy prosejte mouky se solí,\nzamíchejte, přidejte a vlažné rozpuštěné rostlinné máslo.\n3. Postupně přidávejte zbylé mléko, dobře hněťte rukama\nči v kuchyňském robotu a vypracujte měkké těsto. Popraště\ntěsto moukou, mísu přikryjte utěrkou a nechte na teplém\nmístě hodinu kynout. Po vykynutí těsto rozválejte na\ncentimetr tenký plát a nakrájejte na čtverečky 5 x 5 cm.\n4. Poté prostě dělejte buchty. Skládejte je do dobře\nvymazaného pekáčku, ze všech stran každou buchtu potřete\nrozpuštěným rostlinným máslem, aby se okolní nepřilepily.\n5. Troubu předehřejte na 395°F a buchty nechte ještě čtvrt\naž půl hodiny kynout v pekáčku. Poté vložte do truby, snižte\nteplotu na 350°F a pečte 10 minut, poté opět snižte teplotu,\ntentokrát na 320°F a dalších 15 minut dopékejte.\n6. Ještě horké buchty potřete rumem smíchaným s cukrem\na dvěma lžícemi horké vody. Vychladlé pocukrujte.",
    servings: 33,
    timeinvest: 140,
    source: "",
    category_ids: [1],
    imageURL: "https://www.apetitonline.cz/sites/default/files/styles/630x420/public/recept/ceskebuchty_1005.jpg?itok=RRvo1n_V"
})

Recipe.create({
    title: "Yogurt",
    description: "Making your own yogurt is tastier and cheaper. You can always more from what you have left, so it's like never ending yogurt!",
    ingredients: "6 cups soymilk\n1 container of vegan yogurt",
    instructions: "1. Begin by heating the milk to 180 degrees in a pot.\n2. Then let the milk cool to 115 degrees & stir in the container of yogurt. Mix well.\n3. Pour the milk-yogurt mixture into mason jars and close tightly. Place the jars a cooler full of hot water and firmly close the lid.\n4. Let the cultures grow overnight and then cool the yogurt in a refrigerator.\n5. Drain over cheesecloth if desired. Sweeten with jam, preservatives, honey, vanilla etc. prior, or not at all.",
    servings: 8,
    timeinvest: 45,
    source: "",
    category_ids: [8],
    imageURL: "https://wholefully.com/wp-content/uploads/2018/10/24-hour-yogurt-hero-bowl-735x1101.jpg"
})

Recipe.create({
    title: "Berry Blast Smoothie",
    description: "This smoothie can be customized in so many ways. Add really any berries, or any fruit for that matter, and enjoy pure bliss.",
    ingredients: "1 C frozen strawberries\n½ T 100% orange juice concentrate\n½ C ice\n½ C frozen bananas\n½ cup water\n2T milk powder",
    instructions: "Blend until smooth",
    servings: 3,
    timeinvest: 10,
    source: "Renaty Recepty",
    category_ids: [4],
    imageURL: "https://www.pumpkinnspice.com/wp-content/uploads/2015/03/blueberry-blast-smoothie6.jpg"
})

Recipe.create({
    title: "Bannana Smoothie",
    description: "This smoothie is sweet and can be adjusted to display any flavour you desire.",
    ingredients: "2 frozen bananas\n1 C orange juice\n6 frozen berries",
    instructions: "1. Míchej až je to tak tuhý jako milkshake.\n2. Přidej pomerančovej džus jestlu je potřeba.\n1. Mix until it is as thick as a milkshake.\n2. Add orange juice if needed. Enjoy.",
    servings: 4,
    timeinvest: 10,
    source: "",
    category_ids: [4],
    imageURL: "https://fitfoodiefinds.com/wp-content/uploads/2019/03/banana-smoothie-sq.jpg"
})

Recipe.create({
    title: "Tropical Smoothie",
    description: "Blend these fruits together to feel like you're in Hawaii . . .",
    ingredients: "5 oranges\n3 kiwis\n1 mango\n1 cup kale\n1 handful of cilantro",
    instructions: "Mix to desired consistency",
    servings: 4,
    timeinvest: 10,
    source: "",
    category_ids: [4],
    imageURL: "https://www.sixsistersstuff.com/wp-content/uploads/2013/10/Tropical-Smoothie-done.jpg"
})

Recipe.create({
    title: "Almondmilk",
    description: "If  almondmilk is getting too expensive for you these days, or too watery, or out of hand, just get almonds and make your own almondmilk! Fresh almondmilk is the best!",
    ingredients: "1 cup almonds soaked overnight\n1 1/2 - 2 cups water\n1/4 cup dates\nDash of salt",
    instructions: "1. Blend all ingredients very well and then pour through a cheesecloth into a jar.\n2. Keeps in refrigerator for 5 days.",
    servings: 6,
    timeinvest: 15,
    source: "Renaty Recepty",
    category_ids: [4],
    imageURL: "https://www.fitmittenkitchen.com/wp-content/uploads/2018/02/How-to-make-homemade-nut-milk-21.jpg"
})

Recipe.create({
    title: "Pizza",
    description: "Homemade pizza is healthier, but also tastes delicious. Try backing with a pizza stone for best results.",
    ingredients: "WW Flour\nUn. Flour\nYeast\nOil\nCukr\nSul\nMleko/ Voda",
    instructions: "Mix all ingredients\nBake on pizza stone at 400 degrees farenheight",
    servings: 6,
    timeinvest: 45,
    source: "Renaty Recepty",
    category_ids: [3],
    imageURL: "https://carlsbadcravings.com/wp-content/uploads/2020/06/BBQ-Chicken-Pizza-v12.jpg"
})

Recipe.create({
    title: "Mac and Cheese Casserole",
    description: "This delicious vegan mac and cheese is best enjoyed with steamed brocolli",
    ingredients: "1 box (14 ounces) whole-wheat macaroni noodles cooked according to package directions 4 cups water, divided 1 cup raw cashews ½ cup oil ½ cup pimento peppers ¼ cup yeast flakes 3 ½ Tbsp lemon juice ½ Tbsp salt 2 tsp onion powder ½ tsp garlic powder",
    instructions: "1. Preheat oven to 350. Lightly coat a 9-by-13-inch baking dish with non-stick cooking spray.\n2. Blend 2 cups water and nuts in a blender until very smooth and creamy. This can take several minutes depending on your blender.\n3. Add remaining ingredients, except pasta, to blender. Blend until smooth and creamy.\n4. Combine blended mixture and pasta in prepared baking dish; stir well to mix.\n5. Bake 45 minutes.",
    servings: 12,
    timeinvest: 80,
    source: "Renaty Recepty",
    category_ids: [3],
    imageURL: "https://sugarspunrun.com/wp-content/uploads/2018/01/baked-macaroni-and-cheese-recipe-1-of-1-12.jpg"
})

Recipe.create({
    title: "Pot Pie Casserole",
    description: "",
    ingredients: "For Base\n2 cups water \n2 ½ cups diced potatoes \n1 ½ cup sliced carrots \n1 cup diced onion \n1 ½ cups frozen peas \n1 cup diced tofu or gluten \ndash of salt\nAlso make 1 recipe Basic Cream Sauce \n1 recipe Biscuits\n For Pot Pie Biscuits\n1 ½ cups white flour \n1 ½ cups whole wheat flour \n3 tsp baking powder \n1 tsp salt \n4 Tbsp margarine \n1 1/3 cup soymilk\nFor Cream Souce\n1 cup raw cashews \n2 cups water \n1 tsp salt \n2 tsp onion powder \n1 Tbsp chicken-style seasoning \n½ tsp garlic powder \n2 Tbsp cornstarch, flour or clear jel \n1 ½ cups more water",
    instructions: "For Base:\n1. Simmer all ingredients except peas until tender.\n2. Mix all vegetables (including peas), tofu, salt and water and pour the mixture into a 9x13\" pan.\n3. Add in the Cream Sauce and mix well.\n4. Place cut-out biscuits on top in an orderly fashion. Bake at 450 degrees for 12-15 minutes, or until the biscuits are golden.\nFor Bisquits:\n1. Combine dry ingredients (first 4) and mix well.\n2. Add margarine and crumble it throughout the mixture, until it looks like bread crumbs.\n3. Add the milk and mix lightly. Knead a little.\n4. Then roll the dough out to about 1/2 inch in thickness & cut out round biscuits.\n5. Bake these on the Pot Pie - Cream Mixture according to its directions (450, 12-15 minutes).\nFor Sauce:\n1. Place all ingredients, except for the last 1 1/2 cups of water, in a blender & whiz on high for 2-5 minutes. Once it is really smooth, and you cannot feel any grittiness between your thumb and forefinger, pour the blended mix and the extra water into a sauce pan.\n2. Mix and bring to a boil over medium heat, stirring constantly.\n3. Once thickened, remove it from the stove and then use this on your favorite casseroles.\n4. In the case of pot pie, pour this sauce into the 9x13\" dish and mix well, then add biscuits.",
    servings: 8,
    timeinvest: 75,
    source: "Renaty Recepty",
    category_ids: [3],
    imageURL: "https://images-gmi-pmc.edge-generalmills.com/8d0a974d-1385-4313-9150-805095ff7bc0.jpg"
})

Recipe.create({
    title: "Millet Loaf",
    description: "This is an exellent replacement for turkey at thatnksgiving of for regular meat loaf.",
    ingredients: "½ c cashews\n1 c water\n1 c bread crumbs\n1 ½ c cooked millet\n½ c quick oats\n1 onion, chopped\n1 T chicken-style seasoning\n½ t garlic powder\n2 T soy sauce or Bragg's\n½ t sage",
    instructions: "1. Umixuj kešu a vodu do hladka.\n2. Smíchej s ostatním v míse.\n3. Dej do pekáčku a peč na 350 stupňů 25-30 minut.",
    servings: 10,
    timeinvest: 35,
    source: "Renaty Recepty",
    category_ids: [3],
    imageURL: "https://www.veganricha.com/wp-content/uploads/2014/11/thanksgiving-lentil-loaf-5087-1-500x500.jpg"
})

Recipe.create({
    title: "Confetti Couscous",
    description: "My favourite way to make couscous",
    ingredients: "2 cups water or vegetable broth\n1½ cups couscous\n¼ cup raisins\n¼ cup roasted red bell pepper, chopped\n1 tsp vegan butter or oil\n1 sprig of thyme, stemmed\nSalt to taste\nFresh cilantro, chopped",
    instructions: "Step 1\nBring water or broth to a boil.\nStep 2\nAdd red bell pepper, butter or oil, thyme leaves and salt.\nStep 3\nStir in couscous, cover and reduce heat to simmer. Add raisins.\nStep 4\nCook until liquid is absorbed. Add chopped cilantro, stir and fluff. Serve hot.",
    servings: 6,
    timeinvest: 25,
    source: "3ABN Recipes",
    category_ids: [3],
    imageURL: "https://www.3abnrecipes.org/wp-content/uploads/2017/02/ConfettiCouscousTDY16072.jpg"
})

Recipe.create({
    title: "Minestrone",
    description: "This soup has it all. The veggies, pasta, legumes, protein, and unequaled richness and taste among Italian soups.",
    ingredients: "2 Tbsp good olive oil\n4 oz pancetta, 1/2-inch-diced\n1 1/2 cups chopped yellow onions\n2 cups diced carrots (3 carrots)\n2 cups diced celery (3 stocks)\n2 1/2 cups diced, peeled butternut squash\n1 1/2 Tbsp minced garlic (4 cloves)\n2 tsp chopped fresh thyme leaves (or 1 tsp thyme)\n26 oz canned or chopped tomatoes\n6 - 8 cups chicken stock (vegetarian)\n1 bay leaf\n2 tsp kosher salt\n1 1/2 tsp ground black pepper\n1 (15 oz can) cannellini beans, drained & rinsed\n2 cups cooked small pasta, such as tubetti\n8 - 10 oz fresh baby spinach leaves\n1/2 cup good dry white wine (optional)\n2 Tbsp store-bought pesto\nGarlic bruschetta (optional)\nGrated cheese (optional)",
    instructions: "1. First cook pasta. Put one cup of pasta into a large pot of boiling salted water. Cook a corn to the directions on the package drain and set aside.\n2. Heat 2 Tbsp of olive oil over medium- heat in a large, heavy pot or Dutch oven. Add the pancetta and cook over medium-low heat for 6-8 minutes, stirring occasionally, until lightly browned. Add the onions, carrots, celery, squash, garlic and thyme and cook over medium-heat stirring occasionally for 8 to 10 minutes until the vegetables begin to soften.\n3. Add the tomatoes, 6 cups of chicken stock and bay leaf, salt and pepper to the pot. Bring to a boil, then lower the heat and simmer uncovered for 30 minutes until, the vegetables are tender.\n4. Discard the bay leaf. Add the beans and cooked pasta and heat through. The soup should be quite thick but if it's too thick add more chicken stock. Just before serving, reheat the soup add the spinach and toss with two big spoons (like tossing a salad). Cook just until the leaves are wilted. Stir in the pesto and salt to taste about (1 tsp).\n5. Serve with Bruschetta and cheese on top if desired. Serve hot.",
    servings: 15,
    timeinvest: 120,
    source: "Renaty Recepty",
    category_ids: [3],
    imageURL: "https://www.healthyseasonalrecipes.com/wp-content/uploads/2018/09/minestrone-soup-sq-012.jpg"
})

Recipe.create({
    title: "Potato-Carrot Swirl Soup",
    description: "This soup is especially aesthetically pleasing.",
    ingredients: "2 large russet potatoes (4 medium), peeled & cut\n2+ cups water\n1 medium onion, diced\n4 teaspoons Chicken-Like Seasoning\n½ teaspoon salt\n4 medium carrots, peeled & shredded\n2 teaspoons curry powder\n½ teaspoon salt\n2+ cups water\n1 can coconut milk (or 2 cups soy milk)\n½ teaspoon dill weed (or 1 fresh spring)",
    instructions: "1. Place potatoes, onion, and seasonings in a medium\nsaucepan and add 2 cups water (or enough water to\ncome just over the top of the vegetables).\n2. Add the carrots and seasonings into the saucepan\n3. Boil the soup for 20 minutes or until tender. Remove\nfrom heat.\n4. Add in the coconut milk and dill and blend the soup if\ndesired.\n5. Salt to taste.",
    servings: 6,
    timeinvest: 50,
    source: "Renaty Recepty",
    category_ids: [2],
    imageURL: "https://twohealthykitchens.com/wp-content/uploads/2020/02/Instant-Pot-Sweet-Potato-Soup-Recipe-square.jpg"
})

Recipe.create({
    title: "štrudl",
    description: "This traditional german dessert is on the level of baklava. Learning to make this will impress your whole family and all your friends.",
    ingredients: "3 cups vody\n1 Tbsp soli\n1/3 cup oleje\n4 cups unbleached mouky\n4 cups celozrné mouky\nPlnění\n2 kostky tofu\n2 tsp soli\n1 cup kyselého zelí\nExtra\n1/3 cup vody\n1/3 cup oleje\nvíc zelí",
    instructions: "1. Všechny suroviny smíchej a nech sedět 2 hodiny.\n2. Nastříkej desku olejem a rozděl těsto na dvě půlky.\n3. Co nejvíc rozválej a pak roztahuj od prostředka do stran.\n4. Smíchej suroviny pro náplň a prostři je na rozválené těsto. Těsto zaviň a rozpůl.\n5. Vař be vodě s olejem, zelím a vař 25 na jední stranĕ a zas 20 minut na druhé.",
    servings: 10,
    timeinvest: 180,
    source: "",
    category_ids: [7],
    imageURL: "https://www.jidelniplan.cz/obrazky/soubory/1248/P3FKERWCFL/twitter.logo/Jablecny_strudl_z_listoveho_testa-2.jpg"
})

Recipe.create({
    title: "Fiesta Rice",
    description: "This rice is perfect for an evening meal.",
    ingredients: "1 1/2 cups Uncle Ben’s natural whole grain brown rice\nNon-stick spray coating\n1 1/2 cups soy curls\n1 1/2 Tbsp chicken seasoning\n1 medium onion\n1 red bell pepper\n1 Tbsp chili powder\n3 cups water\n3/4 cup prepared salsa\n1 cup corn kernels\n1/4 cup cilantro",
    instructions: "1. Soak soy curls in hot water for 10 minutes.\n2. Sauté for 5-7 minutes along with onion.\n3. Chop cilantro, dice onion and pepper and thaw or drain corn kernels.\n4. Heat 5-qt sauce pan with tight fitting lid over medium-high heat. Spray pan and sauté onion & pepper in chili powder (2 min).\n5. Add rice, water, salsa and corn. Mix well and bring to a boil. Cover and reduce to a simmer. Simmer 30 minutes.\n6. Remove from heat, top with cilantro and keep covered 5 minutes or more or until ready to serve.",
    servings: 6,
    timeinvest: 40,
    source: "",
    category_ids: [2],
    imageURL: "https://diethood.com/wp-content/uploads/2016/05/Fiesta-Rice-Recipe-1.jpg"
})

Recipe.create({
    title: "Raw Marinara",
    description: "This is a great topping for zuchinni pasta while you go on that raw food diet!",
    ingredients: "1 tomato \n1/2 red bell pepper \n1 handful sun-dried tomatoes \n2 dashes of salt \n2 dashes of oregano \n2 dashes of basil \n2 dashes of herb pepper (or black)",
    instructions: "1. Soak sun-dried tomatoes for at least 2 hours.\n2. Blend all until smooth.",
    servings: 8,
    timeinvest: 15,
    source: "",
    category_ids: [6],
    imageURL: "https://www.veggiesdontbite.com/wp-content/uploads/2014/06/raw-tomato-marinara-sauce-30-1.jpg"
})

Recipe.create({
    title: "Raw Ketchup",
    description: "This is great to dip your carrot sticks in while you're on that raw food diet.",
    ingredients: "1 c sun dried tomatoes\n1-2 fresh tomatoes\nDesired amounts of\nRosemary\nBasil\nOregano\nLemon juice",
    instructions: "In a good processor process all ingredients.",
    servings: 8,
    timeinvest: 15,
    source: "Renaty Recepty",
    category_ids: [6],
    imageURL: "https://cdn.eatingvibrantly.com/wp-content/uploads/2013/04/raw-tomato-sauce_800x600.jpg"
})

Recipe.create({
    title: "Raw Mayo",
    description: "A replacement for regular mayo on the raw food diet.",
    ingredients: "2-3 Tbsp cashews\n1 tsp lemon juice\n1 tsp salt\n2 Tbsp water",
    instructions: "Blend all ingredients until smooth",
    servings: 6,
    timeinvest: 10,
    source: "",
    category_ids: [6],
    imageURL: "https://lh3.googleusercontent.com/proxy/jbZRNlpAECBAKOda6j4AnBTneE9kosLwXT_-uiUK3MeXIuM1NxHjHcjhypRt2YzvZIoSZtcVfB_6vbSh_vjSLCbLUne1wynYes64E9ezogcgamSVL0DO4--ds2N-3vA"
})

Recipe.create({
    title: "Greek Salad",
    description: "This salad is healthy, delicious and super easy to compile.",
    ingredients: "Salad\n1 (15) oz can of chickpeas (or 2 cups fresh)\n1 cup cherry tomatoes, quartered\n1 cup cucumber, chopped\n¼ cup kalamata olives, halved\n¼ cup red onion, chopped\n½ cup fresh parsley, loosely packed\nDressing\n2 tablespoons freshly squeezed lemon juice\n2 tablespoons olive oil\nsalt and pepper to taste",
    instructions: "1. Combine all the salad ingredients in a big bowl. Toss with dressing.\n2. For best results refrigerate for 30 minutes to let the flavors soak into each other.\n3. Serve over a bed of lettuce.",
    servings: 6,
    timeinvest: 15,
    source: "",
    category_ids: [8],
    imageURL: "https://www.cookingclassy.com/wp-content/uploads/2018/02/greek-salad-4.jpg"
})

Recipe.create({
    title: "Kale Salad",
    description: "This salad and its dressing are the perfect appetizer for any meal.",
    ingredients: "Dressing\n1/3 cup fresh lemon juice\n3 Tbsp Bragg's or soy sauce\n1/3 cup water\n1/2 tsp garlic powder or 1 large clove, pressed\n1 tsp onion powder\nSalad\n7 cups raw kale, chopped\n4 scallions, chopped\n1/3 cup raw, sprouted sunflower seeds\n1/2 cup red bell pepper, diced\n1 jar of green olives",
    instructions: "1. Combine first five ingredients in a jar and shake to make the dressing.\n2. Toss the kale, olives and scallions in a large bowl.\n3. Mix the lemon juice, Bragg's, water, garlic and onion in a cup for dressing.\n4. Pour this over the salad and allow it to marinate for an hour or overnight.\n5. Just before serving add the sunflower seeds and red bell pepper.",
    servings: 5,
    timeinvest: 20,
    source: "Renaty Recepty",
    category_ids: [8],
    imageURL: "https://tmbidigitalassetsazure.blob.core.windows.net/rms3-prod/attachments/37/1200x1200/exps113669_TH143190A10_11_4bC_RMS.jpg"
})

Recipe.create({
    title: "Applesauce",
    description: "Making your own applesauce is loads of fun. Get the kids involved too!",
    ingredients: "apples (more apples = more applesauce)\nglass jars with heat-sealable lids",
    instructions: "peel and core the apples\ncut them up and put them in a boiling pot of water\nboil until they are tender\nif desired, blend apple pieces into a puree\npour the applesauce into the glass jars and tightly close lids\nsubmerge in water in a pressure-pot, and, when boiling, boil for 15 minutes\ntake the jars out and lay them on a cloth to drip and cool\nbefore they cool, quickly open the top of each jar for a second, to let the pressurized air\nescape (be careful), and then close tightly again\nthe lids should snap down and seal",
    servings: 10,
    timeinvest: 90,
    source: "Renaty Recepty",
    category_ids: [8],
    imageURL: "https://www.spendwithpennies.com/wp-content/uploads/2019/10/Homemade-Applesauce-SpendWithPennies-2.jpg"
})

Recipe.create({
    title: "Superfood Surprise Cookies",
    description: "These cookies are easy to make for potluck . . . and there are never leftovers.",
    ingredients: "Cane juice crystals 3/4 cup\nCoconut oil 1/2 cup\nSweet potato, cooked & mashed 3/4 cup\nVanilla 2 tsp\nMaple or brown rice syrup 1/2 cup\nWhole wheat pastry flour 2 1/2 cups\nAluminum-free baking powder 1 Tbsp\nSalt 1 tsp\nPecans or walnuts 1 1/2 cups\nTopping\nCane juice crystals 1/4 cup\nCinnamon 2 tsp",
    instructions: "1. Preheat oven to 375. Line a baking sheet with parchment paper or spray with non-stick cooking spray. 2. Mix topping ingredients together in a small bowl and set aside. 3. Use an electric mixer to combine oil with cane juice crystals. Mix in the mashed sweet potato, vanilla extract and syrup until well combined. 4. In a smaller bowl, mix together flour, aluminum-free baking powder, salt and pecans. Add the dry ingredients to the wet ingredients and mix well. 5. Wet your hands on a plate full of water and shape spheres of your desired size (they tend to be sticky). Then flatten them to make cookies. Repeat until baking sheet is full and all the dough is used. 6. Sprinkle the topping on top. 7. Bake for 13-15 minutes until just starting to brown. 8. Remove from oven and let cool on the pan a few minutes, then place on a wire rack to cool.",
    servings: 30,
    timeinvest: 80,
    source: "Kidlicious Cookbook",
    category_ids: [7],
    imageURL: "https://kudoskitchenbyrenee.com/wp-content/uploads/2017/09/sweet-potato-cookies-final-6-1024x683.jpg"
})

Recipe.create({
    title: "Raw Pistacio Cookies",
    description: "These cookies melt in your mouth and leave you feeling refreshed.",
    ingredients: "1 1/4 cup raw pistachios\n2 tablespoon coconut flakes\n1/3 cup melted coconut oil\n1/3 cup honey or agave\n1/4 teaspoon salt",
    instructions: "1. Clean the pistachios from their outer shell and blend them into flour. \n2. Mix everything in a big bowl using a spatula. \n3. Roll into a salami form using some plastic foil and put in the fridge for 24 hours. \n4. Using a sharp knife cut into small cookies. If you have some small cookie cutters you can also shape them differently. \n5. Serve garnished with coconut flakes and fresh fruits.",
    servings: 20,
    timeinvest: 30,
    source: "One Green Planet Website",
    category_ids: [7],
    imageURL: "https://149366112.v2.pressablecdn.com/wp-content/uploads/2013/12/Raw-Christmas-cookies.jpg"
})

Recipe.create({
    title: "Vegan Kisses",
    description: "These are a favorite Christmas treat that melt on your tongue. Make sure to store these in an airtight container.",
    ingredients: "1 cup legumes, like white beans - one cup provides approximately 110 g of liquid (you only want the liquid the legumes are in)\n150 granulated sugar\nmay be added\n¼ - ½ tsp guar gum\n½ tsp ground vanilla\n50 g melted chocolate",
    instructions: "1. Preheat oven to 212 ° F and prepare cookie sheets lined with parchment paper. Open the glass of chickpeas and pour the liquid from it through a sieve into a bowl. If you are going to make bigger kisses, stir in about ¼ teaspoon of guar gum, which stabilizes the cream. Then just whisk - first at low speed, then gradually increase. After about 20 seconds it should start making meringue.\n2. Whisk until the meringue is thick. Whisk in sugar and vanilla. Put the mixture into a piping bag and make kisses on the parchment paper. Feel free to add the melted chocolate but keep in mind that the more things you mix in, the harder the kiss-making process will be.\n3. Put the sheets with the kisses in the oven at about 212 ° F. Bake them for an hour, or an hour & a half if you added chocolate or other optional ingredients. If the kisses are especially large you may need to bake them over two hours.\n4. After taking the sheets out, leave the meringue to cool for a while, then they should be easy to peel off the paper.",
    servings: 80,
    timeinvest: 350,
    source: "Veganotic",
    category_ids: [7],
    imageURL: "https://i.pinimg.com/originals/30/9a/cc/309acc9e524175995beb4e579bc64ae6.jpg"
})

Recipe.create({
    title: "Kilogram Cake",
    description: "This is a European version of regular pound cake. It's smoother and flufier than pound cake and has a distinctive shape and look.",
    ingredients: "2 1/2 cups flour\n1/2 cup ground blanched almonds\n5 tablespoons cornstarch\n2 teaspoons baking powder\n1 teaspoon bakeing soda\npinch of salt\n400 ml (1 Can) coconut milk\n3/4 cup vegetable oil\n1/2 cup yogurt or applesauce\n1 3/4 cup granulated sugar\n3 teaspoons vanilla extract\njuice of half a medium lemon\n1 t rum extract\n2-3 tbsp cocoa\na little coconut oil for greasing the form",
    instructions: "1. Preheat the oven to 350°F and, around he inside of the mold, spread coconut oil and sprinkle flour.\n2. Mix flour, ground almond, corn starch, baking powder, baking soda and salt together in a bowl and mix well.\n3. In a larger bowl, whisk oil and mix well with applesauce, vanilla, rum, lemon and sugar. Then add flour mixture and pour coconut milk in little bits, alternating, after each addition, mix thoroughly whisk. Use all flour and milk.\n4. Separate 1/3 dough into a smaller bowl, add a little cocoa and rum and mix well. Pour 1/3 vanilla dough into the greased form, all the cocoa and then the rest of the vanilla dough. Take a knife of spatula and dip it into the liquid batter in the mold as to create beautiful patterns.\n5. Bake at 350°F for 1 hour and 10 minutes. Test with tooth picks.\n6. After 15 minutes to cool place on rack.",
    servings: 12,
    timeinvest: 80,
    source: "Veganotic",
    category_ids: [7],
    imageURL: "https://lh3.googleusercontent.com/proxy/1SS_axqvJUxuJpfbdybpjgDKSVtQ0RUs8-1MGlY4gF_87_x2mvAOqwMBCnB_IrkCw8QWIzP0WiyLjUz_ekj-k3u-tbDcmgsDCmBqXsu8PdtmrbnITsCrsNGswUA_remJ1x4axXjfsxXR"
})

Recipe.create({
    title: "Linecké",
    description: "Traditional Czech sandwich cookies. Usually made for Christmas.",
    ingredients: "250 g flour (smooth,medium-ground or mix)\n90 g of icing sugar\n160 g of vegetable butter\n1 level tablespoon\nvanilla pudding\n1 teaspoon cornstarch\na little lemon zest and\nlemon juice\nquality currant jam",
    instructions: "1. In a bowl Mix flour, sugar, starch and lemon zest.\n2. Add a tablespoon of pudding, lemon juice and warm diced vegetable butter. Prepare a smooth dough leave at least an hour (or overnight) to rest in the fridge.\n3. Preheat oven to 350 ° F. Divide the kdough in half (part of the dough you do not use, return to the refrigerator) and roll out on floured surface to a thickness of about 2-3 mm.\n4. Cut out shapes that are to be put on a tray lined with baking paper. Bake for about 10-15 minutes, watching closely. After baking, dust with powdered sugar.\n5. Store in a sealed container and put bottoms and tops together with jam before serving.",
    servings: 50,
    timeinvest: 120,
    source: "Veganotic",
    category_ids: [7],
    imageURL: "https://www.albert.cz/imgm/YTg4MDk1LXNxdWFyZUFyZWF8YTE3ODIwNXxhMTIzMDA3fGEzMDEzMzDEyYO6/17-11-Linecke-cukrovi-babicky-Libusky.jpg"
})

Recipe.create({
    title: "Raw Orange Blueberry Cheesecake",
    description: "Tastes just like real cheesecake. Make 1 day ahead.",
    ingredients: "FOR THE CRUST:\n2 cups raw nuts\n1 cup dates or raisins\nA pinch of salt\nFOR THE ORANGE\nCHEESECAKE:\n3 cups cashews\n3/4 cup fresh orange juice\n1/2 cup agave/maple syrup\n1/2 cup melted coconut oil\nJuice of one lemon\nZest of all the oranges you juiced\nA pinch of salt\nFOR THE BLUEBERRY LAYER:\n2 cups blueberries\n1/4 cup of the orange cheesecake mixture",
    instructions: "TO MAKE THE CRUST:\n1. Process the nuts and dates/raisins in your food processor until the nuts have become crumbs and the mixture sticks together when you press it. Press into the bottom of a spring-form pan and put in the refrigerator.\nTO MAKE THE ORANGE CHEESECAKE:\n2. Blend all ingredients (except orange zest) in your high-speed blender until very smooth, then add in the orange zest with a spoon. Reserve 1/4 cup of this mixture for the blueberry topping – pour the rest onto your crust and put in the freezer.\nTO MAKE THE BLUEBERRY LAYER:\n3. Blend the blueberries and the 1/4 cup of cheesecake mixture in your food processor or blender until creamy but still with small pieces of blueberry for texture. Spread this over your cheesecake and keep in the freezer or fridge overnight. If you can wait a day — this is best after two days (and not frozen, of course) enjoy with sliced oranges and blueberries.",
    servings: 10,
    timeinvest: 50,
    source: "The Rawsome Vegan Life",
    category_ids: [7],
    imageURL: "https://1.bp.blogspot.com/-wFxMsli40Xo/ULZ2Pc6GwkI/AAAAAAAADzU/89PAcdz2sug/s1600/IMG_0133.JPG"
})

Recipe.create({
    title: "Czech Rolls",
    description: "These are perfect to enjoy with a variety of spreads.",
    ingredients: "500 ml warm water\n2 T oil\n1 t of sugar\n1 T salt\n1 T dry yeast\n1 small can Wondra\nflour (400 ml)\nwhole wheat flour (about 3 cups)\npoppy seeds as topping",
    instructions: "1. Add into a bread mixer- 400 ml water, oil, sugar yeast- then the wondra flour. Mix on medium and add in whole wheat flour as needed to make a dough ball that sticks together and bounces back when pushed.\n2. Mix for about 10 minutes and let rise for half an hour\n3. Make a cone out of the dough and cut into pieces to form small fist-sized spheres. Let them all rise again.\n4. Roll each sphere out and then curl them and put them on baking sheets.\n5. Bake at 350 F for 35 minutes.",
    servings: 20,
    timeinvest: 80,
    source: "Renaty Recepty",
    category_ids: [5],
    imageURL: "https://i2.wp.com/www.czech-stuff.com/wp-content/uploads/2015/03/20536053_10214277544795275_1696512068_o.jpg?resize=600%2C600&ssl=1"
})

Recipe.create({
    title: "Garlic Spread",
    description: "This spread is best enjoyed on the rohliky (see bread category).",
    ingredients: "Vegenaise 2 cups\nSour Cream (if not using\nVegenaise) 2 cups\nCheese (vegan) 1 cup\nGarlic 3-4 cloves",
    instructions: "1. Mix all ingredients\n2. Add or leave out garlic to taste\n3. Spread on the rolls",
    servings: 14,
    timeinvest: 5,
    source: "Renaty Recepty",
    category_ids: [6],
    imageURL: "https://tastefulventure.com/wp-content/uploads/2015/12/Parmesan-Dill-Salmon-Burger-with-Garlic-Aioli-7.jpg"
})

Recipe.create({
    title: "Pita Bread",
    description: "These pita bread pockets are praised by all my friends. Try eating them stuffed with hummus and vegetables. Adding corriander is also good.",
    ingredients: "2 cups of water\n6 T oil\n5 T honey or sugar\n1 T salt\n3 C whole wheat flour\n3 C unbleached flour\n1 ½ T yeast",
    instructions: "1. Preheat oven to 350 F with baking stones inside.\n2. Mix all ingredients and add flour slowly until the dough comes together but is not too sticky.\n3. Make small loaves of dough (about 1 ½”-2”) and roll them out with a rolling pin to 1 cm thickness.\n4. Let each circle of dough rise for 35 minutes on flat or overturned trays.\n5. Bake on pizza stones for 6-7 minutes.",
    servings: 40,
    timeinvest: 50,
    source: "Renaty Recepty",
    category_ids: [5],
    imageURL: "https://www.ruchiskitchen.com/wp-content/uploads/2014/12/Pita_bread_91.jpg"
})

Recipe.create({
    title: "Hummus",
    description: "Enjoy this delicious hummus with pita bread (see bread section).",
    ingredients: "2 c cooked garbanzos \n2 T oil (opt.)\n3-4 cloves garlic\n1 ½ T lemon juice\n4 T tahini\n½ c apple juice, (2T concentrate)\n½ t salt | dash of ground coriander (opt.)",
    instructions: "Process in a food processor and put in pita bread",
    servings: 12,
    timeinvest: 15,
    source: "Renaty Recepty",
    category_ids: [6],
    imageURL: "https://www.themediterraneandish.com/wp-content/uploads/2015/01/How-to-make-hummus-recipe-3.jpg"
})

Recipe.create({
    title: "Summer Wheat Bread",
    description: "This light whole grain bread is perfect for peanut butter and jelly sandwiches.",
    ingredients: "Voda 11-12 oz nebo 1 ½ C\nSul 1 ½ teaspoons\nOlej 1 ½ Tablespoons\nMolasses 2 Tablespoons\nBread Flour 2 Cups\nWW Flour 2 Cups\nYeast 2 teaspoons",
    instructions: "1. Combine water, salt, oil and molasses in a medium bowl.\n2. Mix or sift the flours and yeast into a bowl and then add to wet ingredients.\n3. Mix to make a dough and bake in a bread pan at 350 F until golden (20-30 minutes).",
    servings: 8,
    timeinvest: 45,
    source: "Renaty Recepty",
    category_ids: [5],
    imageURL: "https://www.simplyrecipes.com/wp-content/uploads/2018/09/whole-wheat-bread-LEAD-02.jpg"
})

Recipe.create({
    title: "Zucchini Bread",
    description: "This bread is nutritious and delicious. Perfect for breakfast.",
    ingredients: "1 1/2 cups flour \n2 tsp baking powder \n1/2 tsp salt \n1 1/2 tsp cinnamon \n1 Tbsp flax seed, ground \n1/4 cup water \n1/2 cup sucanat \n1/3 cup oil \n1 tsp vanilla \n1 1/2 cups zucchini, grated \n1/2 cup raisins (optional) \n1/2 cup nuts, chopped (optional) \n1/4 cup water (only if needed)",
    instructions: "1. Mix ground flax seed and water in a small cup and set aside.\n2. Preheat oven to 350 F. In a large bowl, mix together the flour, baking powder, salt and cinnamon.\n3. Add the flax seed mix, sucanat, oil and vanilla and mix well.\n4. Stir in Zucchini, raisins and nuts and mix together gently until "just mixed". Add a little water if the dough seems too dry.\n5. Spoon the batter into a lightly oiled loaf pan and bake for 45-50 minutes. Test with a knife to see if done. Cool for 10 minutes before slicing and serving.",
    servings: 12,
    timeinvest: 45,
    source: "Renaty Recepty",
    category_ids: [1, 5],
    imageURL: "https://www.simplyrecipes.com/wp-content/uploads/2019/07/Zucchini-Bread-1-LEAD.jpg"
})


# breakfast 1
# dinner 2
# entrees 3
# drinks 4
# breads 5
# spreads 6
# desserts 7
# appetizers 8