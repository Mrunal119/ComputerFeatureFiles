# language: en
Feature: Computer database list
  As a User, I want to check the 'Computer database' list 

  Background: User is on the "Computer database List" page

   Scenario: By default all saved computers are shown on computer dabase list page
    Given   Computers with different companies are created and saved in the system
    When    The computer database list page loads
    Then    computers appear in the list by default

  Scenario: View computer list
    Given   New computers are created and saved in the database
    When    Open the computer database url
    Then    All computers are displayed on database list

  Scenario: Filter computer by name
    Given   All computers are displayed on database list page 
    When    Enter some text in search field and press 'Filter by name' button
    Then    The database list shows computers  with name containing text from the search field

  Scenario: Clear the search input box
    Given   Text is entered in search input box
    When    Click the cross icon in search input box
    Then    Entered text is cleared from search input box  

  Scenario Outline: Add a new computer
    Given  The 'Add a new computer' button is present and enabled on computer list page
    When   Click on 'Add a new computer' button
    And    Enter <computer data>
    *      Choose a company from company dropdown 
    *      Click on "Create this computer" button
    Then   The new computer is created
    And    You are navigated to the computer list database page

    Examples:
     |computer data|
     |Computer name|
     |Introduced|
     |Discontinued|
     |Company|

  Scenario: Clicking on any computer name navigates to 'Computer Edit' page
    Given   Computers are already created and saved in the system
    When    Click on any computer name on list page
    Then    You are navigated to 'Computer Edit' page

  Scenario: View total computers found count on computer list 
    Given   All computers are saved in computer list database page
    When    Check for computers found count
    Then   The total computers found count is displayed on computer list page

  Scenario: Go to the next page from computer list
    Given  Computers are already created and saved in the system
    When   Click on bottom right side 'Next' button from computer list page
    Then   You are navigated to the next page 