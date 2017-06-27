class ChartsController < ApplicationController
  def total_visits
    render json: Park.group_by_year(:est, format: "%Y").count
  end
end
