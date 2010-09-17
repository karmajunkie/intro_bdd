When /^I log in as "([^"]*)"$/ do |email|
  Given %|I am on the homepage|
  When %|I follow "Sign in"|
  When %|I fill in "Email" with "#{email}"|
  When %|I fill in "Password" with "password"|
  When %|I press "Sign in"|
end

Then /^I should see awesome rounded corners$/ do
  page.should have_css(".rounded")
end

Then /^I should see the list of (.*)$/ do |model|
  page.should have_css("##{model}")
end

Then "I debug" do
  debugger
  true
end

