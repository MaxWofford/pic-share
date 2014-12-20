class AddUserIdAndEventIdToUserPermissions < ActiveRecord::Migration
  def change
    add_column :user_permissions, :user_id, :integer
    add_column :user_permissions, :event_id, :integer
  end
end
