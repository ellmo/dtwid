class AddTeamToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :team, :boolean
  end

  def self.down
    remove_column :users, :team
  end
end
