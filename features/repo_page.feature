Feature: repo tests

Scenario: verify Gemfile is listed on repository view
Given I am succesfully signed in
When I select "miguelangelcoca/courseAutomationProject" from your repositories
Then I should see "Gemfile" listed among project files

