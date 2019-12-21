class Blog < ActiveRecord::Base
	extend FriendlyId
	belongs_to :user
	has_many :photos
	has_many :comments
	friendly_id :title, use: :slugged
end
