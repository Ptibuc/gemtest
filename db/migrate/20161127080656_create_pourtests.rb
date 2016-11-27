class CreatePourtests < ActiveRecord::Migration[5.0]
  def change
    create_table :pourtests do |t|
      t.string :name
      t.string :surname

      t.timestamps
    end
  end
end
