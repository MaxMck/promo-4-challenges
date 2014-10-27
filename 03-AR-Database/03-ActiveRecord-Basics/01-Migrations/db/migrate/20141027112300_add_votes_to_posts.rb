class AddVotesToPosts < ActiveRecord::Migration
  def change
    # TODO: your code here to create the posts table
    add_column :posts, :votes, :integer
  end
end