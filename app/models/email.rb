class Email < ApplicationRecord
  belongs_to :contact

  enum email_type: { personal: 0, work: 1 }
end
