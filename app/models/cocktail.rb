class Cocktail < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  has_many :doses, :dependent => :destroy
  # has_many :ingredients, class_name: 'Ingredient', foreign_key: :ingredient_id
  has_many :ingredients, through: :doses
end
