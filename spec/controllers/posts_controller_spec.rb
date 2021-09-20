require 'rails_helper'

RSpec.describe PostsController, type: :controller do 

    let(:user) {
        User.create(
        :email => "me@mail.com",
        :user_name => "SomeGuy",
        :password => "123ABC",
        :id => 4
        )
    }

    login_user
    # let(:user) { FactoryBot.create(:user) }

    let(:valid_attributes) {
        { :description => "Test description", :image =>  Rack::Test::UploadedFile.new('spec/files/images/puppy.jpg', 'image/jpg'), :user_id => user.id}
    }

        let(:valid_session) { {} }

        describe "GET #index" do 
        it "returns a success response" do 
            Post.create! valid_attributes 
            get :index, params: {}, session: valid_session
            expect(response).to have_http_status(200)
        end
        
    end 
end 