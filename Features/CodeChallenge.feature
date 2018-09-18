Feature: CodeChallenge.feature

@RubyTest @DailyRun @Chrome

Scenario Outline: Validate values greater in text fields and total

Given I Open the Application
When I enter the userID AND password AND Click submit 
Then I should see values in Text fields greater then zero
AND I should see all the values in Text fields displayed as expected 
AND I should see all the values are in expected currency
AND I should see the total match 

    Examples: 
      | TXT1 		 |TXT2   |TXT3 		 |TXT4 		|TXT5 	|TTL		 |currency|
	 
	  
	  
      

