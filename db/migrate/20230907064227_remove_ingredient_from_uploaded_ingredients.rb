class RemoveIngredientFromUploadedIngredients < ActiveRecord::Migration[7.0]
  def change
    remove_reference :uploaded_ingredients, :ingredient, null: false, foreign_key: true
  end
end
