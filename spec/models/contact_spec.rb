require 'rails_helper'

RSpec.describe Contact, type: :model do
  it { should have_many(:phones).dependent(:destroy) }
  it { should have_many(:emails).dependent(:destroy) }
  it { should have_many(:addresses).dependent(:destroy) }

  it { should accept_nested_attributes_for(:phones).allow_destroy(true) }
  it { should accept_nested_attributes_for(:emails).allow_destroy(true) }
  it { should accept_nested_attributes_for(:addresses).allow_destroy(true) }
end
