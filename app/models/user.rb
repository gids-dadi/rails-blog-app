class User < ApplicationRecord
  has_many :likes
  has_many :posts, foreign_key: 'author_id'
  has_many :comments

  def most_recent_posts
    posts.limit(3).order(created_at: :desc)
  end
end
