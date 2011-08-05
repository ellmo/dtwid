class AddUserRoleAndNickToUser < ActiveRecord::Migration
  def self.up
    add_column :users, :user_role_id, :integer, :null => false, :default => 1
    add_column :users, :nick, :string
  end

  def self.down
    remove_column :users, :user_role_id
    add_column :users, :nick
  end
end
