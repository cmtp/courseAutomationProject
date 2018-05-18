Feature: repo tests

Scenario: verify Gemfile is listed on repository view
Given I am succesfully signed in
When I select "miguelangelcoca/courseAutomationProject" from your repositories
Then I should see "Gemfile" listed among project files

Scenario Outline: verify visible files listed on repository view
Given I am succesfully signed in
When I select "miguelangelcoca/courseAutomationProject" from your repositories
Then I "<expectancy>" "<files>" listed among project files

Examples:
|files |expectancy|
| Gemfile | true  |
| README.md|false  |
| pepito | true |
