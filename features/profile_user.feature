Feature: Show one person's details

  Background:
    Given there is a showcased user
    
	
  Scenario: Show a user

  	When I visit the user profile page
	  Then I should see "Profile"

  