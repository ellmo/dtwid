class CreateSubmissions < ActiveRecord::Migration
  def self.up
    create_table :submissions do |t|
      t.string :name
      t.integer :map_episode_id
      t.integer :map_slot_id
      t.integer :map_author_id
      t.string :link

      t.timestamps
    end
  end

  def self.down
    drop_table :submissions
  end
end
