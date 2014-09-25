require 'sinatra'
require 'date'
require './lib/post'

class MyApp < Sinatra::Base

  before do
    @title = "It's my blog!"
  end

  get "/" do
    @posts = Post.most_recent(5)
    erb :index
  end

  get "/about-me" do
    @title = "About Me"
    erb :about_me
  end

  get "/posts" do
    @posts = Post.all
  end

  get "/posts/:date/:postname" do
    @post = Post.find(request.path_info)
    @title = @post.get_title
    erb :post
    #erb "posts/#{params[:date]}/#{params[:postname]}".to_sym
  end



end
