Given(/^There exists a registered user  with  email as "(.*?)" and   passwword as "(.*?)" and username as "(.*?)"$/) do |arg1, arg2, arg3|

  user = FactoryGirl.create(:user,:password=>arg2,:email=>arg1)    # data generated from factory rails and am overwriting the password  and email with the one sent

  User.create!(email: user.email, password:user.password,username:arg3)



end

When(/^I go to login in page$/) do
 visit("login/index")
end

When(/^I fill in "(.*?)" with "(.*?)"$/) do |arg1, arg2|
  pending # express the regexp above with the code you wish you had
end

When(/^I click "(.*?)" button$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end

Then(/^I should see "(.*?)"$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end
