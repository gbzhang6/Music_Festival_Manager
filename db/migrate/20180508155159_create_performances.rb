class CreatePerformances < ActiveRecord::Migration[5.2]
  def change
    create_table :performances do |t|
      t.integer :artist_id
      t.integer :stage_id
      t.time :start_time
      t.time :end_time

      t.timestamps null: false
    end
  end
end
