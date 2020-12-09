FactoryBot.define do
  factory :review do
    result        {Faker::Lorem.sentence}
    level_id      {2}
    success       {Faker::Lorem.sentence}
    failure       {Faker::Lorem.sentence}
    improve       {Faker::Lorem.sentence}
    
    association :user
    association :prep
  end
end
