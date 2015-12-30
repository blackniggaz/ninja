Feature: Wrong Login
  when am in the login page
  i should want
  Given am at the login page
  Scenario: Signing in with wrong credentials
    When I go to sign in page
    And I fill in "email" with "stephangirls@gmail.com"
    And I fill in "password" with "123"
    And I click "Login" button
    Then I should see "Wrong credentials"

