class RemoveScheduleIdFromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :schedule_id, :integer
  end
end
