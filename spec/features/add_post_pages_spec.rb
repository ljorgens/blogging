require 'rails_helper'

describe "the add a post process"  do
	it "adds a new post" do
		visit posts_path
		click_on 'Make a New Post!'
		visit new_post_path
		fill_in "Title", :with => 'Another Post'
		fill_in "Body", :with => 'This is so good'
		click_on 'Create Post'
		visit posts_path
		expect(page).to have_content 'Another Post'
	end
	it "gives error when no title is entered" do
		visit new_post_path
		click_on "Create Post"
		expect(page).to have_content 'Please do more'
	end
end
describe "viewing a blog post" do
	it "allows you to view blog post" do
		post = FactoryGirl.create(:post)
		visit posts_path
		click_on "Another Post"
		expect(page).to have_content 'This is so good'
	end
end

