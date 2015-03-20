require 'rails_helper'

describe "editing a blog post comment" do
	it "allows user to edit blog post comment" do
		post = Post.create(:title => "Another Post", :body => "This is so good")
		visit posts_path
		click_on "Another Post"
		visit post_path(post)
		click_on "Add Comment"
		fill_in "Title", :with =>  'Great Post'
		fill_in "Body", :with =>  'Wow this is a post'
		click_on "Create Comment"
		click_on "Great Post"
		click_on "Edit"
		click_on "Update Comment"
		expect(page).to have_content "Comment successfully updated"
	end
end