require 'rails_helper'

RSpec.describe AnnualVisitorTotal, type: :model do
  it { should validate_presence_of(:year) }
  it { should belong_to(:park) }
end
