Rails.application.routes.draw do
  get("/", { :controller => "application", :action => "homepage" })

  get("/directors", { :controller => "directors", :action => "index"})
  
  get("/directors/eldest", { :controller => "directors", :action => "director_eldest"})
  get("directors/youngest", { :controller => "directors", :action => "director_youngest"})

  get("/directors/:director_id", { :controller => "directors", :action => "director_detail"})


  # Movies

  
  get("/movies", { :controller => "movies", :action => "index"})
  get("/movies/:film_id", { :controller => "movies", :action => "details"})

end
