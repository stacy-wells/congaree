require "csv"

namespace :import_visitor_counts do
  desc "Import visitor counts from a CSV type"
  task :from_csv_two,[:file_name] => [:environment] do |t, args|
    CSV.foreach(args[:file_name], headers: true) do |row|
      headers = row.headers
      park = Park.find_by(name: row["Park"])

      AnnualVisitorTotal.create!(
        park_id: park.id,
        year: Date.new(row["Year"].to_i),
        visitors: row["Visits"].to_f
      )
    end
  end
end
