class CreateHasCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :has_categories do |t|
      t.references :product, foreign_key: true
      t.references :categorie, foreign_key: true

      t.timestamps
    end
  end
end
