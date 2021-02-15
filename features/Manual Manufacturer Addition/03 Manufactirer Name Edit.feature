Feature: 03 *TODO* Manufacturer’s name Edit for Admin
	As an Admin I want to be able to edit the Manufacturer’s name.

	Background: Admin attempt to edit Manufacturer name
		Given an Admin on Manufacturers page.
		And the Admin selected a Manufacturer from the list.
		And Admin enters 'Edit Name' mode.
		And Admin edited name.
		And Admin clicks Save.

	Scenario: Name is unique
		Given Manufacturer’s name is not found in DB (case insensitive).
		Then Manufacturer name updated in DB.

	Scenario: Name is NOT unique
		Given Manufacturer’s name is found in DB (case insensitive).
		Then Admin got error message that the name is duplicate.
		And Manufacturer name is not updated in DB.
