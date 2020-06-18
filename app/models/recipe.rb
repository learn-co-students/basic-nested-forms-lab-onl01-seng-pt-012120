class Recipe < ActiveRecord::Base
  has_many :ingredients 
  accepts_nested_attributes_for :ingredients

  # def recipe_attributes=(ingredients)
  #   self.ingredient = ingredient.find_or_create_by(name: ingredient[:name])
  #   self.ingredient.update(ingredient)
  # end
 
end
