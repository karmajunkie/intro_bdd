Feature: Hello World
  In order to make sure cucumber is running
  As a web browser
  I want my test to check for Hello World

  Scenario: Viewing the page
    Given the following article exists:
    | title      | body     |
    | Some title | somebody |

    Given I am on the home page
    Then I should see "Some title"
    And I should not see "somebody"
    And I should not see "Hello World"
    
    When I follow "Some title"
    Then I should see "somebody"
    
