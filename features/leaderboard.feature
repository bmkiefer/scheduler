Feature: Leaderboard
  
  As a teacher
  So that I can see the rankings of my fellow teachers
  I want to see a leaderboard of the rankings of all of the teachers

Background: users have been added to database
  
  Given the following users have been added: 
  #| username   | email | first_name | last_name | password_digest | total_score | role | 
  | username | total_score | password | password_confirmation |
  | johnsuser| 50          | password1| password1             |
  | jsmith   | 25          | password2| password2             |

  And I am on the home page
  
  Scenario: View leaderboard on home page
    Then I should see "johnsuser" before "jsmith"

