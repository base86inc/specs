Feature: Customer Manual Product entry
  As a Customer, I want to add a Product to my Products List manually
  (without file upload or addition from master catalog).
  Scenario: Product addition
    Given the Customer want to add a Product to his Product List
    And the Product is not in the Customer Product list
    And the Customer can't find the Product in Master Catalogue
    Then the Customer can add a new Product.
# Implementation:
# When the Customer adds a new Product it should be also added to the Master Catalogue.
# New Product should be linked to the new Master Product.
# The new Master Product should have the status ‘verified: false’
# Master Product with Status ‘verified: false’ visible only to:
# Customers in Creator’s organization.
# base86 Admin
# Suppliers of this Product, if the Customer linked the Product to a Supplier.
# Only base86 Admin can change Master Product Status
# Master Product Information should be in sync with the Product Information till the Product Status changed to `verified: true`. Meaning that when the Customer edit Product Properties we apply the same updates to the Master Product.
