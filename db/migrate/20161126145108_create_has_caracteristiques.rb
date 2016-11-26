class CreateHasCaracteristiques < ActiveRecord::Migration[5.0]
  def change
    create_table :has_caracteristiques do |t|
      t.references :product, foreign_key: true
      t.references :caracteristique, foreign_key: true
      t.string :value

      t.timestamps
    end
  end
end
