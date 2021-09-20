require 'rails_helper'

RSpec.describe PostsController, type: :controller do 

    login_user
    # let(:user) { FactoryBot.create(:user) }

    let(:valid_attributes) {
        { :description => "Test description", :image =>  Rack::Test::UploadedFile.new('spec/files/images/puppy.jpg', 'image/jpg') }
    }

        let(:valid_session) { {} }

        describe "GET #index" do 
        it "returns a success response" do 
            Post.create! valid_attributes 
            get :index, params: {}, session: valid_session
            expect(response).to have_http_status(302)
        end
        
    end 
end 