class MoviesController < ApplicationController

def index
  @list_of_films = Movie.all
  @list_of_directors = Director.all
  
  render({ :template => "movies_templates/index.html.erb"})
end


def details
  film_id = params.fetch("film_id")
  @film_record = Movie.all.where({ :id => film_id}).first
  @list_of_directors = Director.all

  render({ :template => "movies_templates/details.html.erb"})
end



end
