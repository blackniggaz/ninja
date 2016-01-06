Feature: Users checking

Background: Listing users

Given The following users exists:


  |username  |	email            |	password  |	description |
  |peter|peter@gmail.com    | 	1234      |	3333        |
  |peter2    |	peter2@gmail.com |	1234      |	3333        |
  |peter3 	 |peter3@gmail.com 	 |1234        | 	3333    |
  |peter4 	 |peter4@gmail.com 	 |1234 	      |222          |
  |peter5    |	peter5@gmail.com |1234        |	222         |
  |peter7 	 |peter7@gmail.com 	 |1234        |	222         |
  |agaba|agaba@gmail.com 	 |1234        |	agaba       |
  And  I am on the users list webpage

  Scenario: Listing of all users
  When i look around the page

  Then i should see "peter" before "peter2"
  Then i should see "peter7" before "agaba"


  Scenario: Listing of all users
    When    i "peter"  exits

    And i click "Delete" button at "peter"

    Then i shouldnt  see "peter"




