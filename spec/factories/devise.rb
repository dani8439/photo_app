FactoryBot.define do 
    factory :user do 
        email { "me@mail.com" }
        user_name { "SomeGuy" }
        password { "123ABC" }
        id { 4 }
    end 
end 