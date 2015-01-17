Rails.application.routes.draw do
#Lessons
  match('/sections/:section_id/lessons/new', {:via => :get, :to => 'lessons#new'})
  match('/sections/:section_id/lessons', {:via => :post, :to => 'lessons#create'})
  match('lessons/:id', {:via => :get, :to => 'lessons#show'})
  match('lessons/:id/edit', {:via => :get, :to => 'lessons#edit'}) 
  match('lessons/:id', {:via => [:patch, :put], :to => 'lessons#update'}) #not usedmatch('/sightings/:sighting_id', 

#Sections
  match('/chapters/:chapter_id/sections/new', {:via => :get, :to => 'sections#new'})
  match('/chapters/:chapter_id/sections', {:via => :post, :to => 'sections#create'})
  match('/sections/new', {:via => :get, :to => 'sections#new'})
  match('/sections/new', {:via => :post, :to => 'sections#create'})
  match('sections/show', {:via => :get, :to => 'sections#show'}) 

#Chapters
  match('/', {:via => :get, :to => 'chapters#index'})
  match('chapters', {:via => :get, :to => 'chapters#index'}) 
  #match('chapters/new', {:via => :get, :to => 'chapters#new'})
  match('chapters/new', {:via => :post, :to => 'chapters#create'})
  match('chapters/:id', {:via => :get, :to => 'chapters#show'}) 

#Species
  #match('/', {:via => :get, :to => 'species#index'}) 


  #match('species/:id', {:via => :get, :to => 'species#show'})
  #match('species/:id/edit', {:via => :get, :to => 'species#edit'}) #Not used. This and others included for illustration
  #match('species/:id', {:via => [:patch, :put], :to => 'species#update'}) #Not used.
  #match('species/:id', {:via => :delete, :to => 'species#destroy'}) #Not used.

#Sightings
  

  #match('species/:specie_id/sightings/:sighting_id/edit', {:via => :get, :to => 'sightings#edit'}) #Not used
  #match('/sightings/:sighting_id', {:via => [:patch, :put], :to => 'sightings#update'}) #not used

#Regions
  #match('/:specie_id/:sighting_id/regions/new', {:via => :get, :to => 'regions#new'})
  #match('/:sighting_id/regions', {:via => :post, :to => 'regions#create'})
end
