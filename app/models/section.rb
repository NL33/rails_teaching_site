class Section < ActiveRecord::Base

	has_many :lessons
	belongs_to :chapter
end