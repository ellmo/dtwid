class AddAyeVotesAndNayVotesToSubmission < ActiveRecord::Migration
  def self.up
    add_column :submissions, :aye_votes, :integer
    add_column :submissions, :nay_votes, :integer
  end

  def self.down
    remove_column :submissions, :nay_votes
    remove_column :submissions, :aye_votes
  end
end
