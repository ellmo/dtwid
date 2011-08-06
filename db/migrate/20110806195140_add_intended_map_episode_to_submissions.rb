class AddIntendedMapEpisodeToSubmissions < ActiveRecord::Migration
  def self.up
    add_column :submissions, :intended_map_episode_id, :integer
  end

  def self.down
    remove_column :submissions, :intended_map_episode_id
  end
end
