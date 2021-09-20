# require 'rails_helper.rb'

# feature 'Creating posts' do 
#     background do 
#         user = create :user 
#         sign_in user
    
#     end 

#     scenario 'can create a new post' do 
#         visit '/'
#         click_link 'New Post'
#         attach_file('Image', "spec/files/images/puppy.jpg")
#         fill_in 'Description', with: "Puppy"
#         click_button 'Create Post'
#     end 
# end 