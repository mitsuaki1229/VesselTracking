class CreateVessels < ActiveRecord::Migration[7.0]
  def change
    create_table :vessels do |t|
      t.integer :reference_number
      t.string :name
      t.string :naccs_code
      t.string :owner_id
      t.string :latest_update_user
      t.text :remarks

      t.timestamps
    end
  end
end
