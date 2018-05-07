class CreateAccesses < ActiveRecord::Migration[5.2]
  def change
    create_table :accesses do |t|
      t.string :type
      t.integer :venue_id
      t.integer :user_id

      t.timestamps
    end
  end
end
