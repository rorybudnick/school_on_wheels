FactoryGirl.define do
  factory :admin_tutor do
    first_name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }
    email { Faker::Internet.email } 
    password "rory"
    password_confirmation "rory"
    interviewed false
    grades ["K", "1"]
    matched false
    dv false
    admin true
  end
end