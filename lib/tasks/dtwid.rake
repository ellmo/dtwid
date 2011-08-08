namespace :submission do
  task :fill_nil_link_updated_at => :environment do
    Submission.find_all_by_link_updated_at(nil).each do |sub|
      sub.update_attribute :link_updated_at, sub.updated_at
    end
  end
  
  task :update_image_count => :environment do
    Submission.all.each do |sub|
      sub.update_attribute :image_count, sub.images.size
    end
  end
  
  task :zero_privacy_levels => :environment do
    Submission.all.each do |sub|
      sub.update_attribute :privacy_level_id, PrivacyLevel.find_by_level(0)
    end
  end
end

namespace :user do
  task :fill_team_with_false do
    User.all.each do |u|
      u.update_attribute :role, false
    end
  end
end
