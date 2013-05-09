Given /^a user visits the signin page$/ do
  visit signin_path
end

When /^he submits invalid signin information$/ do
  click_button "Sign In"
end

Then /^he should see an error message$/ do
  assert page.body.include? 'Invalid username/password combination' 
end

Given /^the user has an account$/ do
  @user = User.create(username: "example", email: "user@example.com",
                      password: "foobar", password_confirmation: "foobar" )

  @profile = Profile.create( first_name: "marcus", last_name: "scott", user_id: "1", total_score: "0")
end

When /^the user submits valid signin information$/ do
  fill_in "Username", with: @user.username
  fill_in "Password", with: @user.password 
  click_button "Sign In"
end

Then /^he should see his profile page$/ do
  mypage = page.body
  mypage.include? @user.email
end

Then /^he should see a signout link$/ do
  page.should have_link('Sign-Out', href: signout_path)
end

Given /^The user is on the home page$/ do
  visit home_path
end

Given /^the user visits the sign up page$/ do
  click_link "Sign-Up"
end

Given /^The user fills in his or her information$/ do
   fill_in "Username", with: "nhalbmaier"
   fill_in "Email", with: "nate-halbmaier@uiowa.edu"
   fill_in "First Name", with: "Nate"
   fill_in "Last Name", with: "Halbmaier"
   fill_in "Password", with: "seltSucks"
   fill_in "Password Confirmation", with: "seltSucks"
end

Given /^The user clicks on Save Changes$/ do
   @user = User.create(username: "nhalbmaier", email: "nate-halbmaier@uiowa.edu",
                      password: "seltSucks", password_confirmation: "seltSucks" )
   click_button "Save Changes"
end

When /^he clicks on Edit Profile$/ do
  click_link "Edit My Profile"
end

Then /^he should be on the edit profile page$/ do
  mypage = page.body
  mypage.include? "Edit Existing User"
end

When /^the user updates his information$/ do
  fill_in "First Name", with: "Nathan"
  fill_in "Last Name", with: "Halby"
end

When /^the user clicks on Update Name$/ do
  click_button "Update Name"
end

Then /^he should see his updated changes$/ do
  mypage = page.body
  mypage.include? "Nathan"
  mypage.include? "Halby"
end

Given /^he is on his profie page$/ do
  visit user_path(@profile)
end

When /^he clicks on the signout link$/ do
  page.should have_link('Sign-Out', href: signout_path)
  click_link "Sign-Out"
end

Then /^he should be signed out and on the home page$/ do
  mypage = page.body
  mypage.include? "Welcome to Our Technology Teaching Website"
  page.should have_link('Sign-In', href: signin_path)
end

