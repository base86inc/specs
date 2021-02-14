Feature: Manual Manufacturer entry
  As a Customer or a Supplier I want to be able to enter a new Manufacturer.
  A Manufacturer could be added from the Product Detail Page.
  Scenario: Customer add Manufacturer
    Given the Customer on Product Detail Page.
    And the Customer enter edit Manufacturer mode.
    And the Customer typed the Manufacturer’s name.
    And the Manufacturer not found in the DB.
    When the Customer click Add Button
    Then new Manufacturer saved in DB.
