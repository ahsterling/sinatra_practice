class PostReader

  def self.all_posts
    Dir.glob("views/posts/*.erb").collect do |item|
      File.basename(item, ".erb")
    end
  end

  def self.read_file(file_name)
    File.open(file_name)
  end

end

puts PostReader.all_posts[0].class
