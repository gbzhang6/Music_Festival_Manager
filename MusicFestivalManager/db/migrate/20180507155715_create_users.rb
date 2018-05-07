class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :favorite_genre
      t.string :arrival_date
      t.string :departure_date
      t.integer :lodging_id

      t.timestamps
    end
  end
end
