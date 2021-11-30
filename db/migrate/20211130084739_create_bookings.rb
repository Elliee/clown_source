class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.integer :start_date
      t.integer :end_date
      t.string :status
      t.references :users, null: false, foreign_key: true
      t.references :clowns, null: false, foreign_key: true

      t.timestamps
    end
  end
end
