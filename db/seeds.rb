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

MapEpisode.create(:name => 'Knee-Deep in the Dead')
MapEpisode.create(:name => 'The Shores of Hell')
MapEpisode.create(:name => 'Inferno')

MapSlot.create(:name => 'M1 (starter map)')
MapSlot.create(:name => 'M2 - M7')
MapSlot.create(:name => 'M8 (boss encounter map)')
MapSlot.create(:name => 'M9 (secret level map)')
