require 'sinatra'
require 'date'
require './lib/post'

class MyApp < Sinatra::Base


  get "/" do
    @posts = Post.all
    erb :index
  end

  get "/about-me" do
    erb :about_me
  end

  get "/posts/:date/:postname" do
    erb "posts/#{params[:date]}/#{params[:postname]}".to_sym
  end

end
