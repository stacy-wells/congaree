class AddWeatherInfoToParks < ActiveRecord::Migration[5.0]
  def change
    add_column :parks, :weather, :text
  end
end
