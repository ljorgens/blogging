class Post < ActiveRecord::Base
	has_many :comments
	belongs_to :user
	validates :title, :presence => true
	validates :body, :presence => true
  has_attached_file :avatar, :styles => { :large => "500x500>", :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\z/
end