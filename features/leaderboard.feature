Feature: Leaderboard  
  As a teacher
  So that I can see the rankings of my fellow teachers
  I want to see a leaderboard of the rankings of all of the teachers

Background: users have been added to database
  
  Given the following users have been added: 
  #| username   | email | first_name | last_name | password_digest | total_score | role | 
  | username | email             | first_name | last_name | password | password_confirmation | total_score | role |
  | johnsuser| jmk@uiowa.edu     | John       | Kelleher  | password1| password1             | 50          | user |
  | jsmith   | james@hotmail.com | James      | Smith     | password2| password2             | 25          | user |

  And I am on the home page
  
  Scenario: View leaderboard on home page
    Then I should see "johnsuser" before "jsmith"

