class CreateTransactions < ActiveRecord::Migration[5.2]
  def change
    create_table :transactions do |t|
      t.integer :user_id
      t.integer :vendor_id
      t.decimal :value

      t.timestamps
    end
  end
end
