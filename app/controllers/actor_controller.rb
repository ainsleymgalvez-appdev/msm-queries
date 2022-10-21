class ActorController < ApplicationController
  
  def index
  
    @list_of_actors = Actor.all

    render({:template => "actor_template/index_actors.html.erb"})

  end

  def actor_detail
  
    actor_id = params.fetch("actor_id")

    @the_actor = Actor.where({ :id => actor_id}).at(0)

     character = Character.where({ :actor_id => actor_id })

     @roles = character.all

    # @director = Director.where({ :id => @movie.director_id }).at(0)
    
    render({ :template => "actor_template/show_actors.html.erb"})

  end

end
