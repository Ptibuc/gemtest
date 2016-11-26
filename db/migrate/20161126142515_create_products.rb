class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :title
      t.string :photo
      t.string :client_id
      t.string :ean
      t.string :shortdescription
      t.text :longdescription
      t.references :site, foreign_key: true

      t.timestamps
    end
  end
end
