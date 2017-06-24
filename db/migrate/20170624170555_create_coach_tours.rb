class CreateCoachTours < ActiveRecord::Migration
  def change
    create_table :coach_tours do |t|
      t.string :coachtour_id

      t.timestamps
    end
  end
end
