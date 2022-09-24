require 'rails_helper'

RSpec.describe User, type: :model do
  it 'is not valid without a name' do
    user = User.new(name: nil)
    expect(user).to_not be_valid
  end
  it 'is not valid if posts counter is not a number ' do
    user = User.new(name: 'John', postscounter: 'not a number')
    expect(user).to_not be_valid
  end
  it 'is not valid if posts counter is less than 0' do
    user = User.new(name: 'John', postscounter: -1)
    expect(user).to_not be_valid
  end
end