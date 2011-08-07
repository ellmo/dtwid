namespace :submission do
  task :fill_nil_link_updated_at => :environment do
    Submission.all.each do |sub|
      sub.update_attribute :link_updated_at, sub.updated_at
    end
  end
end
