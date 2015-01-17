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
    @specie = Specie.find(params[:id])
    render('species/edit.html.erb') 
  end

  def update #NOT USED
    @specie = specie.find(params[:id])
    if @specie.update(params[:id])
      render('species/success.html.erb')
    else
      render('species/edit.html.erb')
    end
  end

 def destroy #NOT USED
    @specie = specie.find(params[:id])
    @specie.destroy
    render('species/destroy.html.erb')
 end

end