require 'rails_helper'

describe "editing a blog post" do
	it "allows user to edit blog post" do
		post = FactoryGirl.create(:post)
		visit posts_path
		click_on "Another Post"
		visit post_path(post)
		click_on "Edit Post"
		expect(page).to have_content "Begin Editing!"
	end
	it "allows users to update blog post with new changes" do
		post = FactoryGirl.create(:post)
		visit posts_path
		click_on "Another Post"
		visit post_path(post)
		click_on "Edit Post"
		visit edit_post_path(post)
		click_on "Update Post"
		expect(page).to have_content "Successful Update!"
	end
end