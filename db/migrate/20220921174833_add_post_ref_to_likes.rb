class AddPostRefToLikes < ActiveRecord::Migration[7.0]
  def change
    add_reference :likes, :Post, null: false, foreign_key: true, index: true
  end
end
