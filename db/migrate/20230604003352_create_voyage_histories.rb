class CreateVoyageHistories < ActiveRecord::Migration[7.0]
  def change
    create_table :voyage_histories do |t|
      t.string :departure_port
      t.datetime :departure_time
      t.string :entry_port
      t.datetime :entering_port_time
      t.string :naccs_code
      t.string :owner_id

      t.timestamps
    end
  end
end
