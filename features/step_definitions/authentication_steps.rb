Given /^a user visits the signin page$/ do
  visit signin_path
end

When /^he submits invalid signin information$/ do
  click_link "Sign-In"
end

Then /^he should see an error message$/ do
  assert page.body.include? 'Invalid username/password combination' 
end

Given /^the user has an account$/ do
  @user = User.create(username: "example", email: "user@example.com",
                      password: "foobar", password_confirmation: "foobar")
end

When /^the user submits valid signin information$/ do
  fill_in "Username", with: @user.username
  fill_in "Password", with: @user.password 
  click_button "Sign In"
end

Then /^he should see his profile page$/ do
   assert page.body.include? @user.username
end

Then /^he should see a signout link$/ do
  page.should have_link('Sign-Out', href: signout_path)
end
