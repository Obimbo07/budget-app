require 'rails_helper'

RSpec.describe Group, type: :model do
  it 'is valid' do
    user = User.create(id: 1, name: 'Austin Obimbo', email: 'test@gmail.com', password: 'password123')
    group = Group.create(id: 1, name: 'Cars', icon: 'test', user_id: user.id)
    expect(group).to be_valid
  end
end
