class Author
  attr_accessor :name
  @@post_count = 0

  def initialize(name)
    @name = name
    @posts = []
    @@post_count += 1
  end

  def add_post(post)
    @posts << post
    post.author = self
  end

  def posts
    @posts
  end

  def add_post_by_title(name)
    post = Post.new(name)
    @posts << post
    post.author = self
  end

  def self.post_count
    @@post_count
  end
end
