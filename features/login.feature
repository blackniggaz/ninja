
Feature: User signup
  As a user
  I want to sign in
  So I can use service features

  Background:
    Given user with "stephangirls@gmail.com" email and "1234" password

  Scenario: Signing in with correct credentials
    When I go to sign in page
    And I fill in "email" with "stephangirls@gmail.com"
    And I fill in "password" with "1234"
    And I click "Login" button
    Then I should see "Listing Users"

  Scenario: User tries to sign in with incorrect password
    When I go to sign in page
    And I fill in "email" with "stephangirls@gm.com"
    And I fill in "password" with "bla"
    And I click "Login" button
    Then I should see "Invalid credentials"