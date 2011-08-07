class AddLinkUpdatedAtToSubmissions < ActiveRecord::Migration
  def self.up
    add_column :submissions, :link_updated_at, :datetime
  end

  def self.down
    remove_column :submissions, :link_updated_at
  end
end
