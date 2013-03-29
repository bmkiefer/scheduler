# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user_t = [
	  {:username => 'msk098', :email => 'mist@gmail.com', :first_name => 'Marcus', :last_name => 'Scott', :password => 'yeahmaybe', :total_score => 8, :level_one_flag => 0, :role => 'admin'},
          {:username => 'msk098', :email => 'mist@gmail.com', :first_name => 'Marcus', :last_name => 'Scott', :password => 'yeahmaybe', :total_score => 8, :level_one_flag => 0, :role => 'admin'},
          {:username => 'msk098', :email => 'mist@gmail.com', :first_name => 'Marcus', :last_name => 'Scott', :password => 'yeahmaybe', :total_score => 8, :level_one_flag => 0, :role => 'admin'},
          {:username => 'msk098', :email => 'mist@gmail.com', :first_name => 'Marcus', :last_name => 'Scott', :password => 'yeahmaybe', :total_score => 8, :level_one_flag => 0, :role => 'admin'},
          {:username => 'msk098', :email => 'mist@gmail.com', :first_name => 'Marcus', :last_name => 'Scott', :password => 'yeahmaybe', :total_score => 8, :level_one_flag => 0, :role => 'admin'},
          
          ]

user_t.each do |user|
  User.create!(user)
end
