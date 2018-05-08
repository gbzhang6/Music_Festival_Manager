class CreateVisits < ActiveRecord::Migration[5.2]
  def change
    create_table :visits do |t|
      t.integer :vendor_id
      t.integer :schedule_id
      t.decimal :transaction_total

      t.timestamps
    end
  end
end
