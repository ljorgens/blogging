require 'rails_helper'

describe List do 
	it { should validate_presence_of :title }
	it { should validate_presence_of :date }
end