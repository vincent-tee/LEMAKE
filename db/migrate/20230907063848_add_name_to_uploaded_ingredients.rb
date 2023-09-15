class AddNameToUploadedIngredients < ActiveRecord::Migration[7.0]
  def change
    add_column :uploaded_ingredients, :name, :string, null: false
  end
end
