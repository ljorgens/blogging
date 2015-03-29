require 'rails_helper'

describe "the log in user process"  do
	it "logs in an existing user" do
		user = FactoryGirl.create(:user)
		visit posts_path
		click_on "Login"
		fill_in "Username", :with =>  'fred'
		fill_in "Password", :with =>  'fredster'
		click_on "Log in"
		expect(page).to have_content 'fred@fred.com'
	end
end