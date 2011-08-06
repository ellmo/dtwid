class AddPlayableToMapSlots < ActiveRecord::Migration
  def self.up
    add_column :map_slots, :playable, :boolean, :null => false, :default => true
  end

  def self.down
    remove_column :map_slots, :playable
  end
end
