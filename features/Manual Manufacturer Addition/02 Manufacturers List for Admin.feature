Feature: 02 *TODO* Manufacturers List for base86 Admin
  As an Admin I want to be able to see a list of Manufacturers
  and filter them by statuses.

  Background: Admin on Manufacturers page
    Given an Admin is on Manufacturers Page.

  Scenario:  Admin sees a default list of Manufacturers
    When Admin doesn’t make any selection on Show dropdown.
    Then Show default to ‘New’.
    And the Admin sees a list of only new Manufactures (if any).
    And Manufacturer sorted by Status Created Date (DESC).
    And Admin sees Name.
    And Admin sees Created By Name.
    And Admin sees Created By Org.
    And Admin sees Created Date.
    And Admin sees Status.
    And Admin sees Status Set By Name.
    And Admin sees Status Set Date.

  Scenario: Admin sees a list of rejected Manufacturers
    When Admin selected Show ‘Rejected’.
    Then Admin sees only rejected Manufactures (if any).
    And Manufacturer sorted by Status Set Date (DESC).

  Scenario: Admin sees a list of approved Manufacturers
    When Admin selected Show ‘Approved’
    Then Admin sees only approved Manufactures.
    And Manufacturers sorted by name (ASC).

  Scenario: Admin sees a list of all Manufacturers
    When Admin selected Show ‘All’
    Then Admin sees all but merged Manufactures.
    And Manufacturers sorted by name (ASC).
