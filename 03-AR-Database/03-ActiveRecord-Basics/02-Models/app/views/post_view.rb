class PostView
  # TODO: implement some methods here when controller needs to `puts` or `gets`
def print_posts(posts)
    posts.each do |post|
      puts "- #{post.name}, URL: #{post.url}, Note: #{post.votes}"
    end
  end

def ask_for_name
    puts "Name?"
    print "> "
    gets.chomp
  end

  def ask_for_url
    puts "URL?"
    print "> "
    gets.chomp
  end

  def print_successfully_created(post)
    puts "Post '#{post.name}' has been successfully created"
  end

  def ask_for_update
    puts "Which name do you want to update?"
    print "> "
    gets.chomp
  end

  def ask_for_destroy
    puts "Which name do you want to destroy?"
    print "> "
    gets.chomp
  end

  def ask_for_upvote
    puts "Which name do you want to upvote?"
    print "> "
    gets.chomp
  end

  def ask_for_vote
    puts "What's the score?"
    print "> "
    gets.chomp
  end

  def print_successfully_destroyed
    puts "Successfully destroyed Motha fucka"
  end

  def print_successfully_updated(post)
    puts "Post '#{post.name}' has been successfully updated"
  end

  def print_successfully_upvoted(post)
    puts "Post '#{post.name}' has been successfully upvoted"
  end
end