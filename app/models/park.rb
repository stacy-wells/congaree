class Park < ActiveRecord::Base
  validates :name, presence: true
  has_many :annual_visitor_totals
end
