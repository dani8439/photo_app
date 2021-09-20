require 'rails_helper'


RSpec.describe Post, :type => :model do 
    let(:post) {
        Post.create(
        :description => "puppy",
        :image => Rack::Test::UploadedFile.new(Rails.root + 'spec/files/images/puppy.jpg', 'image/jpg'),
        :user_id => user.id
        )
    }

    let(:user) {
        User.create(
        :email => "me@mail.com",
        :user_name => "SomeGuy",
        :password => "123ABC",
        :id => 4
        )
    }

    it "is valid with a description, and image" do 
        expect(post).to be_valid
    end 

    # it "is valid with a username, password, and email" do 
    #     expect(user).to be_valid
    # end 

    # it "is not valid without a password" do 
    #     expect(User.new(user_name: "Name")).not_to be_valid
    # end 

    # it "is not valid without a email" do 
    #     expect(User.new(password: "Password")).not_to be_valid
    # end 

    # it "is not valid without a username" do 
    #     expect(User.new(email: "Boo@mail.com")).not_to be_valid
    # end 
end 
