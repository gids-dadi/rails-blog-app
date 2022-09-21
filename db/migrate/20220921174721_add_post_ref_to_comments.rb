class AddPostRefToComments < ActiveRecord::Migration[7.0]
  def change
    add_reference :comments, :Post, null: false, foreign_key: true, index: true
  end
end
