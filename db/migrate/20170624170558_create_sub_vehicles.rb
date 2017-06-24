class CreateSubVehicles < ActiveRecord::Migration
  def change
    create_table :sub_vehicles do |t|
      t.string :subvehicle_id
      t.references :vehicle, index: true
      t.references :coach_tour, index: true

      t.timestamps
    end
  end
end
