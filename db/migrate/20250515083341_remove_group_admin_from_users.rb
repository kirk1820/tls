class RemoveGroupAdminFromUsers < ActiveRecord::Migration[7.2]
  def change
    remove_column :users, :group_admin, :boolean
  end
end
