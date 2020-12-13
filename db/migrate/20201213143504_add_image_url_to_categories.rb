class AddImageUrlToCategories < ActiveRecord::Migration[6.0]
  def change
    add_column :categories, :imageURL, :string
  end
end
