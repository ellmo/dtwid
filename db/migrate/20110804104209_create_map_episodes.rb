class CreateMapEpisodes < ActiveRecord::Migration
  def self.up
    create_table :map_episodes do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :map_episodes
  end
end
