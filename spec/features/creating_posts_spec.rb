# require 'rails_helper.rb'

# feature 'Creating posts' do 
#     scenario 'can create a post' do 
#         visit '/'
#         expect(current_path).to eq('/posts/new')

#         click_link 'New Post'
#         attach_file('Image', "spec/files/images/puppy.jpg")
#         fill_in 'Description', with: 'lovely puppy' 
#         click_button 'Create Post'
#         expect(page).to have_content('puppy')
#         expect(page).to have_css("img[src*='puppy.jpg']")
#     end
# end