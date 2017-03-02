class ActorsController < ApplicationController


  def new
    @actor = Actor.new
    # render 'actors/new'
  end

  def create
    # params = {actor: {won_an_oscar: 'tom cruise'}}
    # actor.won_an_oscar = 'true'
    @actor = Actor.create(actor_attributes)
    redirect_to actor_path(@actor)
  end

  def index
    # @actor = Actor.new
    Actor.create(name: params["actor_name"])
    if params["actor_name"].nil?
      @actors = Actor.all
    else
      @actors = Actor.where(name: params[:actor_name])
    end
      # render 'actors/index.html.erb'
  end



  def show

    @actor = Actor.find(params[:id])
    # select * from actors where id = ?

    # render
  end

  private

  def actor_attributes
    params.require(:actor).permit(:name)
  end
  # def find_user
end

# Application.new(ApplicationController.new)
# /actors
# ActorsController.new.index
# <ActorsController @actors=[]>

# /actors/1
# ActorsController.new.show




# get request /actors/new
# config/routes.rb
# controller, action
# response
  # render actors/new.html.erb

# module Intake
#   class Person
#
#   end
# end
# Intake::Person
