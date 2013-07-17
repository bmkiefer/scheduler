# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user_t = [
	  {:username => 'k889722', :email => 'mist@gmail.com', :password => 'yeahmaybe',:password_confirmation => 'yeahmaybe', :role => 'user', :position => 'Project Manager', :department => 'Information Security', :Leader=> 'y908706'},
          {:username => 'p099044', :email => 'jmk@uiowa.edu', :password => 'password1',:password_confirmation => 'password1', :role => 'user', :position => 'System Analyst', :department => 'RIS', :Leader=> 'y908706'},
          {:username => 'h789987', :email => 'james@hotmail.com', :password => 'password2',:password_confirmation => 'password2', :role => 'user', :position => 'Business Anaylst', :department => 'USIS', :Leader=> 'y908706'},
          {:username => 'n097654', :email => 'krogers@live.com', :password => 'password3',:password_confirmation => 'password3', :role => 'user', :position => 'Lead Application Analyst', :department => 'Life', :Leader=> 'y908706'},
          {:username => 'r456786', :email => 'tina@gmail.com', :password => 'password4',:password_confirmation => 'password4', :role => 'admin', :position => 'admin', :department => 'admin', :Leader=> 'admin'}
          
          ]

venue_t = [
	  {:location => 'Wells Fargo Arena',:room => 'Suite 32, Section 117', :tickets => 12, :extra_max => 8},
          {:location => 'Principal Park',:room => 'John', :tickets => 10, :extra_max => 10},
          {:location => 'Principal Park',:room => 'James', :tickets => 10, :extra_max => 10}
          ]

game_t = [
	  {:location => 'Wells Fargo Arena',:room => 'Suite 32, Section 117', :tickets => 12, :extra_max => 8},
          {:location => 'Principal Park',:room => 'John', :tickets => 10, :extra_max => 10},
          {:location => 'Principal Park',:room => 'James', :tickets => 10, :extra_max => 10}
          ]

user_t.each do |user|
  User.create!(user)
end

venue_t.each do |venue|
   Venue.create!(venue)
end

level_t.each do |level|
  Level.create!(level)
end


question_t = [
		'What did you learn in this mission?',
		'What did you not quite get?',
		'How smart do you feel now?'
	     ]	

all_levels = Level.all
all_users = User.all

@current_level = Level.find_by_level_name('Level 1')

  mission1_t.each do |mission|
    mission[:level_id] = @current_level.id
    @mission = Mission.create!(mission)
    @updatelevel = Level.find(@mission.level_id)
    @updatelevel.points = @updatelevel.points + @mission.points
    @updatelevel.update_attributes!(:level_name => @updatelevel.level_name, :points => @updatelevel.points, :activity => @updatelevel.activity)
  end

@current_level = Level.find_by_level_name('Level 2')

  mission2_t.each do |mission|
    mission[:level_id] = @current_level.id
    @mission = Mission.create!(mission)
    @updatelevel = Level.find(@mission.level_id)
    @updatelevel.points = @updatelevel.points + @mission.points
    @updatelevel.update_attributes!(:level_name => @updatelevel.level_name, :points => @updatelevel.points, :activity => @updatelevel.activity)
  end

@current_level = Level.find_by_level_name('Level 3')

  mission3_t.each do |mission|
    mission[:level_id] = @current_level.id
    @mission = Mission.create!(mission)
    @updatelevel = Level.find(@mission.level_id)
    @updatelevel.points = @updatelevel.points + @mission.points
    @updatelevel.update_attributes!(:level_name => @updatelevel.level_name, :points => @updatelevel.points, :activity => @updatelevel.activity)
  end

@current_level = Level.find_by_level_name('Level 4')

  mission4_t.each do |mission|
    mission[:level_id] = @current_level.id
    @mission = Mission.create!(mission)
    @updatelevel = Level.find(@mission.level_id)
    @updatelevel.points = @updatelevel.points + @mission.points
    @updatelevel.update_attributes!(:level_name => @updatelevel.level_name, :points => @updatelevel.points, :activity => @updatelevel.activity)
  end


@current_level = Level.find_by_level_name('Level 5')

  mission5_t.each do |mission|
    mission[:level_id] = @current_level.id
    @mission = Mission.create!(mission)
    @updatelevel = Level.find(@mission.level_id)
    @updatelevel.points = @updatelevel.points + @mission.points
    @updatelevel.update_attributes!(:level_name => @updatelevel.level_name, :points => @updatelevel.points, :activity => @updatelevel.activity)
  end

@current_level = Level.find_by_level_name('Level 6')

  mission6_t.each do |mission|
    mission[:level_id] = @current_level.id
    @mission = Mission.create!(mission)
    @updatelevel = Level.find(@mission.level_id)
    @updatelevel.points = @updatelevel.points + @mission.points
    @updatelevel.update_attributes!(:level_name => @updatelevel.level_name, :points => @updatelevel.points, :activity => @updatelevel.activity)
  end

@current_level = Level.find_by_level_name('Level 7')

  mission7_t.each do |mission|
    mission[:level_id] = @current_level.id
    @mission = Mission.create!(mission)
    @updatelevel = Level.find(@mission.level_id)
    @updatelevel.points = @updatelevel.points + @mission.points
    @updatelevel.update_attributes!(:level_name => @updatelevel.level_name, :points => @updatelevel.points, :activity => @updatelevel.activity)
  end

@current_level = Level.find_by_level_name('Level 8')

  mission8_t.each do |mission|
    mission[:level_id] = @current_level.id
    @mission = Mission.create!(mission)
    @updatelevel = Level.find(@mission.level_id)
    @updatelevel.points = @updatelevel.points + @mission.points
    @updatelevel.update_attributes!(:level_name => @updatelevel.level_name, :points => @updatelevel.points, :activity => @updatelevel.activity)
  end

@current_level = Level.find_by_level_name('Level 9')

  mission9_t.each do |mission|
    mission[:level_id] = @current_level.id
    @mission = Mission.create!(mission)
    @updatelevel = Level.find(@mission.level_id)
    @updatelevel.points = @updatelevel.points + @mission.points
    @updatelevel.update_attributes!(:level_name => @updatelevel.level_name, :points => @updatelevel.points, :activity => @updatelevel.activity)
  end

#all_levels.each do |level|
  #mission_t.each do |mission|
 #   mission[:level_id] = level.id
  #  @mission = Mission.create!(mission)
  #  @updatelevel = Level.find(@mission.level_id)
 #   @updatelevel.points = @updatelevel.points + @mission.points
 #   @updatelevel.update_attributes!(:level_name => @updatelevel.level_name, :points => @updatelevel.points, :activity => @updatelevel.activity)
  #end
#end

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

Level.all.each do |level|
  Mission.where(:level_id => level.id).each do |mission|
    Submission.create(:mission_id => mission.id, :level_id => level.id )
  end
end

Submission.all.each do |submission|
  question_t.each do |question|
     Question.create(:submission_id => submission.id, :question => question)
  end
end	
