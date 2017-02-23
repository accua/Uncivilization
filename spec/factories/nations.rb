FactoryGirl.define do
  factory :nation, class: Nation do
    nation_name 'test'
    economy_type 'Capitalism'
    basic_geography 'Island'
    religion 'Pastafarian'
    stability 56
    user_id 1
  end
end
