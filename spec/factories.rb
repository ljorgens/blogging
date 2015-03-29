FactoryGirl.define do 
	factory(:user) do 
		username('fred')
		email('fred@fred.com')
		password('fredster')
	end
	factory(:post) do
		title('Another Post')
		body('This is so good')
		id(1)
	end
	factory(:comment) do
		title('Great Post')
		body('Wow this is a post')
		post_id(1)
	end
end