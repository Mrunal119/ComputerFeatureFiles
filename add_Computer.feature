# language: en
Feature: Add a new computer
   As a User, I want to add a new computer 

  Background:  User is on the "Add a computer" page


  Scenario Outline: Add a new computer
     Given  'Add a computer' page is open
     When    Enter <computer data>    
     And     Choose a company from company dropdown 
     *      Click on "Create this computer" button
     Then   The new computer is created
     And    You are navigated to the computer list database page

      Examples:
       |computer data|
       |Computer name|
       |Introduced|
       |Discontinued|

  Scenario Outline: Able to save the computer with only required input 'Computer name'
      Given  'Add a computer' page is open
      When    Enter only 'computer name'
      And     Don't enter <company data> 
      *       Click on "Create this computer" button
      Then   The new computer is created
      And    You are navigated to the computer list database page

     Examples:
       |computer data|
       |Introduced|
       |Discontinued| 
       |Company|  
    
  Scenario:  Cannot add a computer if required input 'computer name' is not entered
      Given  'Add a computer' page is open
      When   Don't enter required input computer name
      And    Click on "Create this computer"  button
      Then   Displays error message as 'Failed to refined type' for 'computer name' input field

  Scenario: Cancel from 'Add a computer' page
    Given 'Add a computer' page is open
    When   Click on the "Cancel" button
    Then   The computer is not created
    And    You are navigated back to the computer list page

 Scenario Outline: Validate the 'Introduced' date field in valid date format
    Given  you are on 'Add a computer' page
    When   Enter computer name 
    *      Enter 'Introduced' date in other <date format>
    *      Choose a company
    *      Click the 'Create this computer' button   
    Then The error message displays as 'Failed to decode date'
    
    Examples:
     |date format| 
     |dd-mm-yyyy|
     |mm-dd-yyyy|

  Scenario Outline: Validate the 'Disconitued' date field in valid date format
    Given  you are on 'Add a computer' page
    When   Enter computer name 
    *      Enter 'Discontinued' date in other <date format>
    *      Choose a company
    *      Click the 'Create this computer' button   
    Then   The error message displays as 'Failed to decode date'
    
    Examples:
     |date format| 
     |dd-mm-yyyy|
     |mm-dd-yyyy|

   
  Scenario: Go to the computer list page from 'Add a computer' page
    Given   you are on 'Add a computer' page
    When   Click on 'Cancel' button
    Then   You are navigated to the computer list page