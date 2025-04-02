require 'rails_helper'

RSpec.describe User, type: :model do
  it 'returns the full name of the user' do
    user = User.new()
    expect(user.full_name).to eq 'John Doe'
  end
  it 'validates presence of first name' do
    user = User.new(first_name: nil)
    expect(user.valid?).to be_falsey
    expect(user.errors[:first_name]).to include("can't be blank")
  end
  it 'validates presence of last name' do
    user = User.new(last_name: nil)
    expect(user.valid?).to be_falsey
    expect(user.errors[:last_name]).to include("can't be blank")
  end
  it 'validates presence of email' do
    user = User.new(email: nil)
    expect(user.valid?).to be_falsey
    expect(user.errors[:email]).to include("can't be blank")
  end
end
