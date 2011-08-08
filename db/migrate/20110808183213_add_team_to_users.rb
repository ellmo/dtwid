class AddTeamToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :team, :boolean, :null => false, :default => false
  end

  def self.down
    remove_column :users, :team
  end
end
