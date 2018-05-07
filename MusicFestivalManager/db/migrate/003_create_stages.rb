class Create Stage < ActiveRecord::Migration
  def change
    create_table :stages do |t|
      t.string :name
      t.integer :venue_id

      t.timestamps null: false
    end
  end
end