class MoviesController < ApplicationController

def index
  @list_of_films = Movie.all
  @list_of_directors = Director.all
  
  render({ :template => "movies_templates/index.html.erb"})
end





end
