require 'rails_helper'

describe "editing a blog post comment" do
	it "allows user to edit blog post comment" do
		post = FactoryGirl.create(:post)
		comment = FactoryGirl.create(:comment)
		visit post_path(post)
		click_on "Great Post"
		click_on "Edit"
		click_on "Update Comment"
		expect(page).to have_content "Comment successfully updated"
	end
end