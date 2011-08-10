class AddCommentCountToSubmissions < ActiveRecord::Migration
  def self.up
    add_column :submissions, :comment_count, :integer
  end

  def self.down
    remove_column :submissions, :comment_count
  end
end
