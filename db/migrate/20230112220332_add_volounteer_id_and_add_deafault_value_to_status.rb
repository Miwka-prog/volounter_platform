class AddVolounteerIdAndAddDeafaultValueToStatus < ActiveRecord::Migration[6.0]
  def change
    add_column :volunteer_help_requests, :volounteer_id, :bigint
    change_column :volunteer_help_requests, :status, :integer, :default => 0
    remove_column :volunteer_help_requests, :image
  end
end
