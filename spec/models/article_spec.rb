require 'spec_helper'

describe Article do
  context "validating" do
    before do
      Article.create(:title => "title", :body => "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
    end
    it {should validate_uniqueness_of(:title)}
    it {should validate_presence_of(:title)}
    it {should validate_presence_of(:body)}
  end
end