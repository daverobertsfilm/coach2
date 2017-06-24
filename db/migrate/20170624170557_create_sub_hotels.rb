class CreateSubHotels < ActiveRecord::Migration
  def change
    create_table :sub_hotels do |t|
      t.string :subhotel_id
      t.references :hotel, index: true
      t.references :coach_tour, index: true

      t.timestamps
    end
  end
end
