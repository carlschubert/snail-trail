class CreateTrails < ActiveRecord::Migration[6.0]
  def change
    create_table :trails do |t|
      t.references :snail, null: false, foreign_key: true
      t.integer :length
      t.string :vector

      t.timestamps
    end
  end
end
