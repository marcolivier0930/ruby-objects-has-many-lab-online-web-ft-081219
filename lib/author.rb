class Author 
  attr_accessor :name, :post
  
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
    # @posts << post
    post.author = self 
  end
  
  def self.all 
    @@all 
  end
  
  def add_post_by_title(post)
    post = Post.new(post)
    add_post(post)
  end
end