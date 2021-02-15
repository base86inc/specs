Feature: 01 *TODO* Manual Manufacturer entry
	As a Customer, a Supplier, or base86 Admin (hereafter just Admin)
	I want to be able to enter a new Manufacturer.

	Scenario: Customer or Supplier add Manufacturer
		Given the Customer on Product Detail page.
		And the Customer enter edit Manufacturer mode.
		And the Customer typed the Manufacturer’s name.
		And the Manufacturer not found in the DB.
		When the Customer click Add Button.
		Then new Manufacturer saved in DB.
		And new Manufacturer saved with status: 'new'.
		And new Manufacturer saved with createdById.
		And new Manufacturer saved with createdByOrgId.
		And new Manufacturer saved with createdDate.
		And Manufacturer with status: 'new' visible only to Users in Creator’s organization, Admin, Supplier of Products with this Manufacturer.

	Scenario: Admin add Manufacturer
		Given the Admin on Product Detail page or Manufacturers page.
		And the Admin enter edit Manufacturer mode.
		And the Admin typed the Manufacturer’s name.
		And the Manufacturer not found in the DB.
		When the Admin click Add Button.
		Then new Manufacturer saved in DB.
		And new Manufacturer saved with status: 'verified'.
		And new Manufacturer saved with createdById.
		And new Manufacturer saved with createdByOrgId.
		And new Manufacturer saved with createdDate.
		And new Manufacturer saved with Status Set By.
		And new Manufacturer saved with Status Set Date.
