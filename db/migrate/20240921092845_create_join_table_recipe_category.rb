class CreateJoinTableRecipeCategory < ActiveRecord::Migration[7.2]
  def change
    create_join_table :recipes, :categories
  end
end
