class Comment < ApplicationRecord
  belongs_to :user, class_name: 'User'
  belongs_to :post, class_name: 'Post'

  after_create :update_comments_counter

  def update_comments_counter
    posts.increment!(:comments_counter)
  end
end
