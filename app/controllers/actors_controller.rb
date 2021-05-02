class ActorsController < ApplicationController

def index
  @list_of_actors = Actor.all

  render({ :template => "actors_templates/index.html.erb"})
end


def details
  actor_id = params.fetch("actor_id")
  @actor_record = Actor.all.where({ :id => actor_id}).first
  @list_of_characters = Character.all.where({ :actor_id => @actor_record.id})
  @list_of_films = Movie.all
  @list_of_directors = Director.all

  render({ :template => "actors_templates/details.html.erb"})
end


end