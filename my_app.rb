require 'sinatra'

class MyApp < Sinatra::Base

  # As sinatra is waiting, once I get a request to the home page, send the info
  # and then go back to waiting
  get "/" do
    erb :index
  end

  get "/about-me" do
    "I'm Allie"
  end

end
