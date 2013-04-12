describe "Authentication" do
  
  subject { page }

  describe "signin" do
    before { visit signin_path }

    describe "with invalid information" do
      before { click_link "Sign-In" }
      it { should have_link('Sign-In', href: signin_path) }
     it { should have_error_message("Invalid username/password") }
      it { should_not have_link('Sign-Out') }
    end

    describe "with valid information" do
      let(:user) { FactoryGirl.create(:user) }
      before do
        fill_in "Username",:with => user.username
        fill_in "Password", :with => user.password
        click_link "Sign-In"
      end 
     it { should have_selector("title", :content => user.username) }
     it { should have_selector("body", :content => user.password) }
     #it { should have_link('Sign-Out') }
      
    end
  end
end
FactoryGirl.define do
  factory :user do
    username 'Connie Customer'
    email 'hotdam@bitchesloveme.com'
    password 'hosahfosaihgo'
    password_confirmation 'hosahfosaihgo'
  end
end
