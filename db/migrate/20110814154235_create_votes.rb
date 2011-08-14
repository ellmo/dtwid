class CreateVotes < ActiveRecord::Migration
  def self.up
    create_table :votes do |t|
      t.integer :user_id
      t.integer :submission_id
      t.integer :points, :limit => 1
      t.text :comment

      t.timestamps
    end
  end

  def self.down
    drop_table :votes
  end
end
