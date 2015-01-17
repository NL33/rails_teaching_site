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
      render('/chapters')
    else
      render('sections/new.html.erb')
    end
  end

  def show
    @chapter = Chapter.find(params[:id]) 
    render('chapters/show.html.erb')
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