Given(/^user with "(.*?)" email and "(.*?)" password$/) do |arg1, arg2|
  @arg1 = arg1
  @arg2 = arg2
  visit('login')
end

When(/^I go to sign in page$/) do
  visit "login"
end

When(/^I fill in "(.*?)" with "(.*?)"$/) do |usern, passw|
  page.fill_in "user_email", :with=> @arg1
  page.fill_in "user_password", :with=> @arg2
end

When(/^I click "(.*?)" button$/) do |arg|
  click_button arg
end

Then(/^I should see "(.*?)"$/) do |arg1|
  page.all('h1',:text=> 'Sign Up')
end

