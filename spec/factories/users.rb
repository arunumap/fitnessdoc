FactoryGirl.define do
  factory :user do
    name { Faker::Name.name }
    email { Faker::Internet.email }
   	provider "fitbit"
   	uid "247UI"
   	oauth_token "eoaijfoaeifjaoijwaoifjawoiejf"
   	oauth_secret "oiawejfaoiejfoawiejfoaiwjfoj"
   	admin_id nil
  end
end