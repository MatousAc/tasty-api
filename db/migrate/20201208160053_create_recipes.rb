class CreateRecipes < ActiveRecord::Migration[6.0]
  def change
    create_table :recipes do |t|
      t.string :title
      t.text :ingredients
      t.text :instructions
      t.integer :servings
      t.integer :timeinvest
      t.text :source

      t.timestamps
    end
  end
end
