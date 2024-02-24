require 'rails_helper'

RSpec.feature "Group management", type: :feature do
  scenario "User visits the group index page" do
    user = User.create(id: 1, name: 'Austin Obimbo', email: 'test@gmail.com', password: 'password123')
    group = Group.create(id: 1, name: 'Cars', icon: 'test', user_id: user.id)
    
    visit new_user_session_path
    
    fill_in 'Email', with: 'test@gmail.com'
    fill_in 'Password', with: 'password123'
    click_button 'Log in'
    
    expect(page).to have_current_path(root_path)
    
    expect(page).to have_content("Cars")
    expect(page).to have_link("New Category", href: new_group_path)
  end
end
