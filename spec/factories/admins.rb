FactoryGirl.define do
  factory :admin do
    name { Faker::Name.name }
    email { Faker::Internet.email }
    password "asd123"
    password_confirmation "asd123"
  end
end