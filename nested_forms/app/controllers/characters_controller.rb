class CharactersController < ApplicationController
  get '/' do
    "Hello World"
  end

  get '/characters' do
    erb :'characters/index'
  end

  get '/characters/new' do
    erb(:'characters/new')
  end

  post '/characters' do
    @character = Character.create(name: params[:name])
    show=TvShow.find_or_create_by(name: params[:tv_show])
    actor=Actor.find_or_create_by(name: params[:actor])
    @character.tv_show=show
    @character.actor= actor
    @character.save
    binding.pry
    redirect "/characters/#{@character.id}"
  end

  get '/characters/:id' do
    @character = Character.find(params[:id])
    erb :'characters/show'
  end

end


# GOAL: make a characters/new form, which takes in the charcter name, and creates
# a new character with that name.
# After it creates the character, redirect_to the characters show page,
# where we will display
# the character's name.
