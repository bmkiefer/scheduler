Feature: Level Select 
  As a teacher
  So that we can select a level less than or equal to their current level to do a mission 
  They want to be able to do missions on the level they are at or below

  Scenario: View levels
    Given a user visits the signin page
    And the user has an account
    When the user submits valid signin information
    Then he should see his profile page

    Given a level has been created
    When I click on a level
    Then I should be on the level detail page

    Given a  mission has been created
    And I should see missions to complete
    When I click on a mission, I should be on mission detail page
    When I click on complete level
    Then he should see his profile page
    And I should see that the level has been completed
