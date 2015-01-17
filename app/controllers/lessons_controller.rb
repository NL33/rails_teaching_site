class LessonsController < ApplicationController
  
  def index
    @lessons = Lesson.all
    render('lessons/index.html.erb')
  end

  def new 
    @section = Section.find(params[:section_id])
    @lesson = @section.lessons.new  
    render('lessons/new.html.erb')
  end

  def create
   @lesson = Lesson.new(:number => params[:number], 
                        :name =>  params[:name], 
                        :text => params[:text], 
                        :section_id => params[:section_id])
   @section = Section.find(params[:section_id])
    if @lesson.save
      redirect_to("/chapters/#{@section.chapter_id}")
    else
      render('lessons/new.html.erb')
    end
  end

  def show
    @lesson = Lesson.find(params[:id]) 
    render('lessons/show.html.erb')
  end

  def edit 
    @lesson = Lesson.find(params[:id])
    render('lessons/edit.html.erb') 
  end

  def update 
    @lesson = Lesson.find(params[:id])
    if @lesson.update(:number => params[:number], 
                      :name => params[:name], 
                      :text => params[:text])

      redirect_to("/lessons/#{@lesson.id}")
    else
      render('lessons/edit.html.erb')
    end
  end

 def destroy #NOT USED
    @specie = specie.find(params[:id])
    @specie.destroy
    render('species/destroy.html.erb')
 end

end