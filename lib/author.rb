class Author 
  attr_accessor :name, :post
  
  @@all = []
  
  @@count_post = 0 
  
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
    @@count_post += 1 
  end
  
  def self.all 
    @@all 
  end
  
  def add_post_by_title(post)
    post = Post.new(post)
    add_post(post)
    @@count_post += 1 
  end
  
  def self.post_count
    @@count_post
  end
end