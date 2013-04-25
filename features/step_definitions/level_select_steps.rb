Given /^a level has been created$/ do
  @user = User.create(username: "example", email: "user@example.com",
                      password: "foobar", password_confirmation: "foobar", user_id: "1" )

  @level = Level.create!(level_name: 'test1' , points: '50', activity: 'facebook.com' )

end

When /^I click on a level$/ do
  mypage = page.body
  mypage.include? @level.level_name
end

Then /^I should be on the level detail page$/ do
  visit user_level_path(@user , @level)
end

When /^I click on complete level$/ do
  click_button 'Complete Level'
end

Then /^I should see that the level has been completed$/ do
  mypage = page.body
  mypage.include? "#{@level.level_name} Completed"
end
