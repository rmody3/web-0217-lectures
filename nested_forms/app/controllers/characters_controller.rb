class CharactersController < ApplicationController
  get '/' do
    "Hello World"
  end

  get '/characters/new' do
    erb(:'characters/new')
  end

  post('/characters') do
    binding.pry

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
