FactoryGirl.define do
  factory :user, class: User do
    email 'email@email.com'
    password '123456'
    id 1
  end
end
