require 'rails_helper'

describe "the delete a post process"  do
	it "deletes a post" do
		post = FactoryGirl.create(:post)
		visit posts_path
		click_on "Another Post"
		visit post_path(post)
		click_on "Delete Post"
		expect(page).to have_content "Post Deleted"
	end
end