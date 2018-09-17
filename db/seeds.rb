require 'faker'

if Rails.env.development?
  def type_generator_for(enum_types)
    enum_types[enum_types.keys.sample.to_sym]
  end

  phone_params = {
    "0" => {
      number: Faker::Number.number(10),
      phone_type: type_generator_for(Phone.phone_types)
    }
  }

  email_params = {
    "0" => {
      username: Faker::Internet.email,
      email_type: type_generator_for(Email.email_types)
    }
  }

  address_params = {
    "0" => {
      number: Faker::Address.building_number,
      street: Faker::Address.street_name,
      suburb: Faker::Address.community,
      city: Faker::Address.city,
      province: Faker::Address.state,
      country: Faker::Address.country,
      postal_code: Faker::Address.postcode,
      address_type: type_generator_for(Address.address_types)
    }
  }

  40.times do
    contact_attributes = {
      title: type_generator_for(Contact.titles),
      name: Faker::Name.first_name,
      surname: Faker::Name.last_name,
      nickname: Faker::Name.unique.name,
      website: Faker::Internet.url('example.com'),
      relationship: type_generator_for(Contact.relationships),
      phones_attributes: phone_params,
      emails_attributes: email_params,
      addresses_attributes: address_params
    }

    Contact.create(contact_attributes)
  end
end
