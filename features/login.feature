
Feature: Login

Background:
 Given There exists a registered user  with  email as "stephangirls@gmail.com" and   passwword as "1234" and username as "stephan"
  Scenario: Signing in with correct credentials
    When I go to login in page
    And I fill in "email" with "stephangirls@gmail.com"



    And I fill in "password" with "1234"
    And I click "Login" button
    Then I should see "stephan has logged in."
