require 'rails_helper'

RSpec.describe Comment, type: :model do
  comment = Comment.new
  it 'Comment should not be valid with no parameters' do
    expect(comment).to_not be_valid
  end
end
