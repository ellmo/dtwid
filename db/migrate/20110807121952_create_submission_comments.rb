class CreateSubmissionComments < ActiveRecord::Migration
  def self.up
    create_table :submission_comments do |t|
      t.integer :submission_id
      t.integer :user_id
      t.string :comment

      t.timestamps
    end
  end

  def self.down
    drop_table :submission_comments
  end
end
