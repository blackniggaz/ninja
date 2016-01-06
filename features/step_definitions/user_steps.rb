Given(/^The following users exists:$/) do |table|
  @users= User
  table.hashes.each do |user|
    # each returned element will be a hash whose key is the table header.
    # you should arrange to add that movie to the database here.
    @users.create!(user)
  end



end

Given(/^I am on the users list webpage$/) do

end

When(/^i look around the page$/) do
  visit ("users")
end

Then(/^i should see "(.*?)" before "(.*?)"$/) do |e1,e2|
  page.body.should match /#{e1}.*#{e2}/m


end

When(/^i "(.*?)"  exits$/) do |arg1|
  page.all('td',:text=>arg1)
end

When(/^i click "(.*?)" button at "(.*?)"$/) do |arg1, arg2|

  @users.where(username:arg2).destroy_all

end

Then(/^i shouldnt  see "(.*?)"$/) do |arg1|

 @users.find_each do |user|
  
 end

page.has_no_xpath?('//td', :text =>arg1)

end

