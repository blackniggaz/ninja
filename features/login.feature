Feature: Login
 when am in the login page
  i should want
Background:
 Given am at the login page
  Scenario: Signing in with correct credentials
    When I go to sign in page
    And I fill in "email" with "stephangirls@gmail.com"
    And I fill in "password" with "1234"
    And I click "Login" button
    Then I should see "Listing Users"
