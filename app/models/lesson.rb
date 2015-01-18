class Lesson < ActiveRecord::Base
	validates :name, :presence => true

	belongs_to :section
  belongs_to :chapter #here so user can create lesson within a chapter without a section if they like.

	default_scope { order(:number) } #default scope to order lessons listing.

  def next_lesson_link
  	current_section = self.section_id
  	current_number = self.number
  	next_number = current_number + 1
  	next_lesson = Lesson.where({:number => next_number, :section_id => current_section}).first
  	if next_lesson != nil
  		return next_lesson.id
  	else
  		return self.id
  	end
  end

  def previous_lesson_link
  	current_section = self.section_id
  	current_number = self.number
  	previous_number = current_number - 1
  	previous_lesson = Lesson.where({:number => previous_number, :section_id => current_section}).first
  	if previous_lesson != nil
  		return previous_lesson.id
  	else
  		return self.id
  	end
  end

end