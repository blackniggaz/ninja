Given(/^the following plants are currently available for rental$/) do |table|
  @plant= Plant
  table.hashes.each do |plant|

    puts plant
    @plant.create!(plant)
  end


end
Given(/^I am in the "(.*?)" web page$/) do |arg1|

  pending # express the regexp above with the code you wish you had
end

Given(/^No Purchase Order exists in the system$/) do
  pending # express the regexp above with the code you wish you had
end

When(/^I query the plant catalog for an "(.*?)" available from "(.*?)" to "(.*?)"$/) do |arg1, arg2, arg3|
  pending # express the regexp above with the code you wish you had
end

Then(/^I should have (\d+) plants being shown$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end

When(/^I select "(.*?)"$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end

Then(/^a Purchase Order should be created with a total price of (\d+)\.(\d+)$/) do |arg1, arg2|
  pending # express the regexp above with the code you wish you had
end

