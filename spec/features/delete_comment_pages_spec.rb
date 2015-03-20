require 'rails_helper'

describe "the delete a comment process"  do
	it "deletes a comment" do
		post = Post.create(:title => "Another Post", :body => "This is so good")
		visit posts_path
		click_on "Another Post"
		click_on "Add Comment"
		fill_in "Title", :with =>  'Great Post'
		fill_in "Body", :with =>  'Wow this is a post'
		click_on "Create Comment"
		click_on "Great Post"
		click_on "Delete"
		expect(page).to have_content "Deleted"
	end
end