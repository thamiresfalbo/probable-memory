require 'rails_helper'

describe 'User session flow', type: :system do
  scenario 'when redirected to login when trying to access dashboard' do
    visit('/dashboard')
    expect(page).to have_current_path('/login')
  end

  scenario 'when register a new account' do
    visit('/register')
  end

  scenario 'when login successfully' do
    visit('/login')
  end
end
