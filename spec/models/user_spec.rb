require 'spec_helper'

describe User do

  before do
    @user = User.new(username: "Example User", email: "user@example.com", 
                     password: "foobar", password_confirmation: "foobar")
  end

  subject { @user }
   it { should respond_to(:username) }
   it { should respond_to(:first_name) }
   it { should respond_to(:last_name) }
   it { should respond_to(:email) }
   it { should respond_to(:password_digest) }
   it { should respond_to(:password) }
   it { should respond_to(:password_confirmation) }
   it { should respond_to(:remember_token) }
   it { should respond_to(:authenticate) } 
   
  describe "remember token" do
    before { @user.save }
    its(:remember_token) { should_not be_blank }
  end

  describe "when password is not present" do
    before { @user.password = @user.password_confirmation = " " }
    it { should_not be_valid }
  end

  describe "when password doesnt match confirmation" do
    before { @user.password_confirmation = "mismatch" }
    it { should_not be_valid }
  end

  
end
