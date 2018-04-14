Feature: Login feature

  Scenario: successful login
    Given I am on login page
    When I enter "gitusername" and "gituserpasswd" as user, password
    Then I am successfully login as "gitusername"

Scenario: unsuccessful login with empty email and password
    Given I am on login page
    When I try to login with empty email and password
    Then site gives warning message for empty email and password
    And I can't login to site

Scenario: succesfull logout
    Given I am succesfully signed in
    When I click on User Profile Icon
    And  I click sign Out link
    Then I should see Sign up button 