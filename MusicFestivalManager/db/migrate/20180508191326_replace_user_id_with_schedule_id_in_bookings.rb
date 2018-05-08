class ReplaceUserIdWithScheduleIdInBookings < ActiveRecord::Migration[5.2]
  def change
    remove_column :bookings, :user_id, :integer
    add_column :bookings, :schedule_id, :integer
  end
end
