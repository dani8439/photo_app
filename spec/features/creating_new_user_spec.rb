require 'rails_helper'

feature 'Creating a new user' do 
    background do 
        visit '/'
        click_link 'Register'
    end 
    scenario 'can create a new user via the index page' do
        fill_in 'User name', with: 'Some Guy'
        fill_in 'Email', with: 'me@mail.com'
        fill_in 'Password', with: '123ABC', match: :first
        fill_in 'Password confirmation', with: '123ABC'

        click_button 'Sign up'
        expect(page).to have_content('Welcome! You have signed up successfully.')
    end
end