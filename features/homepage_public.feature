Feature: Home page content

  Background: 
    Given I visit the "home" page

  Scenario: Public view
	  Then I should see "Full Stack"

  Scenario: Github sign-in 
    Then I should see "Sign in with Github"