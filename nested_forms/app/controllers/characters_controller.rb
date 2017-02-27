class CharactersController < ApplicationController
  get '/' do
    "Hello World"
  end

  get '/characters/new' do
    erb(:'characters/new')
  end

  post('/characters') do
    # params =  {"name"=>"Elaine Benis",
    # "actor_name"=>"Julia Louis Dreyfuss",
    # "tv_show_name"=>"Seinfeld"}
    # 1. Find the related actor
    # binding.pry
    # Character.create({character_attributes: {name: 'vega',
    #   actor_name: 'john',
    #   tv_show_name: 'pulp fiction'}})
    # character_attributes=()
    @character = Character.create(params)


    redirect("/characters/#{@character.id}")
  end

  get('/characters/:id') do
    @character = Character.find(params[:id])

    erb(:'characters/show')
  end

  get('/characters') do
    @characters = Character.all
    erb(:'characters/index')
    #
  end

end
