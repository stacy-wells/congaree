class ChartsController < ApplicationController
  def total_visits
    year_range = 1985..2016
    totals_by_year = {}

    year_range.each do |year|
      yearly_totals_array = AnnualVisitorTotal.where(year: Date.new(year)).pluck(:visitors)
      totals_by_year[year] = yearly_totals_array.reduce(:+)
    end

    render json: totals_by_year.to_json
  end

  def park_annual_visitors
    park = Park.find(params[:id])
    park_data = park.annual_visitor_totals.pluck(:year, :visitors)

    render json: park_data.to_json
  end

  def acerage_by_park
    parks_with_acreage = Park.all.pluck(:name, :acres)

    render json: parks_with_acreage
  end

  def visitors_by_park
    total_visitors_by_park = {}

    Park.all.each do |park|
      visitors = park.annual_visitor_totals.pluck(:visitors).reduce(:+)
      total_visitors_by_park[park.name] = visitors
    end

    render json: total_visitors_by_park.sort.to_json
  end

  def parks_per_state
    parks_per_state = {}

    Park.all.each do |park|
      if park.state.include?('&')
        park.state.split(' & ').each do |state|
          if parks_per_state[state]
            parks_per_state[state] += 1
          else
            parks_per_state[state] = 1
          end
        end
      elsif parks_per_state[park.state]
        parks_per_state[park.state] += 1
      else
        parks_per_state[park.state] = 1
      end
    end

    render json: parks_per_state.to_json
  end
end
