
Feature: Stephan test

  Background:
    Given Given name as "stephan" and password of "1234"
  Scenario: Testing credentials
    When I add the two data

    Then I should see "stephan1234"
