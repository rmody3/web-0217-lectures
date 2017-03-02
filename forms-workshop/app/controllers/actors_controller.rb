class ActorsController < ApplicationController
  before_action :all_actors

  def new
    @actor = Actor.new
  end

  def create

    @actor = Actor.create(params)
    redirect_to "/actors/#{@actor.id}"
  end

  def index

    @actors = Actor.all
  end



  def show

    @actor = Actor.find(params[:id])
    # select * from actors where id = ?

    # render
  end

  private
  def all_actors
    @actors = Actor.all
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
