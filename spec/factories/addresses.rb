FactoryBot.define do
  factory :address do
    number { Faker::Address.building_number }
    street { Faker::Address.street_name }
    suburb { Faker::Address.community }
    city { Faker::Address.city }
    province { Faker::Address.state }
    country { Faker::Address.country }
    postal_code { Faker::Address.postcode }
    address_type { Address.address_types[Address.address_types.keys.sample.to_sym] }
    association :contact
  end
end
