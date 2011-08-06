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

MapSlot.create(:name => 'M1')
MapSlot.create(:name => 'M2')
MapSlot.create(:name => 'M3')
MapSlot.create(:name => 'M4')
MapSlot.create(:name => 'M5')
MapSlot.create(:name => 'M6')
MapSlot.create(:name => 'M7')
MapSlot.create(:name => 'M8')
MapSlot.create(:name => 'M9')
MapSlot.create(:name => 'M2-M7', :playable => false)
