class AddImageCountToSubmissions < ActiveRecord::Migration
  def self.up
    add_column :submissions, :image_count, :integer
  end

  def self.down
    remove_column :submissions, :image_count
  end
end
