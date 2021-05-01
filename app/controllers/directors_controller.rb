class DirectorsController < ApplicationController
  
  def index
  @list_of_directors = Director.all
  
  render({ :template => "directors_templates/index.html.erb"})
  end


  def director_detail
    @director_id = params.fetch("director_id")
    
    render({ :template => "directors_templates/details.html.erb"})
  end


end     