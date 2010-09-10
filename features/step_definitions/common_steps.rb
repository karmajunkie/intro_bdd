Given /^I am logged in as "([^\"]*)"$/ do |email|
  Given %|I am on the homepage|
  When %|I follow "Log in"|
  When %|I fill in "Email" with "#{email}"|
  When %|I fill in "Password" with "password"|
  When %|I press "Log in"|
end
