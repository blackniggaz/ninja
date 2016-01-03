FactoryGirl.define do
  factory :user do
   # username { Faker::Name.name }
    sequence(:username) { |n| "username#{n}" }
    email { Faker::Internet.email }
    password "password"
    description {Faker::Name.name}

   # role "user"
   # factory :admin do
    #  role "admin"
   # end
  end
end