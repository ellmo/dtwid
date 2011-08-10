class ChangeSubmissionCommentColumnType < ActiveRecord::Migration
  def self.up
    change_column :submission_comments, :comment, :text
  end

  def self.down
    change_column :submission_comments, :comment, :string
  end
end
