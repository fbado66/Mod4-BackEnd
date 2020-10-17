class CreateReservations < ActiveRecord::Migration[6.0]
  def change
    create_table :reservations do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :listing, null: false, foreign_key: true
      t.date :check_in_date
      t.date :check_out_date
      t.integer :guest_count
      t.string :message_to_host

      t.timestamps
    end
  end
end
