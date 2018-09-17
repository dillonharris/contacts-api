class Address < ApplicationRecord
  belongs_to :contact

  enum address_type: { home: 0, business: 1 }
end
