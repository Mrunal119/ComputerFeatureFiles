
# language: en
Feature: Edit computer data
  As a User, I want to edit/update the saved computer's data

  Background:  User have created a new computer and 'Edit computer' page is open

   Scenario: Change/edit 'Text' of computer name
    Given    'Edit computer' page is opened for saved computer
    When      Change/edit the "Text" of computer name
    *         Click on 'Save this computer' button   
    Then      The computer name is changed
    And       You are naviagted to computer list page

  Scenario Outline: Update the saved <computer data>
    Given  'Edit computer' page is opened for saved computer
    When    Edit the <computer date>
    And     Click on 'Save this computer' button     
    Then    The the <computer data> is updated
    And     You are naviagted to computer list page

    Examples:
     |computer data|
     |Computer name|
     |Introduced|
     |Disconitued|
     |Company|
    
  Scenario: Cancel to edit the computer data
    Given  'Edit computer' page is opened for saved computer
    When    Click the 'Cancel' button
    Then    You are naviagted to computer list page 

  Scenario: Delete saved computer
    Given 'Edit computer' page is opened for saved computer
    And    Delete button is present 
    When   Click on "Delete this computer" button
    Then   The computer is deleted 
    And    You are naviagted to computer list page


 