require 'date'
# You can use a global variable, DB, built as is:
# DB = SQLite3::Database.new(file)

class Post
  # TODO: implement some reader and/or writers
  attr_accessor :title, :url, :votes
  attr_reader :date, :id

  def initialize(options = {})
    # TODO: initialize instance variables from the hash options.
    @id = options[:id]
    options[:date].nil? ? @date = Time.now : @date = options[:date]
    @url = options[:url]
    @votes = 0 || options[:votes]
    @title = options[:title]
  end

  # TODO: implement all the class methods and instance methods
  #       to have a full CRUD support on your Post model

  def upvote
    @votes += 1
  end

  def save
    if @id.nil?
      DB.execute("INSERT INTO posts (title, url, date, votes) VALUES ('#{@title}','#{@url}',
        #{@date.to_i}, #{@votes});")
      @id = DB.last_insert_row_id
    else
      DB.execute("UPDATE posts SET id = #{@id}, title = '#{@title}';")
    end
  end

  def destroy
    DB.execute("DELETE FROM posts WHERE id = #{@id};")
  end

  def self.find(id_needed)
    query = DB.execute("SELECT id, title, url, date, votes FROM posts WHERE id = '#{id_needed}';")
    query.flatten!
    if query == []
      return nil
    else
      Post.new(id: query[0], title: query[1], url: query[2], date: Time.at(query[3]), votes: query[4])
    end
  end

  def self.all
    query = DB.execute("SELECT id, title, url, date, votes from posts;")
    array = []
    query.each do |value|
      array << Post.new(id: value[0], title: value[1], url: value[2], date: Time.at(value[3]), votes: value[4])
    end
    array
  end
end
