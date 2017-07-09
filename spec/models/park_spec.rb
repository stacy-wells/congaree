require 'rails_helper'

RSpec.describe Park, type: :model do
  it { should have_many(:annual_visitor_totals)}
  it { should validate_presence_of(:name) }
end
