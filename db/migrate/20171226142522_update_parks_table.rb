class UpdateParksTable < ActiveRecord::Migration[5.0]
  def change
    rename_column :parks, :weather, :weather_info
    rename_column :parks, :state, :states
    add_column :parks, :directions_info, :text
    add_column :parks, :lat_long, :string
    add_column :parks, :park_code, :string
  end
end
