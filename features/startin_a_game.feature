Feature: Starting the game
	In order to play battleships
	As a nostalgic player
	I want to start a new game
	In order to enter my name
	As a player
	I want to input my name

	Scenario: Registering
		Given I am on the homepage
		When I follow "New Game"
		Then I should see "What's your name?"


	Scenario: Name
	    Given I am on "New Game"
	    When I enter a name
	    Then I should get "Thanks"

