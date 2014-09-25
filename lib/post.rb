class Post
  attr_accessor :title, :url, :filename
  # has title, url, filename

  # read my list of post files
  # create an array of post objects
  # with the attributes set
  # Post.all

  def initialize(array)
    
  end

  def self.all
    Dir.glob("views/posts/*").collect do |filepath|
      a = filepath.split("/")
      new(a)
      #File.basename(item, ".erb")
    end
  end


  #
  # def self.read_file(file_name)
  #   File.open(file_name)
  # end

end
