class CreatePhrases < ActiveRecord::Migration[5.0]
  def change
    create_table :phrases do |t|
      t.string :lang
      t.string :libelle
      t.references :caracteristique, foreign_key: true

      t.timestamps
    end
  end
end
