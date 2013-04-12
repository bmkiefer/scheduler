describe "Authentication" do

  subject { page }

  describe "signin" do
    before { visit signin_path }

    describe "with invalid information" do
      before { click_link "Sign-In" }

      it { should have_selector('title', text: 'Sign-in') }
      it { should have_selector('div.alert.alert-error', text: 'Invalid') }
    end

    describe "with valid information" do
      let(:user) { FactoryGirl.create(:user) }
      before do
        fill_in "Username", with: user.username.downcase
        fill_in "Password", with: user.password
        click_button "Sign-In"
      end 

      it { should have_selector('title', text: user.name) }
      it { should have_selector('a', 'Sign-Out', href: signout_path) }
    end
  end
end
