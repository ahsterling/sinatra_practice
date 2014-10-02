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

  post "/" do
    puts params.inspect
    # Add input into database
    redirect to ("/")
  end

  get "/test" do
    erb :test
  end

  get "/about-me" do
    @title = "About Me"
    erb :about_me
  end

  get "/posts" do
    @posts = Post.all
    erb :posts
  end

  get "/posts/:date/:postname" do
    @post = Post.find(request.path_info)
    @title = @post.get_title
    erb :post
  end

  get "/quotations" do
    erb :quotations
  end

  get "/quotations/:name" do
    erb "quotations/#{params[:name]}".to_sym
  end





end
