# require 'rails_helper.rb'

# feature 'Creating posts' do 
#     background do 
#         create :user,  email: "me@mail.com", user_name: "SomeGuy", password: "123ABC", id: 4
#         new_user_session_path 'me@mail.com', "123ABC"
#     end 

#     scenario 'signs the user in successfully with a valid email and password' do 
#         new_user_session_path 'me@mail.com', "123ABC"
#     end 

#     def sign_in_with(email, password)
#         visit new_user_session_path 
#         fill_in 'Email', with: email 
#         fill_in 'Password', with: password 
#         click_button 'Sign In'
#     end 

#     scenario 'can create a new post' do 
#         visit '/'
#         # sign in is failing, cannot see new post link
#         click_link 'New Post'
#         attach_file('Image', "spec/files/images/puppy.jpg")
#         fill_in 'Description', with: "Puppy"
#         click_button 'Create Post'
#     end 
# end 