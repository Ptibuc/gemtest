class CreateCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :categories do |t|
      t.string :name
      t.references :site, foreign_key: true

      t.timestamps
    end

    create_table :has_categorie, :id => false do |t|
      t.references :site, :categorie

      t.timestamps
    end
  end
end
