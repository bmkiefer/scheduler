# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user_t = [
	  {:username => 'k889722', :email => 'mist@gmail.com', :password => 'yeahmaybe',:password_confirmation => 'yeahmaybe', :role => 'user', :position => 'Project Manager', :department => 'Information Security', :Leader=> 'y908706'},
          {:username => 'p099044', :email => 'jmk@uiowa.edu', :password => 'password1',:password_confirmation => 'password1', :role => 'user', :position => 'Business Analyst', :department => 'RIS', :Leader=> 'y908706'},
          {:username => 'h789987', :email => 'james@hotmail.com', :password => 'password2',:password_confirmation => 'password2', :role => 'user', :position => 'Business Anaylst', :department => 'USIS', :Leader=> 'y908706'},
          {:username => 'n097654', :email => 'krogers@live.com', :password => 'password3',:password_confirmation => 'password3', :role => 'user', :position => 'Lead Application Analyst', :department => 'Life', :Leader=> 'y908706'},
          {:username => 'r456786', :email => 'tina@gmail.com', :password => 'password4',:password_confirmation => 'password4', :role => 'admin', :position => 'admin', :department => 'admin', :Leader=> 'admin'}
          ]

venue_t = [
	  {:location => 'Wells Fargo Arena',:room => 'Suite 32, Section 117', :tickets => 12, :extra_max => 8},
          {:location => 'Principal Park',:room => 'SkyBox 309', :tickets => 10, :extra_max => 10},
          {:location => 'Principal Park',:room => 'SkyBox 310', :tickets => 10, :extra_max => 10}
          ]

gameicubs_t = [
	  {:game_time => DateTime.strptime("09/14/2009 8:00", "%m/%d/%Y %H:%M"),:team => 'Iowa Cubs', :opposing_team => },
          {:game_time => DateTime.strptime("09/15/2009 8:00", "%m/%d/%Y %H:%M"),:team => 'Suite 32, Section 117', :opposing_team => 12},
          {:game_time => DateTime.strptime("09/16/2009 8:00", "%m/%d/%Y %H:%M"),:team => 'Suite 32, Section 117', :opposing_team => 12},
          {:game_time => DateTime.strptime("09/17/2009 8:00", "%m/%d/%Y %H:%M"),:team => 'Suite 32, Section 117', :opposing_team => 12},
          {:game_time => DateTime.strptime("09/18/2009 8:00", "%m/%d/%Y %H:%M"),:team => 'Suite 32, Section 117', :opposing_team => 12},
          {:game_time => DateTime.strptime("09/19/2009 8:00", "%m/%d/%Y %H:%M"),:team => 'Suite 32, Section 117', :opposing_team => 12}
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
	  {:game_time => DateTime.strptime("09/14/2009 8:00", "%m/%d/%Y %H:%M"),:team => 'Iowa Energy', :opposing_team => 'Texas Legends'},
          {:game_time => DateTime.strptime("09/15/2009 8:00", "%m/%d/%Y %H:%M"),:team => 'Iowa Energy', :opposing_team => 'Texas Legends'},
          {:game_time => DateTime.strptime("09/16/2009 8:00", "%m/%d/%Y %H:%M"),:team => 'Iowa Energy', :opposing_team => 'Texas Legends'},
          {:game_time => DateTime.strptime("09/17/2009 8:00", "%m/%d/%Y %H:%M"),:team => 'Iowa Energy', :opposing_team => 'Texas Legends'},
          {:game_time => DateTime.strptime("09/18/2009 8:00", "%m/%d/%Y %H:%M"),:team => 'Iowa Energy', :opposing_team => 'Texas Legends'},
          {:game_time => DateTime.strptime("09/19/2009 8:00", "%m/%d/%Y %H:%M"),:team => 'Iowa Energy', :opposing_team => 'Texas Legends'}
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

	
all_levels = Level.all
all_users = User.all

@transaction = Transactionlevel.find_by_level_id_and_user_id(@level.id,@user.id)

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

@icubs.each do |game|
  Reservation.create!(:game_id => game.id, :venue_id => @current_venue.id, :status => 'Open')
end

@energy = Game.where(:team => 'Iowa Energy')

@icubs.each do |game|
  Reservation.create!(:game_id => game.id, :venue_id => @current_venue.id, :status => 'Open')
end	
