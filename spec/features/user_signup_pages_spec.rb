require 'rails_helper'

describe "the sign up user process"  do
	it "adds a new user" do
		visit posts_path
		click_on "Sign up"
		fill_in "Username", :with =>  'testUser'
		fill_in "Email", :with =>  'Wow@email.com'
		fill_in "Password", :with =>  'Wowthisisapost'
		fill_in "Password confirmation", :with =>  'Wowthisisapost'
		fill_in "User number", :with => "5555555555"
		click_on "fresh"
		expect(page).to have_content 'Wow@email.com'
	end
	it "gives error when no username is entered" do
		visit posts_path
		click_on "Sign up"
		fill_in "Username", :with =>  ''
		fill_in "Email", :with =>  'Wow@email.com'
		fill_in "Password", :with =>  'Wowthisisapost'
		fill_in "Password confirmation", :with =>  'Wowthisisapost'
		fill_in "User number", :with => "5555555555"
		click_on "fresh"
		expect(page).to have_content 'error'
	end
	it "gives error when no email is entered" do
		visit posts_path
		click_on "Sign up"
		fill_in "Username", :with =>  'Wowo'
		fill_in "Email", :with =>  ''
		fill_in "Password", :with =>  'Wowthisisapost'
		fill_in "Password confirmation", :with =>  'Wowthisisapost'
		fill_in "User number", :with => "5555555555"
		click_on "fresh"
		expect(page).to have_content 'error'
	end
	it "gives error when no password is entered" do
		visit posts_path
		click_on "Sign up"
		fill_in "Username", :with =>  'Wowo'
		fill_in "Email", :with =>  'wowow@wow.com'
		fill_in "Password", :with =>  ''
		fill_in "Password confirmation", :with =>  'Wowthisisapost'
		fill_in "User number", :with => "5555555555"
		click_on "fresh"
		expect(page).to have_content 'error'
	end
	it "gives error when no password confirmation is entered" do
		visit posts_path
		click_on "Sign up"
		fill_in "Username", :with =>  'Wowo'
		fill_in "Email", :with =>  'wowo@wowow.com'
		fill_in "Password", :with =>  'Wowthisisapost'
		fill_in "Password confirmation", :with =>  ''
		fill_in "User number", :with => "5555555555"
		click_on "fresh"
		expect(page).to have_content 'error'
	end
	it "gives error when no user number is entered" do
		visit posts_path
		click_on "Sign up"
		fill_in "Username", :with =>  'Wowo'
		fill_in "Email", :with =>  'wowo@wowow.com'
		fill_in "Password", :with =>  'Wowthisisapost'
		fill_in "Password confirmation", :with =>  'Wowthisisapost'
		fill_in "User number", :with => ""
		click_on "fresh"
		expect(page).to have_content 'error'
	end
end