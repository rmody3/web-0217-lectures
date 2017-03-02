class ActorsController < ApplicationController


  def new
    @actor = Actor.new
  end

  def create
  end

  def index
    @actor = Actor.new
      @actors = Actor.all
      # render 'actors/index.html.erb'
  end



  def show

    @actor = Actor.find(params[:id])
    # select * from actors where id = ?

    # render
  end

  private
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
