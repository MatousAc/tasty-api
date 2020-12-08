class Recipe < ApplicationRecord
    validates :title, presence: true, length: { minimum: 2, maximum: 150 }
    validates :ingredients, presence: true, length: { minimum: 10 }
    validates :instructions, presence: true, length: { minimum: 10 }
end
