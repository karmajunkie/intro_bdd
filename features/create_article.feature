Feature: Posting a new article
  In order to put new advertising-generating content on the web
  As a blog owner
  I want to post new articles

  Scenario: Posting an article
    Given the following confirmed user exists:
      | Email            |
      | user@example.com |
    When I log in as "user@example.com"
    When I follow "New post"
    Then I should be on the new article page
     And I should see "New Article"

    When I fill in "Title" with "Some title"
     And I fill in "Body" with "lorem ipsum solarem dolor meso"
     And I press "Submit"

    Then I should be on the home page
     And I should see "New article created"
     And I should see "Some title"

  Scenario: Maliciously posting an article
    When I go to the new article page
    Then I should see "Sign in"
    And I should be on the new user session page

