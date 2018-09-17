FactoryBot.define do
  factory :contact do
    title { Contact.titles[:mr] }
    name { Faker::Name.first_name }
    surname { Faker::Name.last_name }
    nickname { Faker::Name.unique.name }
    website { Faker::Internet.url('test.com') }
    relationship { Contact.relationships[Contact.relationships.keys.sample.to_sym] }
    other { "Family Friend" }
  end
end
