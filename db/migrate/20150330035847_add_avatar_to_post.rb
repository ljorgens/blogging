class AddAvatarToPost < ActiveRecord::Migration
  def self.up
  	add_attachment :posts, :avatar
  end
end
