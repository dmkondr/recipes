class Recipe::Ingredient < ApplicationRecord
  belongs_to :recipe
  belongs_to :ingredient
  belongs_to :unit

  delegate :name, to: :ingredient
end
