class Author 
  attr_accessor :name 
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self 
    @posts = [] 
  end
  
  def posts 
     Post.all.select{|post| post.author == self}
  end
  def add_post(post)
    @posts << post
    post.author = self 
  end
  def self.all 
    @@all 
  end
end