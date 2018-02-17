require 'nps_api_request'

namespace :fetch_nps_api_data do
  desc "Fetches NPS data from the API and saves it to the Parks table"

  task :get_and_save_all => [:environment] do
    data = NpsApiRequest.get_all_park_data

    data.each do |park|
      Park.create!(
        name: park['name'],
        park_code: park['park_code'],
        description: park['description'],
        lat_long: park['latLong'],
        states: park['states'],
        weather_info: park['weatherInfo'],
        directions_info: park['directionsInfo']
      )
    end
  end
end
