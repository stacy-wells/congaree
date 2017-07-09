class AnnualVisitorTotal < ActiveRecord::Base
  validates :year, presence: true
  belongs_to :park
end
