class CreateStaffs < ActiveRecord::Migration[5.2]
  def change
    create_table :staffs do |t|
      t.string :name
      t.string :department
      t.integer :venue_id

      t.timestamps
    end
  end
end
