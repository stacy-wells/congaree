require 'httparty'
require 'yaml'

class NpsApiRequest
  BASE_URL = "#{ENV['NPS_API_URL']}?api_key=#{ENV['NPS_API_KEY']}"

  def self.get_all_park_data
    url = "#{BASE_URL}#{format_park_codes}&limit=70"
    response = HTTParty.get(url)
    response['data']
  end

  def self.load_park_codes
    codes = YAML.load_file('config/data/park_codes.yml')['park_codes']
    codes.join(",")
  end

  def self.format_park_codes
    park_codes = load_park_codes
    "&parkCode=#{park_codes}"
  end
end
