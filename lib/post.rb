require 'date'

class Post
  attr_accessor :title, :url, :filename, :date_created
  # has title, url, filename

  # read my list of post files
  # create an array of post objects
  # with the attributes set
  # Post.all

  def initialize(array)
    @title = array[-1].split(".")[0]
    @url = "/posts/#{array[2]}/#{@title}"
    @date_created = Date.parse(array[2])
  end

  def get_title
    @title.capitalize.gsub("_", " ")
  end

  def self.all
    Dir.glob("views/posts/**/*.erb").collect do |filepath|
      a = filepath.split("/")
      new(a)
    end
  end

  def self.most_recent(n)
    all.sort_by { |post| post.date_created }.reverse.pop(n)
  end

end
