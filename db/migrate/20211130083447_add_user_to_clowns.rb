class AddUserToClowns < ActiveRecord::Migration[6.0]
  def change
    add_reference :clowns, :user, null: false, foreign_key: true
  end
end
