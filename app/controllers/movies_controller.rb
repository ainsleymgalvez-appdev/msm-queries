class MoviesController < ApplicationController

    def index
     
      @list_of_movies = Movie.all

      
      render({ :template => "movie_template/index_movies.html.erb" })
      
    end

    def movie_detail
    
      movie_id = params.fetch("movie_id")
      @movie_info = Movie.where({ :id => movie_id }).at(0)

      render({ :template => "movie_template/show_movies.html.erb"})
    end

end
