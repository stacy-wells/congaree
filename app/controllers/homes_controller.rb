class HomesController < ApplicationController
  def home
    @acres = Park.all.pluck(:acres).reduce(:+).round(2)
    @visitors = AnnualVisitorTotal.where(year: Date.new(2016)).pluck(:visitors).reduce(:+)
  end
end
