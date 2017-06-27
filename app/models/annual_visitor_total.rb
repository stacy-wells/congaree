class AnnualVisitorTotal < ActiveRecord::Base
  validates :year, presence: true
end
