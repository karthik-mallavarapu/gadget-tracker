# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user, class: User do |user|
    user.email "user@gadgettracker.com"
    user.password "password"
    user.password_confirmation "password"
  end
end
