
Feature: User Login

  As a registered user
  I want to log into the application
  So that I can access my account features

  Scenario: Login with valid credentials
    Given the user is on the login page
    When the user enters valid username and password
    And clicks the login button
    Then the user should be redirected to the homepage

  Scenario: Login with invalid credentials
    Given the user is on the login page
    When the user enters invalid credentials
    Then an error message should be displayed




