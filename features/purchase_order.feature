Feature: Querying Plant Catalog and Creating a Purchase Order
  As a customer
  So that I get the equipment required in my current project
  I want to create a Purchase Order with the details of the desired plant

  Background: Plant catalog
    Given the following plants are currently available for rental
      | name      | description                      | price  |
      | Excavator | 1.5 Tonne Mini excavator         | 150.00 |
      | Excavator | 3 Tonne Mini excavator           | 200.00 |
      | Excavator | 5 Tonne Midi excavator           | 250.00 |
      | Excavator | 8 Tonne Midi excavator           | 300.00 |
      | Excavator | 15 Tonne Large excavator         | 400.00 |
      | Excavator | 20 Tonne Large excavator         | 450.00 |
      | Dumper    | 1.5 Tonne Hi-Swivel Dumper       | 150.00 |
      | Dumper    | 2 Tonne Front Tip Dumper         | 180.00 |
      | Dumper    | 3 Tonne Front Tip Dumper         | 200.00 |
      | Dumper    | 6 Tonne Front Tip Dumper         | 300.00 |
      | Dumper    | 10 Tonne Front Tip Dumper        | 400.00 |
      | Loader    | Hewden Backhoe Loader            | 200.00 |
      | Truck     | 15 Tonne Articulating Dump Truck | 300.00 |
      | Truck     | 30 Tonne Articulating Dump Truck | 400.00 |
      | FTT    | 302 Tonne Articulating Dump Truck | 400.00 |
    And I am in the "Plant catalog" web page
    And No Purchase Order exists in the system

  Scenario: Adding two numbers a and b
    When I query the plant catalog for an "Excavator" available from "12-01-2016" to "14-01-2016"
    Then I should have 6 plants being shown


  Scenario: Query the plant catalog for an excavator
    When I query the plant catalog for an "Excavator" available from "12-01-2016" to "14-01-2016"
    Then I should have 6 plants being shown

  Scenario: Create a purchase order
    When I query the plant catalog for an "Excavator" available from "12-01-2016" to "14-01-2016"
     And I select "3 Tonne Mini excavator"
    Then a Purchase Order should be created with a total price of 600.00
