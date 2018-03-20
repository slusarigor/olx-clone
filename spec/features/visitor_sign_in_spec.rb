require 'spec_helper'

RSpec.feature 'Visitor sign in' do
  let!(:user) { FactoryBot.create(:user) }

  scenario 'with valid email and password' do
    sign_in user

    expect(page).to have_content('Logout')
  end

  scenario 'with invalid email' do
    user.email = 'invalid_email'
    sign_in user

    expect(page).to have_content('Login')
  end

  scenario 'with blank password' do
    user.password = ''
    sign_in user

    expect(page).to have_content('Login')
  end
end
