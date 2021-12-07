class ChangeDateTypesInBookings < ActiveRecord::Migration[6.0]
  def change
    change_table :bookings do |t|
      t.change :start_date, :string
      t.change :end_date, :string
    end
  end
end
