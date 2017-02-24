class CharactersController < ApplicationController
  get '/' do
    "Hello World"
  end

  get '/characters/new' do
    erb(:'characters/new')
  end

end


# GOAL: make a characters/new form, which takes in the charcter name, and creates
# a new character with that name.
# After it creates the character, redirect_to the characters show page,
# where we will display
# the character's name.
