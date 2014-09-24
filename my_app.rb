require 'sinatra'
require './lib/post_reader'

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
  get "/posts/:postname" do
    erb "posts/#{params[:postname]}".to_sym
  end

end
