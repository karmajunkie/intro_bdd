Factory.sequence(:some_seq)
Factory.define(:article) do |f|
  f.body "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
  f.sequence(:title) {|i| "Title #{i}"}
end

Factory.define(:user) do |f|
  f.sequence(:email){|i| "user#{i}@example.com"}
  f.password "password"
  f.password_confirmation "password"
end

Factory.define(:confirmed_user, :parent => :user) do |f|
  f.confirmed_at Time.zone.now
end

