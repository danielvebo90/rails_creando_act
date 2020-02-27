class ActorsController < ApplicationController

    def index
        @actors = Actor.all
    end

    def new
        @actor = Actor.new
    end

    def create
        actor = Actor.new(artist_params)
        if actor.save
            redirect_to actors_path
        else
            render :new
        end
    end
      
    def artist_params
        params.require(:actor).permit(:death_place, :death_date, :image_url, :birth_place, :birth_date, :bio, :name, :alive)
    end

end
