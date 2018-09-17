FactoryBot.define do
  factory :email do
    username { Faker::Internet.email }
    email_type { Email.email_types[Email.email_types.keys.sample.to_sym] }
    association :contact
  end
end
