Feature: List of all people content

  Background:
    Given There is a confirmed maker
    Given There is an uncofirmed maker
    When I visit the "home" page
    And I click "List all"

  Scenario: Show list
	  Then I should see "All Makers, graduates and current students"

  Scenario: Show only confirmed makers
    Then I should see the confirmed maker
    And I should not see the unconfirmed maker


