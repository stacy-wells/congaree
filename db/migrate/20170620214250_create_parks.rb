class CreateParks < ActiveRecord::Migration[5.0]
  def change
    create_table :parks do |t|
      t.string :name, :null => false
      t.text :description
      t.string :state
      t.date :est
      t.float :acres

      t.timestamps
    end
  end
end
