class SectionsController < ApplicationController
  
  def index
    @sections = Section.all
    render('sections/index.html.erb')
  end

  def new 
    @chapters = Chapter.all
    @section = Section.new
    @chapter = Chapter.new  
    render('sections/new.html.erb')
  end

  def create
   @section = Section.new(params[:section])
   @chapters = Chapter.all
   
    if @section.save
      flash[:notice] = "Section added!"
      redirect_to('/chapters')
    else
      render('sections/new.html.erb')
    end
  end

  def show
    @section = Section.find(params[:id]) 
    render('sections/show.html.erb')
  end

  def edit #NOT USED
  end

  def update #NOT USED
  end

 def destroy 
    @section = Section.find(params[:id])
    @section.destroy
    flash[:notice] = "Section deleted"
    redirect_to("/chapters")
 end

end