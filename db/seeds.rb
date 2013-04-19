# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user_t = [
	  {:username => 'msk098', :email => 'mist@gmail.com', :first_name => 'Marcus', :last_name => 'Scott', :password => 'yeahmaybe',:password_confirmation => 'yeahmaybe', :total_score => 0, :role => 'admin'},
          {:username => 'johnsuser', :email => 'jmk@uiowa.edu', :first_name => 'John', :last_name => 'Kelleher', :password => 'password1',:password_confirmation => 'password1', :total_score => 50, :role => 'user'},
          {:username => 'jsmith', :email => 'james@hotmail.com', :first_name => 'James', :last_name => 'Smith', :password => 'password2',:password_confirmation => 'password2', :total_score => 25, :role => 'user'},
          {:username => 'kate_rog', :email => 'krogers@live.com', :first_name => 'Kate', :last_name => 'Rogers', :password => 'password3',:password_confirmation => 'password3', :total_score => 32, :role => 'user'},
          {:username => 'links', :email => 'tina@gmail.com', :first_name => 'Tina', :last_name => 'Link', :password => 'password4',:password_confirmation => 'password4', :total_score => 12, :role => 'user'}
          
          ]

user_t.each do |user|
  User.create!(user)
end

level_t = [
	    {:level_name => 'test1', :points => 50, :activity => 'facebook.com'},
	    {:level_name => 'test2', :points => 50, :activity => 'facebook.com'},
            {:level_name => 'test3', :points => 50, :activity => 'facebook.com'},
            {:level_name => 'test4', :points => 50, :activity => 'facebook.com'},
	    {:level_name => 'test5', :points => 50, :activity => 'facebook.com'},
            {:level_name => 'test6', :points => 50, :activity => 'facebook.com'},
            {:level_name => 'test7', :points => 50, :activity => 'facebook.com'},
	    {:level_name => 'test8', :points => 50, :activity => 'facebook.com'},
            {:level_name => 'test9', :points => 50, :activity => 'facebook.com'}
	  ]

level_t.each do |level|
  Level.create!(level)
end

all_levels = Level.all
all_users = User.all

all_users.each do |user|
  all_levels.each do |level|
    Transactionlevel.create(:complete_flag => "Not Complete",:user_id => user.id,:level_id => level.id)	 
  end
end
