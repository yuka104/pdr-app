FactoryBot.define do
  factory :prep do
    purpose {Faker::Lorem.sentence}
    reason  {Faker::Lorem.sentence}
    task    {Faker::Lorem.sentence}
    memo    {Faker::Lorem.sentence}

    association :user
    
  end
end
