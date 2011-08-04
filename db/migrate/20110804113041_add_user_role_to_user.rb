class AddUserRoleToUser < ActiveRecord::Migration
  def self.up
    add_column :users, :user_role_id, :integer, :default => 1
  end

  def self.down
    remove_column :users, :user_role_id
  end
end
