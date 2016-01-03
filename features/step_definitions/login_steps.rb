


Given(/^There exists a registered user  with  email as "(.*?)" and   passwword as "(.*?)"$/) do |arg1, arg2|




 # User.create!(email: arg1, password:arg2)



  user = FactoryGirl.create(:user,:password=>arg2,:email=>arg1)    # data generated from factory rails and am overwriting the password  and email with the one sent

  User.create!(email: user.email, password:user.password,username:user.username)


end

When(/^I go to sign in page$/) do


  visit ("login")
end

When(/^I fill in "([^"]*)" with "([^"]*)"$/) do |arg1, arg2|

  if arg1 == "email"

    page.fill_in "user_email", :with =>arg2


  else

    page.fill_in "user_password", :with => arg2

  end



end

When(/^I click "([^"]*)" button$/) do |arg1|


 click_button(arg1)
end

Then(/^I should see "([^"]*)"$/) do |arg1|
  page.all('p',:text=>arg1)
end

