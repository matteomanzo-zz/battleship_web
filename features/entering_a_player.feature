Feature: Entering a player
	In order to input a name
	As a player
	I want to see a greeting with my name

		Scenario: Input name
			Given I am on New Game
			When I fill in "name1" with "Hannah"
			When I fill in "name2" with "Matteo"
			When I press "Submit" within "submit"
			When I am on Players
			Then I should see "Hello, Hannah"
			And I should see "Hello, Matteo"
			And I should see "Welcome to BattleShips!"




