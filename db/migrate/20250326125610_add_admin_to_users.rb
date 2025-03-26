class AddAdminToUsers < ActiveRecord::Migration[7.2]
  def change
    add_column :users, :group_admin, :boolean
  end
end
