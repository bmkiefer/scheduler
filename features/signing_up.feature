Feature: Signing up and deleting user from database

	Scenario: Successful sign up
	Given The user is on the home page
        And the user visits the sign up page
	And The user fills in his or her information
	And The user clicks on Save Changes
	Then he should see his profile page

	Scenario: User edits their profile
	Given a user visits the signin page
      	And the user has an account
    	And the user submits valid signin information
    	Then he should see his profile page
	When he clicks on Edit Profile
	Then he should be on the edit profile page
	When the user updates his information
	And the user clicks on Update Name
	Then he should see his profile page
	And he should see his updated changes
	
 
