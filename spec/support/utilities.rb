include ApplicationHelper

def valid_signin(user)
  fill_in "Username", with: user.username
  fill_in "Password", with: user.password
  click_on "Sign-in"
end

RSpec::Matchers.define :have_error_message do |message|
  match do |page|
    page.body.include? message 
  end
end
