class ParksController < ApplicationController
  def index
    @parks = Park.all
  end

  def show
    @park = Park.find(params[:id])
    @visitor_totals = AnnualVisitorTotal.where(park_id: @park.id)
  end
end
