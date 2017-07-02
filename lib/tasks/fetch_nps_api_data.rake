require 'httparty'

namespace :fetch_nps_api_data do
  desc "Fetches NPS data from the API and saves it to the Parks table"
  task :get_descriptions => [:environment] do |t, args|


    Park.all.each do |park|
      response = HTTParty.get("https://developer.nps.gov/api/v0/alerts",
                              headers: {"Authorization" => ENV["NPS_API_KEY"]})
    end
  end
end
