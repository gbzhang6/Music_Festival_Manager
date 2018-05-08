class CreatePerformances < ActiveRecord::Migration[5.2]
  def change
    create_table :performances do |t|
      t.integer :artist_id
      t.integer :stage_id
      t.integer :start_time
      t.integer :end_time

      t.timestamps null: false
    end
  end
end
