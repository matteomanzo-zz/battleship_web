Feature: Place a ship
	In order to place a ship
	As a player of Battleships
	I want to see the ship on the board

	Scenario: Have a cell
			Given I am on Play Game
            Then I should see "a1" within "board"
            


        