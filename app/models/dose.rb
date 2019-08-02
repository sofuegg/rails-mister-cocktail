class Dose < ApplicationRecord
  validates :description, presence: true
  belongs_to :cocktail
  belongs_to :ingredient
  validates :cocktail_id, uniqueness: { scope: :ingredient_id }
  # validates_uniqueness_of :cocktail_id, scope: ingredient_id
  # validates_uniqueness_of :description, :scope => [:cocktail_id, :ingredient_id]
end
