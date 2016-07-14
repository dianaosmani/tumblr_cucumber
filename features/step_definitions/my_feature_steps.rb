# Scenario 1
Given /^I am on the Tumblr login page$/ do 
	@system.tumblr_login.visit
end

When /^I enter my login details$/ do 
	@system.tumblr_login.login
end

Then /^I should be sent to the dashboard$/ do 
	@system.dashboard.go_to_dashboard
end 


# Scenario 2
Given /^I am on the Tumblr dashboard$/ do 
	@system.dashboard.go_to_dashboard
end

Then /^I want to be able to post a text post$/ do 
	@system.post.text_post
end

And /^Check that it has been posted$/ do 
	@system.post.check_post
end 

