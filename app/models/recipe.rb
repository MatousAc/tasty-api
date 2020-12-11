class Recipe < ApplicationRecord
    has_many :recipe_categories
    has_many :categories, through: :recipe_categories
    validates :title, presence: true, length: { minimum: 2, maximum: 150 }
    validates :ingredients, presence: true, length: { minimum: 10 }
    validates :instructions, presence: true, length: { minimum: 10 }
    validates :imageURL, presence: true
end
