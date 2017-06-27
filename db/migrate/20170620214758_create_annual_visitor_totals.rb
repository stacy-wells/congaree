class CreateAnnualVisitorTotals < ActiveRecord::Migration[5.0]
  def change
    create_table :annual_visitor_totals do |t|
      t.belongs_to :park
      t.date :year, :null => false
      t.integer :visitors

      t.timestamps
    end
  end
end
