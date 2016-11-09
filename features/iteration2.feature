Feature: Users can log in
As a Researcher
I want to log in with the existing account
So that I can see my data

Scenario: Log in Successfully
Given I am on the Microgram home page
When I follow "Log in"
Then I should be on the Log in page
And After typing my email and password, I press "Log in"
And I am on my profile page

Scenario: Wrong Log in (sad path)
Given I am on the Microgram home page
When I follow "Log in"
Then I should be on the Log in page
And After typing the wrong email and password, I press "Log in"
And I should be on the Log in page 

