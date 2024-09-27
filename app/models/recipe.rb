class Recipe < ApplicationRecord
  has_and_belongs_to_many :categories
  has_many :ingredients

  accepts_nested_attributes_for :ingredients, allow_destroy: true

  serialize :instructions, type: Array, coder: JSON

  validates :name, presence: true
end
