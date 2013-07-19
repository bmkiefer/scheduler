# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user_t = [
	  {:username => '00000001', :email => 'mist@gmail.com', :password => 'password0',:password_confirmation => 'password0', :role => 'user', :position => 'Project Manager', :department => 'Information Security', :leader=> 'h458706'},
          {:username => '00000002', :email => 'jmk@uiowa.edu', :password => 'password1',:password_confirmation => 'password1', :role => 'user', :position => 'Business Analyst', :department => 'RIS', :leader=> 'd45556'},
          {:username => '00000003', :email => 'james@hotmail.com', :password => 'password2',:password_confirmation => 'password2', :role => 'user', :position => 'Business Anaylst', :department => 'USIS', :leader=> 'y948706'},
          {:username => '00000004', :email => 'krogers@live.com', :password => 'password3',:password_confirmation => 'password3', :role => 'user', :position => 'Lead Application Analyst', :department => 'Life', :leader=> 't904446'},
          {:username => 'admin', :email => 'tina@gmail.com', :password => 'admin12',:password_confirmation => 'admin12', :role => 'admin', :position => 'admin', :department => 'admin', :leader=> 'admin'}
          ]

venue_t = [
	  {:location => 'Wells Fargo Arena',:room => 'Suite 32, Section 117', :tickets => 12, :extra_max => 8},
          {:location => 'Principal Park',:room => 'SkyBox 309', :tickets => 10, :extra_max => 10},
          {:location => 'Principal Park',:room => 'SkyBox 310', :tickets => 10, :extra_max => 10}
          ]

gameicubs_t = [
	  {:game_time => DateTime.strptime("09/14/2009 8:00", "%m/%d/%Y %H:%M"),:team => 'Iowa Cubs', :opposing_team => 'New Orleans Zephyrs'},
          {:game_time => DateTime.strptime("09/15/2009 8:00", "%m/%d/%Y %H:%M"),:team => 'Iowa Cubs', :opposing_team => 'New Orleans Zephyrs'},
          {:game_time => DateTime.strptime("09/16/2009 8:00", "%m/%d/%Y %H:%M"),:team => 'Iowa Cubs', :opposing_team => 'New Orleans Zephyrs'},
          {:game_time => DateTime.strptime("09/17/2009 8:00", "%m/%d/%Y %H:%M"),:team => 'Iowa Cubs', :opposing_team => 'New Orleans Zephyrs'},
          {:game_time => DateTime.strptime("09/18/2009 8:00", "%m/%d/%Y %H:%M"),:team => 'Iowa Cubs', :opposing_team => 'New Orleans Zephyrs'},
          {:game_time => DateTime.strptime("09/19/2009 8:00", "%m/%d/%Y %H:%M"),:team => 'Iowa Cubs', :opposing_team => 'New Orleans Zephyrs'}
          ]

gamebarnstormers_t = [
	  {:game_time => DateTime.strptime("09/14/2009 8:00", "%m/%d/%Y %H:%M"),:team => 'Iowa Barn Stormers', :opposing_team => 'Arizona Rattlers'},
          {:game_time => DateTime.strptime("09/15/2009 8:00", "%m/%d/%Y %H:%M"),:team => 'Iowa Barn Stormers', :opposing_team => 'Arizona Rattlers'},
          {:game_time => DateTime.strptime("09/16/2009 8:00", "%m/%d/%Y %H:%M"),:team => 'Iowa Barn Stormers', :opposing_team => 'Arizona Rattlers'},
          {:game_time => DateTime.strptime("09/17/2009 8:00", "%m/%d/%Y %H:%M"),:team => 'Iowa Barn Stormers', :opposing_team => 'Arizona Rattlers'},
          {:game_time => DateTime.strptime("09/18/2009 8:00", "%m/%d/%Y %H:%M"),:team => 'Iowa Barn Stormers', :opposing_team => 'Arizona Rattlers'},
          {:game_time => DateTime.strptime("09/19/2009 8:00", "%m/%d/%Y %H:%M"),:team => 'Iowa Barn Stormers', :opposing_team => 'Arizona Rattlers'}
          ]

gameenergy_t = [
	  {:game_time => DateTime.strptime("09/20/2009 8:00", "%m/%d/%Y %H:%M"),:team => 'Iowa Energy', :opposing_team => 'Texas Legends'},
          {:game_time => DateTime.strptime("09/21/2009 8:00", "%m/%d/%Y %H:%M"),:team => 'Iowa Energy', :opposing_team => 'Texas Legends'},
          {:game_time => DateTime.strptime("09/22/2009 8:00", "%m/%d/%Y %H:%M"),:team => 'Iowa Energy', :opposing_team => 'Texas Legends'},
          {:game_time => DateTime.strptime("09/23/2009 8:00", "%m/%d/%Y %H:%M"),:team => 'Iowa Energy', :opposing_team => 'Texas Legends'},
          {:game_time => DateTime.strptime("09/24/2009 8:00", "%m/%d/%Y %H:%M"),:team => 'Iowa Energy', :opposing_team => 'Texas Legends'},
          {:game_time => DateTime.strptime("09/25/2009 8:00", "%m/%d/%Y %H:%M"),:team => 'Iowa Energy', :opposing_team => 'Texas Legends'}
          ]

user_t.each do |user|
  User.create!(user)
end

venue_t.each do |venue|
   Venue.create!(venue)
end

gameicubs_t.each do |game|
  Game.create!(game)
end

gamebarnstormers_t.each do |game|
  Game.create!(game)
end

gameenergy_t.each do |game|
  Game.create!(game)
end

@current_venue = Venue.find_by_location_and_room('Principal Park','SkyBox 309')
@icubs = Game.where(:team => 'Iowa Cubs')

@icubs.each do |game|
  Reservation.create!(:game_id => game.id, :venue_id => @current_venue.id, :status => 'Open')
end

@current_venue = Venue.find_by_location_and_room('Principal Park','SkyBox 310')

@icubs.each do |game|
  Reservation.create!(:game_id => game.id, :venue_id => @current_venue.id, :status => 'Open')
end

@current_venue = Venue.find_by_location_and_room('Wells Fargo Arena','Suite 32, Section 117')
@barnstormers = Game.where(:team => 'Iowa Barn Stormers')

@barnstormers.each do |game|
  Reservation.create!(:game_id => game.id, :venue_id => @current_venue.id, :status => 'Open')
end

@energy = Game.where(:team => 'Iowa Energy')

@energy.each do |game|
  Reservation.create!(:game_id => game.id, :venue_id => @current_venue.id, :status => 'Open')
end	
