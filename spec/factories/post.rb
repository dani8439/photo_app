FactoryGirl.define do 
    factory :post do 
        caption "Puppy"
        image Rack::Test::UploadFile.new(Rails.root + 'spec/files/images/puppy.jpg', 'image/jpg')
    end 
end 