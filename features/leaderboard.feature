Feature: Leaderboard  
  As a teacher
  So that they can see the rankings of their fellow teachers
  They want to see a leaderboard of the rankings of all of the teachers

Background: users have been added to database
  
  Given the following users have been added: 
  #| username   | email | first_name | last_name | password_digest | total_score | role | 
  | username | email             | first_name | last_name | password | password_confirmation | total_score | role |
  | johnsuser| jmk@uiowa.edu     | John       | Kelleher  | password1| password1             | 50          | user |
  | jsmith   | james@hotmail.com | James      | Smith     | password2| password2             | 25          | user |

  And a user visits the signin page
  And the user has an account
  And the user submits valid signin information
  
  Scenario: View leaderboard on home page
    Then I should see "johnsuser" before "jsmith"

