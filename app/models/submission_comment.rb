class SubmissionComment < ActiveRecord::Base
  belongs_to :user
  belongs_to :submission, :counter_cache => :image_count
end
