Given /^a level has been created$/ do
  @user = User.create(username: "example", email: "user@example.com",
                      password: "foobar", password_confirmation: "foobar",
		      id: "3", user_id: '1')
end

When /^I click on a level$/ do
  puts page.html
  click_button "test1"
end

Then /^I should be on the level detail page$/ do
  visit('/users/user_id/levels/id')
end

When /^I click on complete level$/ do
  pending # express the regexp above with the code you wish you had
end

Then /^I should be back on the profile page$/ do
  pending # express the regexp above with the code you wish you had
end

Then /^I should see that the level has been completed$/ do
  pending # express the regexp above with the code you wish you had
end

