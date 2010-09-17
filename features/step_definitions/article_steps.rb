Given /^the article "([^"]*)" was written by "([^"]*)"$/ do |title, email|
  article = Article.find_or_create_by_title(title) 
  article.user = User.find_by_email(email) || Factory(:confirmed_user, :email => email)
  article.save
end

