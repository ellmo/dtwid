class SubmissionImageLink < ActiveRecord::Base
  belongs_to :submission, :counter_cache => :image_count
end
