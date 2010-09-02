Feature: Hello World
  In order to make sure cucumber is running
  As a web browser
  I want my test to check for Hello World



  Scenario: Viewing the page
    Given I am on the home page
    Then I should see "Hello World"