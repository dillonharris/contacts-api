FactoryBot.define do
  factory :phone do
    number { Faker::Number.number }
    phone_type { Phone.phone_types[Phone.phone_types.keys.sample.to_sym] }
    association :contact
  end
end
