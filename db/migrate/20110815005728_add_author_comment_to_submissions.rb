class AddAuthorCommentToSubmissions < ActiveRecord::Migration
  def self.up
    add_column :submissions, :author_comment, :text
  end

  def self.down
    remove_column :submissions, :author_comment
  end
end
