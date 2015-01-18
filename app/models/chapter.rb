class Chapter < ActiveRecord::Base
	validates :name, :presence => true

	has_many :sections
	has_many :lessons #added so user can create lesson without a section if they like


end