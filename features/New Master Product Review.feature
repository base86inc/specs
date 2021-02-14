Feature: New Master Product Review
  As a base86 Admin, I want to be able to Review new/unverified Master Products
  Scenario: Product verification
    Given the base86 Admin wants to Review Products.
    Then the Admin should be able to see a list of unverified Products.
    And Admin should be able to Verify Product.
    And Admin should be able to Reject Product.
    And Admin should be able to Merge Product.
# Implementation:
# Rejected is a Status meaning that base86 Admin decided not to include the Product to Master Catalogue. Product visibility the same as unverified with the exception that base86 Admin wouldn’t see the Product by default.
# Customers in Creator’s organization and Suppliers of this Product (if any) should see the Status.
# Boolean `verified` is not enough, we need more fields or enum Status.
# Merge means that we link Customer Product to different Master Product and update customerProductToSupplierProduct document (if exists).
