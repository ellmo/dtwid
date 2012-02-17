# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

UserRole.create(:name => 'user')
UserRole.create(:name => 'admin')
UserRole.create(:name => 'superadmin')

PrivacyLevel.create(:name => 'open', :level => 0)
PrivacyLevel.create(:name => 'users only', :level => 1)
PrivacyLevel.create(:name => 'team only', :level => 2)
PrivacyLevel.create(:name => 'private', :level => 3)

MapEpisode.create(:name => 'Hell on Earth')

32.times do |x|
	MapSlot.create(:name => "MAP%02d" % (x+1))
end

