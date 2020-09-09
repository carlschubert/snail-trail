class CreateSnails < ActiveRecord::Migration[6.0]
  def change
    create_table :snails do |t|
      t.string :name
      t.string :species
      t.integer :age

      t.timestamps
    end
  end
end
