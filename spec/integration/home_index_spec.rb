require 'rails_helper'

RSpec.describe 'Home', type: :system do

  it 'shows the home page' do
    visit root_path
    expect(page).to have_content('In the Budget')
  end
  
  it 'shows the sign up page' do
    visit new_user_registration_path
    expect(page).to have_content('SIGN UP')
  end

  it 'shows the log in page' do
    visit new_user_session_path
    expect(page).to have_content('Log in')
  end

end
