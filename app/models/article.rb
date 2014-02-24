class Article < ActiveRecord::Base
	belongs_to :category

	attr_accessible :title, :content, :category, :active

	validates_presence_of :title
	validates_presence_of :content

	scope :active, where('active = ?', true)
 	scope :alphabetical, order('title')

end
