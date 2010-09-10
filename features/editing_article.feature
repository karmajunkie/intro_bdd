Feature: Editing an existing article
  In order to update existing content and avoid irrelevance
  As a blog owner
  I want to edit an article

  Scenario: Editing existing article
    Given the following article exists:
      | Title            | 
      | Existing article | 
      And I am on the home page
      And I follow "Existing article"
      And I follow "Edit"
      And I fill in "Title" with "Better title"
      And I press "Submit"

     Then I should be on the home page
      And I should see "Article updated"
      And I should see "Better title"
     Then show me the page

