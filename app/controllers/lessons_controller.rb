class LessonsController < ApplicationController
  
  def index
    @lessons = Lesson.all
    render('lessons/index.html.erb')
  end

  def new 
    @lesson = Lesson.new 
    @chapters = Chapter.all
    @sections = Section.all
    render('lessons/new.html.erb')
  end

  def create
    @lesson = Lesson.new(params[:lesson])
    @chapters = Chapter.all
    @sections = Section.all
    if @lesson.save
      flash[:notice] = "Lesson added!"
      redirect_to('/chapters')
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

 def destroy 
    @lesson = Lesson.find(params[:id])
    @lesson.destroy
     flash[:notice] = "Lesson deleted"
    redirect_to("/chapters")
 end

end