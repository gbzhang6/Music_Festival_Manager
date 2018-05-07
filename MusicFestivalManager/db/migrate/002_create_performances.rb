class CreatePerformance < ActiveRecord::Migration
  def change
    create_table :performances do |t|
      t.string :title
      t.integer :artist_id
      t.integer :stage_id

      t.timestamps null: false
    end
  end
end