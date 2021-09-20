require 'rails_helper'

feature 'Creating posts' do
  background do
    user = create :user
    sign_in_with user
  end

  scenario 'can create a new post' do
    visit '/'
    click_link 'New Post'
    attach_file('Image', "spec/files/images/puppy.jpg")
    fill_in 'Description', with: "puppy"
    click_button 'Create Post'
    expect(page).to have_content("puppy")
    expect(page).to have_css("img[src*='puppy']")
  end

  scenario 'a post needs an image to save' do
    visit '/'
    click_link 'New Post'
    fill_in 'Description', with: "No picture because YOLO"
    click_button 'Create Post'
    expect(page).to have_content("Your new post couldn't be created. Please check that all information has been filled out.")
  end
end