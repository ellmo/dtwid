class MakeNicksUniqueInUsers < ActiveRecord::Migration
  def self.up
    add_index :users, :nick, :unique => true
  end

  def self.down
    remove_index :users, :nick
  end
end
