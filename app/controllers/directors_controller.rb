class DirectorsController < ApplicationController
  
  def index
  @list_of_directors = Director.all
  
  render({ :template => "directors_templates/index.html.erb"})
  end


  def director_detail
    @director_id = params.fetch("director_id")

    render({ :template => "directors_templates/details.html.erb"})
  end


  def director_eldest
    @oldest = Director.all.order(:dob).where.not({:dob => nil}).first
    require "date"

    @oldest_dob = Date.parse(@oldest.dob.to_s)

    render({ :template =>"directors_templates/eldest.html.erb"})
  end

end     