Given /^I am on the user page'$/ do
  visit 
 end
 
 Given /the following users have been added:/ do |users_table|
  users_table.hashes.each do |user|
    User.create!(user)
  end
end
 
 Then /^I should see "(.*?)" before "(.*?)"$/ do |userA, userB|
   assert page.body =~ /#{userA}.*#{userB}/m
end
