Given(/^I am on the Microgram home page$/) do
    visit "/"
end

When(/^I follow "([^"]*)"$/) do |text|
    page.should have_content(text)
end

Then(/^I should be on the Log in page$/) do
  '/users/new'
end

Then(/^I press "([^"]*)"$/) do |text|
  page.should have_content(text)
end

Then(/^After creating, I should be back on the Log in page$/) do
    '/users/new'
end

#new scenario


Given(/^I am on the sign up page$/) do
 '/signup'
end

When(/^I do not type "([^"]*)" with :email$/) do |text|
    page.should not(have_content(text))
end


Then(/^The Sign up page should not move on$/) do
  '/signup'
end