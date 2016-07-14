Feature: Tumblr 

  Scenario: Logging in to Tumblr
    Given I am on the Tumblr login page
    When I enter my login details
    Then I should be sent to the dashboard

  Scenario: Posting a text post
  	Given I am on the Tumblr dashboard 
  	Then I want to be able to post a text post
  	And Check that it has been posted