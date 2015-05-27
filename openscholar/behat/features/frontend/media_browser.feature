Feature:
  Testing the Media Browser

  @media_browser @javascript
  Scenario: Invoke the browser from the standard media field
    Given I am logged in as "john"
      And I start creating a post of type "page" in site "john"
     When I press "Choose File"
      And I wait "1 second" for media browser to open

  @media_browser
  Scenario: Invoke the browser from the wysiwyg
    Given I am logging in as "john"
      And I wait for page actions to complete
      And I visit "john/node/add/page"
     When I click "Choose File"
      And I wait for page actions to complete
      And I should print page
     Then I should see "Select files to Add"

  @media_browser
  Scenario: Navigate through tabs
    Given I am logged in as "john"
      And I start creating a post of type "page" in "john"
      And I click on "Choose File"
      And I wait "1 second" for media browser to open
     Then I should see "Drag and drop files here."
     When I click on "Web"
     Then I should see "Enter a URL From one of"
     When I click on "Library"
     Then I should see "Search"
      And I should see "Type in a filename"

  @media_browser
  Scenario: Upload a new file with no duplicates by pressing the button
    Given I am logged in as "john"
      And I start creating a post of type "page" in "john"
      And I click on "Choose File"
      And I wait "1 second" for media browser to open
     When I press "Upload"
