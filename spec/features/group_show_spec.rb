require 'rails_helper'

RSpec.feature 'Group management', type: :feature do
  scenario 'User visits the group show page' do
    user = User.create(name: 'Austin Obimbo', email: 'test@gmail.com', password: 'password123')
    group = Group.create(name: 'Cars', icon: 'test', user_id: user.id)
    group.items.create(name: 'Item 1', amount: 100, authors_id: user.id, group_id: group.id)
    group.items.create(name: 'Item 2', amount: 150, authors_id: user.id, group_id: group.id)

    visit new_user_session_path

    fill_in 'Email', with: 'test@gmail.com'
    fill_in 'Password', with: 'password123'
    click_button 'Log in'

    visit groups_path(group)

    visit group_path(group)

    expect(page).to have_content('Cars')
    expect(page).to have_content('Item 1')
    expect(page).to have_content('Item 2')
    expect(page).to have_content('$100')
    expect(page).to have_content('$150')
    expect(page).to have_content('New Transaction')
  end
end
