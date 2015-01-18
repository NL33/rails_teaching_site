class ChaptersController < ApplicationController
  
  def index
    @chapters = Chapter.all
    render('chapters/index.html.erb')
  end

  def new 
    @chapter = Chapter.new 
    render('chapters/new.html.erb')
  end

  def create
    @chapters = Chapter.all
  	@chapter = Chapter.new(params[:chapter])
    if @chapter.save
      flash[:notice] = "Chapter added!"
      redirect_to('/chapters')
    else
      render('sections/new.html.erb')
    end
  end

  def show
    @chapter = Chapter.find(params[:id]) 
    render('chapters/show.html.erb')
  end

  def edit #NOT USED
  end

  def update #NOT USED
  end

 def destroy 
    @chapter = Chapter.find(params[:id])
    @chapter.destroy
    flash[:notice] = "Chapter deleted"
    redirect_to("/chapters")
 end

end