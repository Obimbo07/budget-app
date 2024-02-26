require 'rails_helper'

RSpec.describe User, type: :model do
  it 'is valid with valid attributes' do
    user = User.new(name: 'Austin Obimbo', email: 'pam@recipedaily.com', password: 'password123')
    expect(user).to be_valid
  end
end
