class Contact < ApplicationRecord
  has_many :phones, dependent: :destroy
  has_many :emails, dependent: :destroy
  has_many :addresses, dependent: :destroy

  accepts_nested_attributes_for :phones, allow_destroy: true
  accepts_nested_attributes_for :emails, allow_destroy: true
  accepts_nested_attributes_for :addresses, allow_destroy: true

  enum title: { mr: 0, mrs: 1, ms: 2 }
  enum relationship: { family: 0, friend: 1, colleague: 2, other: 3 }
end
