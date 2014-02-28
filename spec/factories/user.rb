FactoryGirl.define do 
  factory :user do
    email { Faker::Internet.email }
    username { Faker::Name.first_name }
    password "hello"
  end
end