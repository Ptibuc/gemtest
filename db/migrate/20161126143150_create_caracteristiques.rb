class CreateCaracteristiques < ActiveRecord::Migration[5.0]
  def change
    create_table :caracteristiques do |t|
      t.string :name
      t.references :site, foreign_key: true

      t.timestamps
    end

    create_table :has_caracteristique, :id => false do |t|
      t.string :value
      t.references :product, :caracteristique

      t.timestamps
    end
  end
end
