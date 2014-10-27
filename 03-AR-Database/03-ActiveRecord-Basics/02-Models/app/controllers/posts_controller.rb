require_relative "../views/post_view.rb"

class PostsController
  def initialize
    @view = PostView.new
  end

  def index
    # DO NOT WRITE SQL QUERIES
    # TODO: gather all posts from the database
    # TODO: give them to the view to be printed
    posts = Post.all
    @view.print_posts(posts)
  end

  def create
    # DO NOT WRITE SQL QUERIES
    # TODO: create a post
    name = @view.ask_for_name
    url = @view.ask_for_url
    post = Post.new(name: name, url: url)
    post.save
    @view.print_successfully_created(post)
  end

  def update
    # DO NOT WRITE SQL QUERIES
    # TODO: update a post
    name = @view.ask_for_update
    post = Post.find_by(name: name)
    post.name = @view.ask_for_name
    post.url = @view.ask_for_url
    post.save
    @view.print_successfully_updated(post)
  end

  def destroy
    # DO NOT WRITE SQL QUERIES
    # TODO: destroy a post
    name = @view.ask_for_destroy
    post = Post.find_by(name: name)
    post.destroy
    @view.print_successfully_destroyed
  end

  def upvote
    # DO NOT WRITE SQL QUERIES
    # TODO: increment the `votes` column for a post
    name = @view.ask_for_upvote
    vote = @view.ask_for_vote
    post = Post.find_by(name: name)
    post.votes = vote
    post.save
    @view.print_successfully_upvoted(post)
  end
end