class Post < ApplicationRecord
  belongs_to :users, class_name: 'User'
  has_many :comments, foreign_key: 'posts_id'
  has_many :likes, foreign_key: 'posts_id'

  validates :title, presence: true, length: { maximum: 250 }

  validates :commentsCounter, numericality: { only_integer: true, greater_than_or_equal_to: 0 }

  validates :likesCounter, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  
  after_create :update_post_counter

  def update_posts_counter
    users.increment!(:posts_counter)
  end

  def most_recent_comments
    comments.limit(5).order(created_at: :desc)
  end
end