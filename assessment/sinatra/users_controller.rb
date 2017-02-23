class UsersController < ApplicationController

  get '/users/new' do
    erb: new
  end
  # /users/new

  post '/users' do
    @user = User.create(params)
    redirect '/users'
  end

  # create

  get '/users'
    erb :index
  end

  # index

  get '/users/:id' do
    @user = User.find(params[:id])
    erb :show
  end

  # show
  get '/users/:id/edit' do
    @user = User.find(params[:id])
    erb :edit
  end
  # edit
  patch '/users/:id' do
    @user = User.find(params[:id])
    @user.update(params)
    redirect "/users/#{@users.id}"
  end
  # update
  delete '/users/:id' do
    @user = User.find(params[:id])
    @user.delete
    redirect '/users'
  end

  # destroy

end


# Write the controller action as if this was a rails controller
# Write the url that sends a user to the action. I have done the first one for you.
