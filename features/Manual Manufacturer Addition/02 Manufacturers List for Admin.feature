Feature: 02 *TODO* Manufacturers List for base86 Admin
  As an Admin I want to be able to see a list of Manufacturers.

  Scenario:  Admin sees a list of Manufacturers
    When an Admin is on Manufacturers Page.
    And Admin doesn’t make any selection on Show dropdown.
    Then Show default to ‘New’.
    And the Admin sees a list of only new Manufactures (if any).
    And Admin sees Name.
    And Admin sees Created By Name.
    And Admin sees Created By Org.
    And Admin sees Created By Date.
    And Admin sees Status.
    And Admin sees Status Set By Name.
    And Admin sees Status Set Date.

  Scenario: Admin sees a list of rejected Manufacturers
    When Admin selection on Show ‘Rejected’
    And Admin sees a list of only rejected Manufactures (if any).

  Scenario: Admin sees a list of approved Manufacturers
    When Admin selection on Show ‘Approved’
    And Admin sees a list of only approved Manufactures.
