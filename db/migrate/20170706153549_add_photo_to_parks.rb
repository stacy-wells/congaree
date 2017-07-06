class AddPhotoToParks < ActiveRecord::Migration[5.0]
  def change
    add_column :parks, :photo, :boolean
  end
end
