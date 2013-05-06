Given /^a level has been created$/ do
  @level = Level.create!(level_name: 'test1' , points: '50', activity: 'facebook.com' )
  @transactionlevel = Transactionlevel.create(complete_flag: "Not Complete", user_id: "1" , level_id: "1")
end

When /^I click on a level$/ do
  mypage = page.body
  mypage.include? @level.level_name
end

Then /^I should be on the level detail page$/ do
  visit user_level_path(@profile , @level)
end

When /^I click on complete level$/ do
  visit user_level_mission_path( @profile, @user, @mission)
  click_button 'Complete Mission'
end

Then /^I should see that the level has been completed$/ do
  mypage = page.body
  mypage.include? "#{@level.level_name} Completed"
end

Given /^a  mission has been created$/ do
   @mission = Mission.create!(mission_name: "test1", description: "Mission 1 Plans", 
			      points: "30", urllink_type: "link", url: "http://www.facebook.com" )
   @transactionmission = Transactionmission.create!(complete_flag: "Not Complete", user_id: "1" ,level_id: "1", mission_id: "1")
end

Given /^I should see missions to complete$/ do
  mypage = page.body
  mypage.include? "#{@mission.mission_name}"
end

When /^I click on a mission, I should be on mission detail page$/ do
  mypage = page.body
  mypage.include? "Details about level #{@mission.mission_name}"
end

