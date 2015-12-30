
Given(/^am at the login page$/) do

end

When(/^I go to sign in page$/) do


  visit ("login")
end

When(/^I fill in "([^"]*)" with "([^"]*)"$/) do |arg1, arg2|

  page.fill_in "user_email", :with =>arg1
  page.fill_in "user_password", :with => arg2
end

When(/^I click "([^"]*)" button$/) do |arg1|
  click_button(arg1)
end

Then(/^I should see "([^"]*)"$/) do |arg1|
  page.all('p',:text=>arg1)
end

