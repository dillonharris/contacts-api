class Phone < ApplicationRecord
  belongs_to :contact

  enum phone_type: { personal: 0, home: 1, business: 2 }
end
