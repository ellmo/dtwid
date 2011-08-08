class AddPrivacyLevelIdToSubmissions < ActiveRecord::Migration
  def self.up
    add_column :submissions, :privacy_level_id, :integer
  end

  def self.down
    remove_column :submissions, :privacy_level_id
  end
end
