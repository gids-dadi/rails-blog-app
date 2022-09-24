class Like < ApplicationRecord
  belongs_to :user
  belongs_to :post

  # after_create :update_likes_counter

  def update_likes_counter
    posts.increment!(:likes_counter)
  end
end
