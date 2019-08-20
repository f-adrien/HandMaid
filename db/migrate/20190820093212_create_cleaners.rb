class CreateCleaners < ActiveRecord::Migration[5.2]
  def change
    create_table :cleaners do |t|
      t.string :first_name
      t.string :last_name
      t.boolean :availability
      t.string :location
      t.integer :radius
      t.string :phone_number

      t.timestamps
    end
  end
end
