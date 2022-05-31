class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.date :start
      t.date :end

      t.timestamps
    end
  end
end
