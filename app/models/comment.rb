class Comment < ApplicationRecord
  belongs_to :author
  belongs_to :post

  after_create :update_comments_counter

  def update_comments_counter
    posts.increment!(:comments_counter)
  end
end
