FactoryBot.define do 
    factory :post do 
        description { "Puppy" }
        image { Rack::Test::UploadedFile.new(Rails.root + 'spec/files/images/puppy.jpg', 'image/jpg') }
    end 
end 