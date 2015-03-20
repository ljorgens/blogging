require 'rails_helper'

describe Comment do 
	it { should validate_presence_of :title }
	it { should validate_presence_of :body }
	it { should validate_presence_of :post_id }
end