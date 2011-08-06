class AddIntendedMapSlotToSubmissions < ActiveRecord::Migration
  def self.up
    add_column :submissions, :intended_map_slot_id, :integer
  end

  def self.down
    remove_column :submissions, :intended_map_slot_id
  end
end
