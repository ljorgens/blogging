require 'rails_helper'

describe "the delete a comment process"  do
	it "deletes a comment" do
		post = FactoryGirl.create(:post)
		comment = FactoryGirl.create(:comment)
		comment.post_id = post.id
		visit post_path(post)
		click_on "Great Post"
		click_on "Delete"
		expect(page).to have_content "Deleted"
	end
end