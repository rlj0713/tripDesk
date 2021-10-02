class CreateReservation < ActiveRecord::Migration[6.1]
  def change
    create_table :reservations do |t|
      t.belongs_to :guide
      t.belongs_to :customer
      t.datetime :reservation_date
      
      t.timestamps
    end
  end
end
