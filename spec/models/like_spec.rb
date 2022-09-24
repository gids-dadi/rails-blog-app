require 'rails_helper'
RSpec.describe Like, type: :model do
  like = Like.new
  it 'Likes should be not be Valid with no parameters' do
    expect(like).to_not be_valid
  end
end