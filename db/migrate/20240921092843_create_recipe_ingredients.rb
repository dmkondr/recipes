class CreateRecipeIngredients < ActiveRecord::Migration[7.2]
  def change
    create_table :recipe_ingredients do |t|
      t.references :recipe
      t.references :ingredient
      t.references :unit
      t.decimal :amount, precision: 6, scale: 2
      t.timestamps
    end
  end
end
