class Post
  attr_accessor :title, :url, :filename
  # has title, url, filename

  # read my list of post files
  # create an array of post objects
  # with the attributes set
  # Post.all

  def initialize(array)
    @title = array[-1].split(".")[0]
    @url = "/posts/#{@title}"
  end

  def self.all
    Dir.glob("views/posts/*").collect do |filepath|
      a = filepath.split("/")
      new(a)
    end
  end

end
