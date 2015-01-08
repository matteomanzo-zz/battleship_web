Feature: Place a ship
	In order to place a ship
	As a player of Battleships
	I want to see the ship on the board

	Scenario: Creating board
		Given I am on the homepage
		When I follow "New Game"
		When I fill in "name" with "H"
		When I press "Submit" within "submit"
		When I follow "Play Game" within "New Game"
		Then I should see the board