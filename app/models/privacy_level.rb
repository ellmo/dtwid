class PrivacyLevel < ActiveRecord::Base
  has_many :submissions
end
