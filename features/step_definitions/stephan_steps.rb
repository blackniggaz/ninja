Given(/^Given name as "(.*?)" and password of "(.*?)"$/) do |name, password|
@name=name
 @password=password



end

When(/^I add the two data$/) do
 @data=@name+@password
puts @data


  expect(4).to.eq(4)


end
