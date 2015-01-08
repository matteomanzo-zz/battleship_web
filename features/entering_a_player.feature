Feature: Entering a player
	In order to input a name
	As a player
	I want to see a greeting with my name

		Scenario: No name given
			Given I am on New Game
			When I fill in "name" with ""
			When I press "Submit" within "submit"
			When I go to New Game
			Then I should see "What is the name of the Player?" within "/NewGame"
			And I should see "Name is required!" within "/NewGame"

		Scenario: Name given
			Given I am on New Game
			When I fill in "name" with "Hannah"
			When I press "Submit" within "submit"
			Then I should see "Hello, Hannah!" within "/NewGame"




