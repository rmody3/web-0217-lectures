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

<<<<<<< HEAD
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
=======
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
>>>>>>> f7c559a570581ac6b6341ccab99621c53d90b3cc


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
