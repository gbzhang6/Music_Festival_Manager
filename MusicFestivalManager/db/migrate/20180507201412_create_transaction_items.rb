class CreateTransactionItems < ActiveRecord::Migration[5.2]
  def change
    create_table :transaction_items do |t|
      t.integer :transaction_id
      t.integer :item_id

      t.timestamps
    end
  end
end
