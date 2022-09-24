class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :post
  validates :text, presence: true, length: { maximum: 250 }

  def comments_counter
    post.increment!(:commentscounter)
  end
end
