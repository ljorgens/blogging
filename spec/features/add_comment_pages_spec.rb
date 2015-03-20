describe "the add a comment process"  do
	it "adds a new comment to a post" do
		post = Post.create(:title => "yes", :body=> "oh no")
		visit post_path(post)
		click_on "Add Comment"
		fill_in "Topic", :with =>  'Great Post'
		fill_in "Comment", :with =>  'Wow this is a post'
		click_on "create Comment"
		expect(page).to have_content 'Great Post'
	end
	it "gives error when no title is entered" do
		post = Post.create(:title => "yes", :body=> "oh no")
		visit post_path(post)
		click_on "Add Comment"
		click_on "Create Comment"
		expect(page).to have_content 'Please do more'
	end
end