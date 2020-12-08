class AddImageUrlToRecipes < ActiveRecord::Migration[6.0]
  def change
    add_column :recipes, :imageURL, :string
  end
end
