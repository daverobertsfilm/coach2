class CreateVehicles < ActiveRecord::Migration
  def change
    create_table :vehicles do |t|
      t.string :vehicle_id
      t.references :coach_tour, index: true

      t.timestamps
    end
  end
end
