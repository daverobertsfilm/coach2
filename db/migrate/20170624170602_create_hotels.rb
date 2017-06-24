class CreateHotels < ActiveRecord::Migration
  def change
    create_table :hotels do |t|
      t.string :hotel_id
      t.references :coach_tour, index: true

      t.timestamps
    end
  end
end
