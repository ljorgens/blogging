require 'rails_helper'

describe "the log in user process"  do
	it "logs in an existing user" do
		user = User.create(:username => "yes", :email => "oh@no.com", :password => "thebests")
		visit posts_path
		click_on "Login"
		fill_in "Username", :with =>  'yes'
		fill_in "Password", :with =>  'thebests'
		click_on "Log in"
		expect(page).to have_content 'oh@no.com'
	end
end