class CreateVenues < ActiveRecord::Migration[5.2]
  def change
    create_table :venues do |t|
      t.string :name
      t.string :type
      t.integer :duration_days

      t.timestamps
    end
  end
end
