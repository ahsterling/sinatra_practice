require 'sinatra'

class MyApp < Sinatra::Base

  # As sinatra is waiting, once I get a request to the home page, send the info
  # and then go back to waiting
  get "/" do
    erb :index
  end

  get "/about-me" do
    erb :about_me
  end

  # The colon + something is like a placeholder
  get "/:username" do
    params[:username]
    # User.find_by_username(params[:username])
  end

  get "/posts/:post_name" do
    params[:post_name]
  end

end
