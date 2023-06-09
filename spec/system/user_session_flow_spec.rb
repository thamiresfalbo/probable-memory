require 'rails_helper'

describe 'User session flow', type: :system do
  scenario 'redirected to login when trying to access dashboard' do
    visit('/dashboard')
    expect(page).to have_current_path('/login')
  end

  scenario 'should register an account' do
  end
end
