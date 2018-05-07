class CreateLodgings < ActiveRecord::Migration[5.2]
  def change
    create_table :lodgings do |t|
      t.string :name
      t.string :type
      t.integer :distance_from_entrance
      t.string :capacity
      t.string :facitilites

      t.timestamps
    end
  end
end
