Feature: 04 *TODO* New Manufacturers Review
	As an Admin, I want to be able to Review new Manufacturers

	Background:
		Given the Admin on Manufacturer’s Page.

	Scenario: Verifying new/rejected Manufacturer
		When the Admin change Manufacturer status from “new”/”rejected” to “verified”.
		Then App saves new status, setById and setDate.
		Then Manufacturer becomes visible to all base86 Users.

	Scenario: Rejecting new/verified Manufacturer
		When the Admin change Manufacturer status from “new”/”verified” to “rejected”.
		Then Manufacturer becomes visible only to: Customers in Creator’s Organization, Admin, Supplier of Products with this Manufacturer.
		And if Customer or Supplier see the Manufacturer they also see that he is Rejected.
		And *NOTE* Rejecting verified Manufacturer is for error correction only.

	Scenario: Merging new Manufacturer
		Given the Admin selected old Manufacturer in Merge with Field.
		When the Admin click the Merge button.
		Then new Manufacturer status changed to ”merged”
		And new Manufacturer props: Status Set By and Status Set Date.
		And new Manufacturer Id substituted with old Manufacturer Id in all product collections:  (make a list)
		And *NOTE* Merged Manufacturers are kept for tracking purposes only.
		And *NOTE* Merged Manufacturers are hidden from all Users.
		And *NOTE* Not implementing Admin UI to see merged Manufacturers, yet.
