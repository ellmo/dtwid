class Vote < ActiveRecord::Base
  belongs_to :user
  belongs_to :submission
  
  def after_save
    self.update_counter_cache
  end

  def after_destroy
    self.update_counter_cache
  end

  def update_counter_cache
    self.submission.aye_votes = submission.aye_votes
    self.submission.nay_votes = submission.nay_votes
    self.submission.save
  end
end
