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
end 
