# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user_t = [
	  {:username => 'msk098', :email => 'mist@gmail.com', :password => 'yeahmaybe',:password_confirmation => 'yeahmaybe', :role => 'admin'},
          {:username => 'johnsuser', :email => 'jmk@uiowa.edu', :password => 'password1',:password_confirmation => 'password1', :role => 'user'},
          {:username => 'jsmith', :email => 'james@hotmail.com', :password => 'password2',:password_confirmation => 'password2', :role => 'user'},
          {:username => 'kate_rog', :email => 'krogers@live.com', :password => 'password3',:password_confirmation => 'password3', :role => 'user'},
          {:username => 'links', :email => 'tina@gmail.com', :password => 'password4',:password_confirmation => 'password4', :role => 'user'}
          
          ]

profile_t = [
	  {:user_id => 1,:first_name => 'Marcus', :last_name => 'Scott', :total_score => 0},
          {:user_id => 2,:first_name => 'John', :last_name => 'Kelleher', :total_score => 50},
          {:user_id => 3,:first_name => 'James', :last_name => 'Smith', :total_score => 25},
          {:user_id => 4,:first_name => 'Kate', :last_name => 'Rogers', :total_score => 32},
          {:user_id => 5,:first_name => 'Tina', :last_name => 'Link',:total_score => 12}
          ]

user_t.each do |user|
  User.create!(user)
end

profile_t.each do |profile|
  Profile.create!(profile)
end

level_t = [
	    {:level_name => 'test1', :points => 0, :activity => 'Level Overall Description'},
	    {:level_name => 'test2', :points => 0, :activity => 'Level Overall Description'},
            {:level_name => 'test3', :points => 0, :activity => 'Level Overall Description'},
            {:level_name => 'test4', :points => 0, :activity => 'Level Overall Description'},
	    {:level_name => 'test5', :points => 0, :activity => 'Level Overall Description'},
            {:level_name => 'test6', :points => 0, :activity => 'Level Overall Description'},
            {:level_name => 'test7', :points => 0, :activity => 'Level Overall Description'},
	    {:level_name => 'test8', :points => 0, :activity => 'Level Overall Description'},
            {:level_name => 'test9', :points => 0, :activity => 'Level Overall Description'}
	  ]

mission_t = [
	    {:mission_name => 'test1',:description => 'Mission 1 Plans',:points => 30,:urllink_type => 'link',:url => 'http://www.facebook.com'},
	    {:mission_name => 'test2',:description => 'Mission 2 Plans',:points => 40,:urllink_type => 'link',:url => 'http://www.facebook.com'},
            {:mission_name => 'test3',:description => 'Mission 3 Plans',:points => 50,:urllink_type => 'link',:url => 'http://www.facebook.com'}
	    ]

level_t.each do |level|
  Level.create!(level)
end

all_levels = Level.all
all_users = User.all

all_levels.each do |level|
  mission_t.each do |mission|
    mission[:level_id] = level.id
    @mission = Mission.create!(mission)
    @updatelevel = Level.find(@mission.level_id)
    @updatelevel.points = @updatelevel.points + @mission.points
    @updatelevel.update_attributes!(:level_name => @updatelevel.level_name, :points => @updatelevel.points, :activity => @updatelevel.activity)
  end
end

all_users.each do |user|
  all_levels.each do |level|
    Mission.where(:level_id => level.id).each do |mission_obj|
      Transactionmission.create!(:complete_flag => "Not Complete",:user_id => user.id,:level_id => level.id, :mission_id => mission_obj.id)
    end	 
  end
end

all_users.each do |user|
  all_levels.each do |level|
    Transactionlevel.create(:complete_flag => "Not Complete",:user_id => user.id,:level_id => level.id)	 
  end
end
