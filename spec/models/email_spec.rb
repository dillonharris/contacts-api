require 'rails_helper'

RSpec.describe Email, type: :model do
  it { should belong_to(:contact) }
end
