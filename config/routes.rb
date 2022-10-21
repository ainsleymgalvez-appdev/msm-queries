Rails.application.routes.draw do
  get("/", { :controller => "application", :action => "homepage" })

  # directors

  get("/directors", {:controller => "directors", :action => "index"})

  get("/directors/eldest", {:controller => "directors", :action => "oldest_director"})

  get("/directors/youngest", {:controller => "directors", :action => "youngest_director"})
  
  get("/directors/:an_id", {:controller => "directors", :action => "director_details"})

  # actors

  get("/actors", {:controller => "actor", :action => "index"})
  get("/actors/:actor_id", {:controller => "actor", :action => "actor_detail"})

  # movies

  get("/movies", {:controller => "movies", :action => "index"})
  get("/movies/:movie_id", {:controller => "movies", :action => "movie_detail"})

end
